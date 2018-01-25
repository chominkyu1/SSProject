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
			//System.out.println("이름:"+request.getParameter("amember_name"));
			String saveDir = request.getServletContext().getRealPath("/img/imgask");
			int maxSize = 5*1025*1024;
			System.out.println(saveDir);
			
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "UTF-8", new DefaultFileRenamePolicy());			
			String path = "/SSPro/img/imgask";
			
			String ask_memo = multi.getParameter("comment");
			System.out.println("ask_memo>>"+ask_memo);
			String startdate= multi.getParameter("ask_startdate");
			String finishdate= multi.getParameter("ask_finishdate");
			System.out.println("시작일>>"+startdate);
			
			String ask_startdate = startdate.replace("-", "").substring(2);
			String ask_finishdate = finishdate.replace("-", "").substring(2);
			  
			
			   // enctype을 "multipart/form-data"로 선언하고 submit한 데이터들은 request객체가 아닌 MultipartRequest객체로 불러와야 한다.
	           // 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
		    String ask_image1 = path + "/" + multi.getFilesystemName("image1");// 업로드한 파일의 전체 경로를 DB에 저장하기 위함
			String ask_image2 = path + "/" + multi.getFilesystemName("image2");
			String ask_image3 = path + "/" + multi.getFilesystemName("image3");
			System.out.println("ask_image1>>"+ask_image1);
			String amember_id = multi.getParameter("amember_id");
			//System.out.println("amember_id>>"+amember_id);
			String spacepost_id = multi.getParameter("spacepost_id");
			
			AskVO askvo = new AskVO(null, ask_startdate, ask_finishdate, ask_memo, ask_image1, 
					ask_image2, ask_image3, amember_id, spacepost_id, "대기");
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
