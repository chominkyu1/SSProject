package sspro.actions;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.MemberArtistDAO;
import sspro.dao.MemberSpaceDAO;
import sspro.dao.ReviewDAO;
import sspro.dao.SpacePostDAO;
import sspro.vo.HashTagVO;
import sspro.vo.MemberArtistVO;
import sspro.vo.MemberSpaceVO;
import sspro.vo.SpacePostVO;
import sspro.vo.SpaceReviewVO;

public class PostDetailAction extends Action{
   public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
         HttpServletResponse response) throws Exception {
      
         String action = request.getParameter("action");
         ActionForward forward=null;
         System.out.println("action>>"+action);
         if(action.equals("spost")) {
         String spacepost_id = request.getParameter("spacepost_id");
         String smember_id = request.getParameter("smember_id");
         System.out.println("smember_id>>"+smember_id);
         System.out.println("spacepost_id>>"+spacepost_id);

         SpacePostDAO spacepostdao = new SpacePostDAO();
         MemberSpaceDAO memberspacedao =new MemberSpaceDAO();
         ReviewDAO reviewdao = new ReviewDAO();
         MemberArtistDAO memberartistdao = new MemberArtistDAO();
         
         List<Map> spaceReviewList = reviewdao.spaceReviewSelect(spacepost_id);
         SpacePostVO spacepostvo = spacepostdao.select(spacepost_id);
         MemberSpaceVO memberspacevo = memberspacedao.select(smember_id);
         List<HashTagVO> hashList = spacepostdao.hashTagSelect(spacepost_id);
         int count = reviewdao.spaceReviewCount(spacepost_id);
         //reviewdao.spaceReviewSelect(spacepost_id);
         Map spa = null;
         
         for(int i=0; i<spaceReviewList.size();i++) {
            spa = spaceReviewList.get(i);
           // System.out.println(spa.get("AMEMBER_NAME"));
            
         }
         //System.out.println(spacepostvo);
         //System.out.println(memberspacevo);
         
         
         //request.setAttribute("spaceReviewList", spaceReviewList);
         request.setAttribute("spaceReviewList", spaceReviewList);
         request.setAttribute("spacepostvo", spacepostvo);
         request.setAttribute("memberspacevo", memberspacevo);
         request.setAttribute("hashList", hashList);
         request.setAttribute("count", count);
         //request.setAttribute("amemid", amemid);
         
         forward =mapping.findForward("spost");
         }
         
      
      return forward;
   }
}