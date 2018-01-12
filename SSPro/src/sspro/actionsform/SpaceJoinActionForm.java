package sspro.actionsform;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class SpaceJoinActionForm extends ActionForm{
	private String smember_phone;

	@Override
	public String toString() {
		return "SpaceJoinActionForm [smember_phone=" + smember_phone + "]";
	}

	public String getAmember_phone() {
		return smember_phone;
	}

	public void setAmember_phone(String amember_phone) {
		this.smember_phone = smember_phone;
	}
	
	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors errs = new ActionErrors();
		if(!smember_phone.matches("[0-9]+")||!smember_phone.matches("[\\d]+")){
			errs.add("errMsg",new ActionMessage("clac.msg","숫자만 입력"));
		}
		return errs;
	}
	

}
