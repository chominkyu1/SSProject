package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberSpaceDAO;
import sspro.dao.SpacePostDAO;
import sspro.vo.MemberSpaceVO;
import sspro.vo.SpacePostVO;

public class PostDetail extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
			String action = request.getParameter("action");
			ActionForward forward=null;
			System.out.println("action>>"+action);
			if(action.equals("spost")) {
			String smember_id = request.getParameter("smember_id");

			SpacePostDAO spacepostdao = new SpacePostDAO();
			MemberSpaceDAO memberspacedao =new MemberSpaceDAO();
			
			//String smember_id = request.getParameter("Smember_id");
			System.out.println(smember_id);

			SpacePostVO spacepostvo = spacepostdao.select(smember_id);
			MemberSpaceVO memberspacevo = memberspacedao.select(smember_id);
			//System.out.println(spacepostvo);
			request.setAttribute("spacepostvo", spacepostvo);
			//System.out.println(memberspacevo);
			request.setAttribute("memberspacevo", memberspacevo);
			forward =mapping.findForward("spost");
			}
			
		
		return forward;
	}
}
