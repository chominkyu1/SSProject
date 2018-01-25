package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import sspro.dao.AskDAO;
import sspro.vo.AskVO;

public class AskAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			System.out.println(">>>> execute");
			//String action = request.getParameter("action");
			ActionForward forward=null;
			//System.out.println("�̸�:"+request.getParameter("amember_name"));
			String saveDir = request.getServletContext().getRealPath("/img/imgask");
			int maxSize = 5*1025*1024;
			System.out.println(saveDir);
			
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "UTF-8", new DefaultFileRenamePolicy());			
			String path = "/SSPro/img/imgask";
			
			String ask_memo = multi.getParameter("comment");
			System.out.println("ask_memo>>"+ask_memo);
			String startdate= multi.getParameter("ask_startdate");
			String finishdate= multi.getParameter("ask_finishdate");
			System.out.println("������>>"+startdate);
			
			String ask_startdate = startdate.replace("-", "").substring(2);
			String ask_finishdate = finishdate.replace("-", "").substring(2);
			  
			
			   // enctype�� "multipart/form-data"�� �����ϰ� submit�� �����͵��� request��ü�� �ƴ� MultipartRequest��ü�� �ҷ��;� �Ѵ�.
	           // ���۹��� �����Ͱ� ������ ��� getFilesystemName()���� ���� �̸��� �޾ƿ� �� �ִ�.
		    String ask_image1 = path + "/" + multi.getFilesystemName("image1");// ���ε��� ������ ��ü ��θ� DB�� �����ϱ� ����
			String ask_image2 = path + "/" + multi.getFilesystemName("image2");
			String ask_image3 = path + "/" + multi.getFilesystemName("image3");
			System.out.println("ask_image1>>"+ask_image1);
			String amember_id = multi.getParameter("amember_id");
			//System.out.println("amember_id>>"+amember_id);
			String spacepost_id = multi.getParameter("spacepost_id");
			
			AskVO askvo = new AskVO(null, ask_startdate, ask_finishdate, ask_memo, ask_image1, 
					ask_image2, ask_image3, amember_id, spacepost_id, "���");
			AskDAO askdao =new AskDAO();
			if(askdao.insert(askvo)) {
				String ask_id = request.getParameter("ask_id");
				System.out.println("ask_id>>"+ask_id);
				AskVO askselect = askdao.select(ask_id);
			       
			      request.setAttribute("askvo", askselect);
				
				forward = mapping.findForward("page");
			}
			
			
			
			
			
		return forward;
	}
}
