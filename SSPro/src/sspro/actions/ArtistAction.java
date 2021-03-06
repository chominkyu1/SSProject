package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberArtistDAO;
import sspro.vo.MemberArtistVO;

public class ArtistAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String action = request.getParameter("action");
		ActionForward forward=null;
		System.out.println("action>>"+action);
		if(action.equals("join")) {
		String amember_name = request.getParameter("user_name");
		String amember_email = request.getParameter("user_email");
		String amember_pass = request.getParameter("password");
		String amember_major = request.getParameter("major");
		String amember_phone = request.getParameter("phone");
		System.out.println(amember_phone);
		MemberArtistDAO memberartistdao = new MemberArtistDAO();
		MemberArtistVO memberartistvo = new MemberArtistVO(null, amember_name, 
				amember_email, amember_pass, amember_major, 
				amember_phone, 0, 0);
		System.out.println(memberartistvo);
	
		if(memberartistdao.insert(memberartistvo)) {
			forward = mapping.findForward("join");	
		}
		}
		
		return forward;
	}
}
