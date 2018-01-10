package sspro.vo;

import java.sql.Date;

public class AskVO {
	private String ask_id;
	private Date ask_startdate;
	private Date ask_finishdate;
	private String ask_memo;
	private String ask_image;
	private String amember_id;
	private String spacepost_id;
	private String ask_state;
	
	public AskVO() {
	}
	
	public AskVO(String ask_id, Date ask_startdate, Date ask_finishdate, String ask_memo, String ask_image,
			String amember_id, String spacepost_id, String ask_state) {
		super();
		this.ask_id = ask_id;
		this.ask_startdate = ask_startdate;
		this.ask_finishdate = ask_finishdate;
		this.ask_memo = ask_memo;
		this.ask_image = ask_image;
		this.amember_id = amember_id;
		this.spacepost_id = spacepost_id;
		this.ask_state = ask_state;
	}

	@Override
	public String toString() {
		return "AskVO [ask_id=" + ask_id + ", ask_startdate=" + ask_startdate + ", ask_finishdate=" + ask_finishdate
				+ ", ask_memo=" + ask_memo + ", ask_image=" + ask_image + ", amember_id=" + amember_id
				+ ", spacepost_id=" + spacepost_id + ", ask_state=" + ask_state + "]";
	}

	public String getAsk_id() {
		return ask_id;
	}

	public void setAsk_id(String ask_id) {
		this.ask_id = ask_id;
	}

	public Date getAsk_startdate() {
		return ask_startdate;
	}

	public void setAsk_startdate(Date ask_startdate) {
		this.ask_startdate = ask_startdate;
	}

	public Date getAsk_finishdate() {
		return ask_finishdate;
	}

	public void setAsk_finishdate(Date ask_finishdate) {
		this.ask_finishdate = ask_finishdate;
	}

	public String getAsk_memo() {
		return ask_memo;
	}

	public void setAsk_memo(String ask_memo) {
		this.ask_memo = ask_memo;
	}

	public String getAsk_image() {
		return ask_image;
	}

	public void setAsk_image(String ask_image) {
		this.ask_image = ask_image;
	}

	public String getAmember_id() {
		return amember_id;
	}

	public void setAmember_id(String amember_id) {
		this.amember_id = amember_id;
	}

	public String getSpacepost_id() {
		return spacepost_id;
	}

	public void setSpacepost_id(String spacepost_id) {
		this.spacepost_id = spacepost_id;
	}

	public String getAsk_state() {
		return ask_state;
	}

	public void setAsk_state(String ask_state) {
		this.ask_state = ask_state;
	}

	

}
