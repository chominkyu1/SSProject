package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.DAO.MemberSpaceDAO;
import sspro.VO.MemberArtistVO;
import sspro.VO.MemberSpaceVO;

public class AdminAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		String smember_email = request.getParameter("email");
		String password = request.getParameter("password");
		
		MemberArtistVO memberartistvo = new MemberArtistVO();
		MemberSpaceVO memberspacevo = new MemberSpaceVO();
		ActionForward forword = null;
		MemberSpaceDAO memberspacedao = new MemberSpaceDAO();
		if(action.equals("login")) {
		if(memberspacedao.smLogin(smember_email)) {
			System.out.println("로그인");
			forword = mapping.findForward("loginas");
			
		}else {
			System.out.println("실패");
			forword = mapping.findForward("fail");			
		}
		}
		
		
		return forword;
	}
}
