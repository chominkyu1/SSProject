package sspro.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.SearchDAO;
import sspro.vo.SpacePostVO;

public class SearchAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		String action = request.getParameter("action");
		
		ActionForward forword = null;
		
		if(action.equals("searchhash")) {
			
			String hash = request.getParameter("hash");
			//Hash태그 검색
			System.out.println("hashTag : " + hash);
			
			SearchDAO searchdao = new SearchDAO();
			ArrayList<SpacePostVO> spacelist = (ArrayList<SpacePostVO>) searchdao.hashTagAll(hash);
			
			request.setAttribute("spacelist", spacelist);
			
			forword = mapping.findForward("hashsuccess");
		}
		
		else {
		}
		
		return forword;
	}

}
