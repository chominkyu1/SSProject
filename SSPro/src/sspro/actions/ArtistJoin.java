package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class ArtistJoin extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ActionForward forward=null;
		
		String amem_id = request.getParameter("AMEMBER_ID");
		String amem_name = request.getParameter("AMEMBER_NAME");
		String amem_email = request.getParameter("AMEMBER_EMAIL");
		String amem_pass = request.getParameter("AMEMBER_PASS");
		String amem_major = request.getParameter("AMEMBER_MAJOR");
		String amem_phone = request.getParameter("AMEMBER_PHONE");
		String amem_grade = request.getParameter("AMEMBER_GRADE");
		String amem_score = request.getParameter("AMEMBER_SCORE");
		
		
		return forward;
	}
}
