package sspro.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import sspro.dao.AskDAO;
import sspro.dao.MemberSpaceDAO;
import sspro.vo.AskListVO;
import sspro.vo.AskVO;
import sspro.vo.SpacePostVO;

public class AskListAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String action = request.getParameter("action");
		String askstate = request.getParameter("askstate");
		System.out.println("askstate : "+askstate);
		
		ActionForward forword = null;
		
		if(action.equals("artistask")) {
			String ArtistID = request.getParameter("email");
			System.out.println(ArtistID);
			AskDAO askdao = new AskDAO();
			ArrayList<AskListVO> artistask = askdao.selectArtistAsk(ArtistID);
			SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
			
			request.setAttribute("email", ArtistID);
			request.setAttribute("artistask", artistask);
			request.setAttribute("spacespec", spacespec);
			forword = mapping.findForward("artistask");
		}
		
		else if(action.equals("spaceask")) {
			String SpaceID = request.getParameter("email");
			AskDAO askdao = new AskDAO();
			
			System.out.println(SpaceID);
			
			if(askstate == null) {
				
				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				
				forword = mapping.findForward("spaceask");
			}
	
			else if(askstate.equals("askwait")) {
				String askid = request.getParameter("askid");
				System.out.println(SpaceID);
				
				AskVO askvo = new AskVO(askid, null, null, null, null, null, null, null, null, "대기");
				
				askdao.updateStateWait(askvo);
				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				
				forword = mapping.findForward("spaceask");
			}
			
			else if(askstate.equals("askaccept")) {
				String askid = request.getParameter("askid");
				System.out.println("ask_id : " + askid);

				AskVO askvo = new AskVO(askid, null, null, null, null, null, null, null, null, "승인");
				
				askdao.updateStateAccept(askvo);
				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("ask_id"));
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				
				forword = mapping.findForward("spaceask");
			}
			
			else if(askstate.equals("askreject")) {
				String askid = request.getParameter("askid");
				System.out.println("askid = "+SpaceID);
				
				AskVO askvo = new AskVO(askid, null, null, null, null, null, null, null, null, "거절");
				
				askdao.updateStateReject(askvo);
				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				
				forword = mapping.findForward("spaceask");
			}
			
			
		}
		
		
	
	/*	else if(action.equals("review")) {
			String SpaceID = request.getParameter("email");
			System.out.println(SpaceID);
			
			MemberSpaceDAO spacememberdao = new MemberSpaceDAO();
			
			int score = Integer.parseInt(request.getParameter("score"));
			String memo = request.getParameter("memo");
			String smember_id = spacememberdao.idSelect(SpaceID);
			
			
		}
*/
		return forword;
	}
}
