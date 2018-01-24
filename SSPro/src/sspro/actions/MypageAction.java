package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberArtistDAO;
import sspro.dao.MemberSpaceDAO;
import sspro.vo.MemberArtistVO;
import sspro.vo.MemberSpaceVO;

public class MypageAction extends Action{

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		ActionForward forword = null;
		MemberSpaceDAO memberspacedao = new MemberSpaceDAO();
		MemberSpaceVO memberspacevo = new MemberSpaceVO();
		MemberArtistDAO memberartistdao = new MemberArtistDAO();
		MemberArtistVO memberartistvo = new MemberArtistVO();
		
		if(action.equals("mypagesp")) {
			
			String smember_email = request.getParameter("email");
			String smember_id = memberspacedao.idSelect(smember_email);
			memberspacevo = memberspacedao.select(smember_id);
			System.out.println(memberspacevo.toString());
			request.setAttribute("memberspacevo", memberspacevo);
			
			forword = mapping.findForward("spmain");
		}else if (action.equals("mypageart")) {
			
			String amember_email = request.getParameter("email");
			
			
			forword = mapping.findForward("artmain");
		}else if (action.equals("updatesp")) {
			String smember_pass = request.getParameter("smember_email");
			String smember_phone = request.getParameter("smember_phone");
			
			memberspacevo.setSmember_pass(smember_pass);
			memberspacevo.setSmember_phone(smember_phone);
			
		}else if (action.equals("updateart")) {
			
		}
		
		
		return forword;
	}
}
