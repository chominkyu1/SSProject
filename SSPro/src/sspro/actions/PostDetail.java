package sspro.actions;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberSpaceDAO;
import sspro.dao.ReviewDAO;
import sspro.dao.SpacePostDAO;
import sspro.vo.MemberSpaceVO;
import sspro.vo.SpacePostVO;
import sspro.vo.SpaceReviewVO;

public class PostDetail extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
			String action = request.getParameter("action");
			ActionForward forward=null;
			System.out.println("action>>"+action);
			if(action.equals("spost")) {
			String spacepost_id = request.getParameter("spacepost_id");

			SpacePostDAO spacepostdao = new SpacePostDAO();
			MemberSpaceDAO memberspacedao =new MemberSpaceDAO();
			ReviewDAO reviewdao = new ReviewDAO();
			String smember_id = request.getParameter("smember_id");
			//System.out.println(spacepost_id);
			//System.out.println(smember_id);
			List<SpaceReviewVO> spaceReviewList = reviewdao.spaceReviewSelect(spacepost_id);
			SpacePostVO spacepostvo = spacepostdao.select(spacepost_id);
			MemberSpaceVO memberspacevo = memberspacedao.select(smember_id);
			//System.out.println(spacepostvo);
			request.setAttribute("spacepostvo", spacepostvo);
			//System.out.println(memberspacevo);
			request.setAttribute("memberspacevo", memberspacevo);
			request.setAttribute("spaceReviewList", spaceReviewList);
			forward =mapping.findForward("spost");
			}
			
		
		return forward;
	}
}
