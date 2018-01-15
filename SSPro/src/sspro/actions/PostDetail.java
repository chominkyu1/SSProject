package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.SpacePostDAO;
import sspro.vo.SpacePostVO;

public class PostDetail extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
			String action = request.getParameter("action");
			ActionForward forward=null;
			System.out.println("action>>"+action);

			SpacePostDAO spacepostdao = new SpacePostDAO();
			//String smember_id = request.getParameter("Smember_id");
			String smember_id = request.getParameter("smember_id");
			System.out.println(smember_id);
			SpacePostVO spacepostvo =spacepostdao.select(smember_id);
			System.out.println(spacepostvo);
			request.setAttribute("spacepostvo", spacepostvo);
			forward =mapping.findForward("spost");
			
			if(action.equals("spost")) {
			}
			
		
		return forward;
	}
}
