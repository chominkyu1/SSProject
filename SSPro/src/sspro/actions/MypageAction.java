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
			request.setAttribute("memberspacevo", memberspacevo);
			
			forword = mapping.findForward("spmain");
		}else if (action.equals("mypageart")) {
			
			memberartistvo = memberartistdao.select(request.getParameter("email"));
			request.setAttribute("memberartistvo",memberartistvo);
			
			forword = mapping.findForward("artmain");
		}else if (action.equals("updatesp")) {
			String smember_id = request.getParameter("smember_id");
			String smember_pass = request.getParameter("smember_email");
			String smember_phone = request.getParameter("smember_phone");
			
			memberspacevo.setSmember_pass(smember_pass);
			memberspacevo.setSmember_phone(smember_phone);
			
			Map<String, String> map = new HashMap<>();
			map.put("smember_id", smember_id);
			map.put("smember_pass", smember_pass);
			map.put("smember_phone", smember_phone);
			
			if(memberspacedao.update(map)) {
				forword = mapping.findForward("spsuccess");	
			}else {
				forword = mapping.findForward("spfail");	
			}
		}else if (action.equals("updateart")) {
			memberartistvo.setAmember_id(request.getParameter("amember_id"));
			memberartistvo.setAmember_pass(request.getParameter("amember_pass"));
			memberartistvo.setAmember_phone(request.getParameter("amember_phone"));
			memberartistvo.setAmember_major(request.getParameter("amember_major"));
            
			if(memberartistdao.update(memberartistvo)) {
            	forword = mapping.findForward("artsuccess");	
			}else {
				forword = mapping.findForward("artfail");	
			}
		}
		
		
		return forword;
	}
}
