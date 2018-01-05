package actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class SpaceJoin extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String smem_id = request.getParameter("SMEMBER_ID");
		String smem_name = request.getParameter("SMEMBER_NAME");
		String smem_email = request.getParameter("SMEMBER_EMAIL");
		String smem_pass = request.getParameter("SMEMBER_PASS");
		String smem_phone = request.getParameter("SMEMBER_PHONE");
		
		return super.execute(mapping, form, request, response);
	}
}
