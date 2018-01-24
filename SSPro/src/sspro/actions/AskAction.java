package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import sspro.dao.AskDAO;
import sspro.vo.AskVO;

public class AskAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			
			String comment = request.getParameter("comment");	
			String img = request.getParameter("img");
			
			System.out.println(request.getAttribute("comment"));
			System.out.println("comment>>"+comment);
			System.out.println("img>>"+img);
			
			
			/*
			AskDAO askdao =new AskDAO();
			AskVO askvo = new AskVO();
			
			askdao.insert(askvo);*/
			
		return mapping.findForward("insert");
	}
}
