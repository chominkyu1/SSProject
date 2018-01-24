
package sspro.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import sspro.dao.AskDAO;
import sspro.dao.MemberArtistDAO;
import sspro.vo.AskVO;
import sspro.vo.MemberArtistVO;


public class AskAction2 extends Action{

   @Override
   public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
         HttpServletResponse response) throws Exception {
      
      String ask_id = request.getParameter("ask_id");

      AskDAO askdao = new AskDAO();
      AskVO askvo = askdao.select(ask_id);
       
      request.setAttribute("askvo", askvo);
      
   //-------------------------------------------------------------------
   
      String amember_id = request.getParameter("amember_id");
      
      MemberArtistDAO memberartistdao = new MemberArtistDAO();
      MemberArtistVO memberartistvo = memberartistdao.select(amember_id);
        
      request.setAttribute("memberartistvo", memberartistvo);
      
       
      return mapping.findForward("spost");
   }
}