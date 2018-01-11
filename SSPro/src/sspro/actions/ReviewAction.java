package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class ReviewAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("ReviewAction()");
		String action = request.getParameter("action");
		
		System.out.println("action : "+action);
		
		ActionForward forword = null;
		
		if(action.equals("login")) {
			
		}
		
		else {}
		
		return forword;
	}

}
