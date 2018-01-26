package sspro.actions;

import java.util.ArrayList;
import java.util.HashMap;

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
		String email = request.getParameter("email");
		ActionForward forword = null;
		
		if(action.equals("searchhash")) {
			
			String hash = request.getParameter("hash");
			//Hash태그 검색
			System.out.println("hashTag : " + hash);
			
			SearchDAO searchdao = new SearchDAO();
			ArrayList<SpacePostVO> spacelist = (ArrayList<SpacePostVO>) searchdao.hashTagAll(hash);
			
			request.setAttribute("spacelist", spacelist);
			request.setAttribute("email", email);
			forword = mapping.findForward("searchsuccess");
		}
		
		else if(action.equals("search")){
			String sort = request.getParameter("sort");
			if(sort.equals("") || sort.equals("전체분류")) {
				sort = null;
			}
			
			String startdateget = request.getParameter("startdate");
			String startdate;
			String[] startdatetemp = startdateget.split("/");
			startdate = startdatetemp[2].substring(2, 4)+startdatetemp[0]+startdatetemp[1];
			
			String finishdateget = request.getParameter("finishdate");
			String finishdate;
			String[] finishdatetemp = finishdateget.split("/");
			finishdate = finishdatetemp[2].substring(2, 4)+finishdatetemp[0]+finishdatetemp[1];
		/*	String[] finishdatetemp = request.getParameter("finishdate").split("/");
			String finishdate = "";
			for(int i=2; i>finishdatetemp.length; i--) {
				finishdate += finishdatetemp[i];
			}*/
			
			String location = request.getParameter("location");
			if(location.equals("") || location.equals("지역전체")) {
				location = null;
			}
			String shopname = request.getParameter("shopname");
			
			System.out.println("Sort : " + sort);
			System.out.println("StartDate : "+startdate);
			System.out.println("FinishDate : "+finishdate);
			System.out.println("Location : " + location);
			System.out.println("Shopname : " + shopname);
			
			HashMap<String, String> map = new HashMap<>();
			 map.put("spacepost_sort", sort);
			 map.put("spacepost_startdate", startdate);
			 map.put("spacepost_finishdate", finishdate);
		     map.put("spacepost_area", location);
		     map.put("spacepost_shopname", "%"+shopname+"%");
		   
		    
		     SearchDAO searchdao = new SearchDAO();
		     ArrayList<SpacePostVO> spacelist = (ArrayList<SpacePostVO>) searchdao.searchAll(map);
		     
		     // null 일때 핸들링하기
		     request.setAttribute("spacelist", spacelist);
		     request.setAttribute("email", email);
		     forword = mapping.findForward("searchsuccess");
		}
		
		return forword;
	}

}
