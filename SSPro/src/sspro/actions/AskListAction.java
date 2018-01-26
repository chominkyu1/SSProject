package sspro.actions;

import java.util.ArrayList;

import javax.servlet.ServletRequest;
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
		ServletRequest session =null;
		String action = request.getParameter("action");
		String askstate = request.getParameter("askstate");
		System.out.println("askstate : " + askstate);

		ActionForward forword = null;

		if (action.equals("artistask")) { // ��Ƽ��Ʈ�� ���� ��û�� Ȯ��
			request.getSession().setAttribute("artistuser", "success");
			String ArtistID = request.getParameter("email");
			System.out.println(ArtistID);
			AskDAO askdao = new AskDAO();

			if (askstate == null) {
				ArrayList<AskListVO> artistask = askdao.selectArtistAsk(ArtistID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				AskVO ask = askdao.select(request.getParameter("askid"));
				request.setAttribute("ask", ask);

				request.setAttribute("email", ArtistID);
				request.setAttribute("artistask", artistask);
				request.setAttribute("spacespec", spacespec);
				request.getSession().setAttribute("artistuser", "success");
				forword = mapping.findForward("artistask");
			}

			else if (askstate.equals("askcancle")) { // ��û��� ��ư
				String askid = request.getParameter("askid");
				System.out.println("askid : " + askid);
				askdao.delete(askid);

				ArrayList<AskListVO> artistask = askdao.selectArtistAsk(ArtistID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				
				AskVO ask = askdao.select(request.getParameter("askid"));
				request.setAttribute("ask", ask);

				request.setAttribute("email", ArtistID);
				request.setAttribute("artistask", artistask);
				request.setAttribute("spacespec", spacespec);
				request.getSession().setAttribute("artistuser", "success");
				forword = mapping.findForward("artistask");
			}
		}

		else if (action.equals("spaceask")) { // ���������ڰ� ��û�� Ȯ��
			request.getSession().setAttribute("spaceuser", "success");
			String SpaceID = request.getParameter("email");
			AskDAO askdao = new AskDAO();

			System.out.println(SpaceID);

			if (askstate == null) {

				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				AskVO ask = askdao.select(request.getParameter("askid"));

				request.setAttribute("ask", ask);
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				request.getSession().setAttribute("spaceuser", "success");
				forword = mapping.findForward("spaceask");
			}

			else if (askstate.equals("askwait")) { // ��û��� ��ư
				String askid = request.getParameter("askid");
				System.out.println(SpaceID);

				AskVO askvo = new AskVO(askid, null, null, null, null, null, null, null, null, "���");

				askdao.updateStateWait(askvo);
				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				AskVO ask = askdao.select(request.getParameter("askid"));

				request.setAttribute("ask", ask);
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				request.getSession().setAttribute("spaceuser", "success");
				forword = mapping.findForward("spaceask");
			}

			else if (askstate.equals("askaccept")) { // ��û���� ��ư
				String askid = request.getParameter("askid");
				System.out.println("ask_id : " + askid);

				AskVO askvo = new AskVO(askid, null, null, null, null, null, null, null, null, "����");

				askdao.updateStateAccept(askvo);
				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("ask_id"));
				AskVO ask = askdao.select(request.getParameter("askid"));

				request.setAttribute("ask", ask);
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				request.getSession().setAttribute("spaceuser", "success");
				forword = mapping.findForward("spaceask");
			}

			else if (askstate.equals("askreject")) { // ��û���� ��ư
				String askid = request.getParameter("askid");
				System.out.println("askid = " + SpaceID);

				AskVO askvo = new AskVO(askid, null, null, null, null, null, null, null, null, "����");

				askdao.updateStateReject(askvo);
				ArrayList<AskListVO> spaceask = askdao.selectSpaceAsk(SpaceID);
				SpacePostVO spacespec = askdao.selectAskSpace(request.getParameter("askid"));
				AskVO ask = askdao.select(request.getParameter("askid"));
				
				request.setAttribute("ask", ask);
				request.setAttribute("email", SpaceID);
				request.setAttribute("spaceask", spaceask);
				request.setAttribute("spacespec", spacespec);
				request.getSession().setAttribute("spaceuser", "success");
				forword = mapping.findForward("spaceask");
			}

		}

		/*
		 * else if(action.equals("review")) { String SpaceID =
		 * request.getParameter("email"); System.out.println(SpaceID);
		 * 
		 * MemberSpaceDAO spacememberdao = new MemberSpaceDAO();
		 * 
		 * int score = Integer.parseInt(request.getParameter("score")); String memo =
		 * request.getParameter("memo"); String smember_id =
		 * spacememberdao.idSelect(SpaceID);
		 * 
		 * 
		 * }
		 */
		return forword;
	}
}
