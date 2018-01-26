package sspro.actions;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberArtistDAO;
import sspro.vo.MemberArtistVO;

public class MypageAction2 extends Action{//아티스트

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		ActionForward forword = null;
        System.out.println("MypageAction2액션>>>"+ action);
		if (action.equals("mypageart") || action.equals(null)) {
			MemberArtistDAO memberartistdao = new MemberArtistDAO();
			MemberArtistVO memberartistvo = new MemberArtistVO();
			memberartistvo = memberartistdao.select(request.getParameter("email"));
			request.setAttribute("memberartistvo",memberartistvo);
			
			forword = mapping.findForward("artmain");
		}else if (action.equals("updateart")) {
			MemberArtistDAO memberartistdao = new MemberArtistDAO();
			MemberArtistVO memberartistvo = new MemberArtistVO();
			
			String amember_id=request.getParameter("amember_id");	
			String amember_pass=request.getParameter("amember_pass");
			String amember_phone=request.getParameter("amember_phone");
			String amember_major=request.getParameter("amember_major");
			
			memberartistvo.setAmember_id(amember_id);
			memberartistvo.setAmember_pass(amember_pass);
			memberartistvo.setAmember_phone(amember_phone);
			memberartistvo.setAmember_major(amember_major);
            
			System.out.println("memberartistvo>>"+memberartistvo);
			
			if(memberartistdao.update(memberartistvo)) {
				request.getSession().setAttribute("artistuser", "success");
            	forword = mapping.findForward("artsuccess");	
			}else {
				forword = mapping.findForward("artfail");	
			}
		}
		
		
		return forword;
	}
}
