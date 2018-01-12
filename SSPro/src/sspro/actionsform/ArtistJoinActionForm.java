package sspro.actionsform;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class ArtistJoinActionForm extends ActionForm{
	private String amember_phone;

	public String getAmember_phone() {
		return amember_phone;
	}

	public void setAmember_phone(String amember_phone) {
		this.amember_phone = amember_phone;
	}
	
	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		if(!amember_phone.matches("[0-9]+")||amember_phone.matches("[\\d]+")){
			System.out.println("숫자만 입력하세요!");
		}

		return null;
	}
	

}
