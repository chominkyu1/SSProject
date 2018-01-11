package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberSpaceDAO;
import sspro.vo.MemberSpaceVO;

public class SpaceAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("excutr");
		String action = request.getParameter("action");
		System.out.println("action=" + action);

		ActionForward forword = null;

		if (action.equals("join")) {
			String smember_name = request.getParameter("user_name");
			String smember_email = request.getParameter("user_email");
			String smember_pass = request.getParameter("user_pass");
			String smember_phone = request.getParameter("phone");
			System.out.println(smember_name + "," + smember_email + "," + smember_pass + "," + smember_phone);

			MemberSpaceVO memberspacevo = new MemberSpaceVO(null, smember_name, smember_email, smember_pass,
					smember_phone);
			MemberSpaceDAO memberspacedao = new MemberSpaceDAO();
			if (memberspacedao.insert(memberspacevo)) {
				forword = mapping.findForward("join");
				System.out.println("가입완료");
			}
		}
		
		else {}

		return forword;
	}
}
