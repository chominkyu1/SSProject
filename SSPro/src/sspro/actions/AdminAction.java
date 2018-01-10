package sspro.actions;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberSpaceDAO;
import sspro.dao.SearchDAO;
import sspro.vo.MemberArtistVO;
import sspro.vo.MemberSpaceVO;

public class AdminAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		
		ActionForward forword = null;
		if(action.equals("login")) {
			MemberArtistVO memberartistvo = new MemberArtistVO();
			MemberSpaceVO memberspacevo = new MemberSpaceVO();
			MemberSpaceDAO memberspacedao = new MemberSpaceDAO();
			String member_email = request.getParameter("email");
			String member_pass = request.getParameter("password");
			
			 Map<String, String> member_Info;
		      
		      member_Info = new HashMap<>();
		      member_Info.put("member_email", member_email);
		      member_Info.put("member_pass", member_pass);
			
		if(memberspacedao.smLogin(member_Info)) {
			System.out.println("로그인");
			forword = mapping.findForward("loginas");
			
		}else {
			System.out.println("실패");
			forword = mapping.findForward("fail");			
		}
		}else if(action.equals("Search")) {
			String searchs = request.getParameter("search");
			System.out.println(searchs);
			SearchDAO searchdao = new SearchDAO();
			searchdao.hashTagAll(searchs);
			
			
		
			forword = mapping.findForward("Search");
			
		}
		
		
		return forword;
	}
}
