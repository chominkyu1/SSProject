package sspro.actions;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberArtistDAO;
import sspro.dao.MemberSpaceDAO;
import sspro.dao.ReviewDAO;
import sspro.dao.SpacePostDAO;
import sspro.vo.MainReviewVO;
import sspro.vo.SpacePostVO;
import sspro.vo.SpaceReviewVO;

public class LoginAction extends Action{
	//HttpSession session;
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("LoginAction()");
		String action = request.getParameter("action");
		System.out.println("action : "+action);
		
		ActionForward forword = null;
		
		if(action.equals("login")) {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			System.out.println("email: "+email);
			System.out.println("password: "+password);
			
			HashMap<String, String> member_Info = new HashMap<>();
			   
			member_Info.put("member_email", email);
			member_Info.put("member_pass", password);
			
			MemberSpaceDAO memberspacedao = new MemberSpaceDAO();
			MemberArtistDAO memberartistdao = new MemberArtistDAO();
			SpacePostDAO spacedao = new SpacePostDAO();
			ReviewDAO reviewdao = new ReviewDAO();
			
			if(!memberartistdao.amLogin(member_Info)) {		
				if(memberspacedao.smLogin(member_Info)) {
					//�α��� ���� �� session ��� (ID��)
					//session.setAttribute("member", memberspacedao.smId_select(email));
					request.setAttribute("member", memberspacedao.smId_select(email));
					
					ArrayList<SpacePostVO> spacepostlist = spacedao.selectAll();
					request.setAttribute("spacepostlist", spacepostlist); //�����Խñ� MainView setting
					
					ArrayList<MainReviewVO> spacereviewlist = (ArrayList<MainReviewVO>) reviewdao.spaceReviewSelectAll();
							
					request.setAttribute("spacereviewlist", spacereviewlist); //�����Խñ� ���� MainView Setting
					
					forword = mapping.findForward("loginsuccess");
				}
				
				else {
					forword = mapping.findForward("loginfail");
				}
			}
			
			else {
				//�α��� ���� �� session ��� (ID��)
				//session.setAttribute("member", memberartistdao.amId_select(email));
				ArrayList<SpacePostVO> spacepostlist = spacedao.selectAll();
				request.setAttribute("spacepostlist", spacepostlist);
				forword = mapping.findForward("loginsuccess");
			}
			
			
		}
		
		else {}
		
		return forword;
	}

}
