package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.VO.MemberSpaceVO;

public class SpaceJoin extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("excutr");
		String action = request.getParameter("action");
		System.out.println("action="+action);
		
		ActionForward forword = null;
		
		if(action.equals("spjoin")) {
			forword = mapping.findForward("spjoin");
		}else if(action.equals("join")) {
		String smember_name = request.getParameter("name");
		String smember_email = request.getParameter("email");
		String smember_pass = request.getParameter("password");
		String smember_phone = request.getParameter("phone");
		System.out.println(smember_name+","+smember_email+","+smember_pass+","+smember_phone);
		
		MemberSpaceVO memberspacevo = new MemberSpaceVO(null,smember_name,smember_email,smember_pass,smember_phone);		
			forword = mapping.findForward("join");
		}
		
		
		return forword;
}
}
