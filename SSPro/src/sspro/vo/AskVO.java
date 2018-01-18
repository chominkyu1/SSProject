package sspro.vo;

import java.sql.Date;

public class AskVO {
	private String ask_id;
	private Date ask_startdate;
	private Date ask_finishdate;
	private String ask_memo;
	private String ask_image1;
	private String ask_image2;
	private String ask_image3;
	private String amember_id;
	private String spacepost_id;
	private String ask_state;
	
	public AskVO() {

	}
	
	public AskVO(String ask_id, Date ask_startdate, Date ask_finishdate, String ask_memo, String ask_image1,
			String ask_image2, String ask_image3, String amember_id, String spacepost_id, String ask_state) {
		super();
		this.ask_id = ask_id;
		this.ask_startdate = ask_startdate;
		this.ask_finishdate = ask_finishdate;
		this.ask_memo = ask_memo;
		this.ask_image1 = ask_image1;
		this.ask_image2 = ask_image2;
		this.ask_image3 = ask_image3;
		this.amember_id = amember_id;
		this.spacepost_id = spacepost_id;
		this.ask_state = ask_state;
	}
	
	

	@Override
	public String toString() {
		return "AskVO [ask_id=" + ask_id + ", ask_startdate=" + ask_startdate + ", ask_finishdate=" + ask_finishdate
				+ ", ask_memo=" + ask_memo + ", ask_image1=" + ask_image1 + ", ask_image2=" + ask_image2
				+ ", ask_image3=" + ask_image3 + ", amember_id=" + amember_id + ", spacepost_id=" + spacepost_id
				+ ", ask_state=" + ask_state + "]";
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

	public String getAsk_image1() {
		return ask_image1;
	}

	public void setAsk_image1(String ask_image1) {
		this.ask_image1 = ask_image1;
	}

	public String getAsk_image2() {
		return ask_image2;
	}

	public void setAsk_image2(String ask_image2) {
		this.ask_image2 = ask_image2;
	}

	public String getAsk_image3() {
		return ask_image3;
	}

	public void setAsk_image3(String ask_image3) {
		this.ask_image3 = ask_image3;
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