package sspro.actions;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Context;
import org.apache.catalina.servlet4preview.ServletContext;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import sspro.dao.SpacePostDAO;
import sspro.vo.SpacePostVO;

public class PostWriteAction extends Action{

	String spacepost_area = null;
	String spacepost_sort= null;
	String spacepost_section= null;
	String smember_id = null;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println(">>>> execute");
		String action = request.getParameter("action");
		ActionForward forword = null;
		
		
		SpacePostVO spacepostvo = new SpacePostVO();
		
		if(action.equals("upload1")) {//postwriteview에서 데이터 가져오기 
			smember_id= request.getParameter("smember_id");
			spacepost_area = request.getParameter("area");
			spacepost_sort = request.getParameter("space_sort");
			spacepost_section = request.getParameter("section");
			
			forword = mapping.findForward("postupload2");
			
		}else if(action.equals("upload2")) {
		    System.out.println("spacepost_area>>"+spacepost_area);
			
			//3단계 사진 경로 받아오기 
			String saveDir = request.getServletContext().getRealPath("/img");
			 System.out.println(saveDir);
		    int maxSize = 5*1025*1024;
		    
		   MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		   // enctype을 "multipart/form-data"로 선언하고 submit한 데이터들은 request객체가 아닌 MultipartRequest객체로 불러와야 한다.
           // 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
		   String spacepost_image1 = saveDir + "/" + multi.getFilesystemName("image1");// 업로드한 파일의 전체 경로를 DB에 저장하기 위함
		   String spacepost_image2 = saveDir + "/" + multi.getFilesystemName("image2");
		   String spacepost_image3 = saveDir + "/" + multi.getFilesystemName("image3");
		   
		   
		   String spacepost_shopname = multi.getParameter("shopname");
		   String spacepost_address = multi.getParameter("addr");
		   String spacepost_size = multi.getParameter("size");
		   String spacepost_phone = multi.getParameter("phone");
		   String startdate = multi.getParameter("startdate");
		   String finishdate = multi.getParameter("finishdate");
		   String spacepost_memo = multi.getParameter("memo");
		   
		   System.out.println(startdate);
		   System.out.println(finishdate);
		   
		   String spacepost_startdate = startdate.replace("-", "").substring(2);
		   String spacepost_finishdate = finishdate.replace("-", "").substring(2);
		  
		   String[] hashlist = request.getParameter("hashtag").split(",");
		   Map<String, String> hashmap = new HashMap<>();
		   
	        for (int i = 0; i < hashlist.length; i++) {
	        	hashmap.put("hashtag_name", hashlist[i]);
			}

			spacepostvo = new SpacePostVO(null, smember_id, spacepost_area, spacepost_shopname, spacepost_phone,
					spacepost_address, spacepost_size, spacepost_section, spacepost_image1, spacepost_image2,
					spacepost_image3, spacepost_startdate, spacepost_finishdate, spacepost_sort, spacepost_memo);

			System.out.println(spacepostvo.toString());
			SpacePostDAO dao = new SpacePostDAO();

			if (dao.spinsert(spacepostvo)) {
				if (dao.hashinsert(hashmap)) {
					forword = mapping.findForward("spuploadsuccess");
				}
			} else {
				forword = mapping.findForward("spuploadfail");
			}
		} // if

		return forword;
	}
}
