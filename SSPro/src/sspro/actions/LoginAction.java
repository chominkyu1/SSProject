package sspro.actions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;
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
		
		if(action.equals("login") || action.equals("upload2")) {
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
			
			ServletRequest session =null; // ����~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			
			if(!memberartistdao.amLogin(member_Info) || request.getSession().getAttribute("artistuser")==null || request.getParameter("home")!=null) { // ��Ƽ��Ʈ����� �ƴ϶��
				if(memberspacedao.smLogin(member_Info) || request.getSession().getAttribute("spaceuser")!=null) { // �����Խ��ڶ��
					//�α��� ���� �� session ��� (ID��)
					request.setAttribute("spaceemail", email);
					request.setAttribute("member", memberspacedao.smId_select(email));
					request.getSession().setAttribute("member", memberspacedao.smId_select(email));
                      
					request.getSession().setAttribute("spaceuser", "success");
					
					
					ArrayList<SpacePostVO> spacepostlist = spacedao.selectAll();
					for(int i=0; i<spacepostlist.size(); i++) {
						if(spacepostlist.get(i).getSpacepost_memo().length()>75) {
							spacepostlist.get(i).setSpacepost_memo(spacepostlist.get(i).getSpacepost_memo().substring(0, 75)+"...");
						}
						
					}
					request.setAttribute("spacepostlist", spacepostlist); //�����Խñ� MainView setting
					
					List<MainReviewVO> spacereviewlist = (List<MainReviewVO>) reviewdao.spaceReviewSelectAll();
					for(int i=0; i<spacereviewlist.size(); i++) {
						if(spacereviewlist.get(i).getRspace_memo().length()>40) {
							spacereviewlist.get(i).setRspace_memo(spacereviewlist.get(i).getRspace_memo().substring(0, 40)+"...");
						}
						 
					}		
					
					
					request.setAttribute("spacereviewlist", spacereviewlist); //�����Խñ� ���� MainView Setting
					
					forword = mapping.findForward("loginsuccess");
				}
				
				else {
					forword = mapping.findForward("loginfail");
				}
			}
			
			else {
				//�α��� ���� �� session ��� (ID��)
				request.getSession().setAttribute("member", memberartistdao.select(email));
				ArrayList<SpacePostVO> spacepostlist = spacedao.selectAll();
				request.setAttribute("artistemail", email);
				request.getSession().setAttribute("artistuser", "success");
				request.setAttribute("spacepostlist", spacepostlist);
				forword = mapping.findForward("loginsuccess");
			}
			
			
		}
		
		else {}
		
		return forword;
	}

}
