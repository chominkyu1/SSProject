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
import sspro.vo.MemberSpaceVO;

public class MypageAction extends Action{//공간제공자

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		ActionForward forword = null;
		
	
		if(action.equals("mypagesp") || action.equals(null)) {
			MemberSpaceDAO memberspacedao = new MemberSpaceDAO();
			MemberSpaceVO memberspacevo = new MemberSpaceVO();
			String smember_email = request.getParameter("email");
			String smember_id = memberspacedao.idSelect(smember_email);
			memberspacevo = memberspacedao.select(smember_id);
			request.setAttribute("memberspacevo", memberspacevo);
			
			forword = mapping.findForward("spmain");
	
		}else if (action.equals("updatesp")) {
			MemberSpaceDAO memberspacedao = new MemberSpaceDAO();

			String smember_id = request.getParameter("smember_id");
			String smember_pass = request.getParameter("smember_pass");
			String smember_phone = request.getParameter("smember_phone");
		
			Map<String, String> map = new HashMap<>();
			map.put("smember_id", smember_id);
			map.put("smember_pass", smember_pass);
			map.put("smember_phone", smember_phone);
			
			if(memberspacedao.update(map)) {
				request.getSession().setAttribute("spaceuser", "success");
				forword = mapping.findForward("spsuccess");	
			}else {
				forword = mapping.findForward("spfail");	
			}
		
		}
		
		
		return forword;
	}
}
