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

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		ActionForward forword = null;
		
		String spacepost_area = null;
		String spacepost_sort= null;
		String spacepost_section= null;

		
		SpacePostVO spacepostvo = new SpacePostVO();
		
		if(action.equals("upload1")) {//postwriteview���� ������ �������� 
			
			spacepost_area = request.getParameter("area");
			spacepost_sort = request.getParameter("space_sort");
			spacepost_section = request.getParameter("section");
			
		}else if(action.equals("upload2")) {
		    String smember_id= request.getParameter("smember_id");
		    String spacepost_shopname = request.getParameter("shopname");
		    String spacepost_address = request.getParameter("addr");
		    String spacepost_size = request.getParameter("size");
		    String spacepost_phone = request.getParameter("phone");
			String startdate = request.getParameter("startdate");
			String finishdate = request.getParameter("finishdate");
			String spacepost_memo = request.getParameter("memo");
			
		    System.out.println(startdate);
		    System.out.println(finishdate);
			SimpleDateFormat transFormat = new SimpleDateFormat("yy/MM/dd");

			Date spacepost_startdate = (Date) transFormat.parse(startdate);
			Date spacepost_finishdate = (Date) transFormat.parse(finishdate);
			
			//3�ܰ� ���� ��� �޾ƿ��� 
			String saveDir = request.getServletContext().getRealPath("/image");
			 System.out.println(saveDir);
		    int maxSize = 5*1025*1024;
		    
		   MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		   // enctype�� "multipart/form-data"�� �����ϰ� submit�� �����͵��� request��ü�� �ƴ� MultipartRequest��ü�� �ҷ��;� �Ѵ�.
           // ���۹��� �����Ͱ� ������ ��� getFilesystemName()���� ���� �̸��� �޾ƿ� �� �ִ�.
		   String spacepost_image1 = saveDir + "/" + multi.getFilesystemName("image1");// ���ε��� ������ ��ü ��θ� DB�� �����ϱ� ����
		   String spacepost_image2 = saveDir + "/" + multi.getFilesystemName("image2");
		   String spacepost_image3 = saveDir + "/" + multi.getFilesystemName("image3");
		    
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
			if(dao.hashinsert(hashmap)) {
				forword = mapping.findForward("spuploadsuccess");
			   }
		    } else {
			forword = mapping.findForward("spuploadfail");
		}
	
		}
		
		
		return forword;
	}
}
