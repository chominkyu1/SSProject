package sspro.vo;

import java.sql.Date;

public class AskListVO {
	private String ask_id;
	private Date ask_startdate;
	private Date ask_finishdate;
	private String amember_id;
	private String spacepost_id;
	private String ask_state;
	private String spacepost_area;
	private String spacepost_shopname;
	private String spacepost_section;
	private String spacepost_address;
	private String spacepost_image1;
	private String spacepost_memo;
	private Date spacepost_startdate;
	private Date spacepost_finishdate;

	public AskListVO() {
		// TODO Auto-generated constructor stub
	}

	

	public AskListVO(String ask_id, Date ask_startdate, Date ask_finishdate, String amember_id, String spacepost_id,
			String ask_state, String spacepost_area, String spacepost_shopname, String spacepost_section,
			String spacepost_address, String spacepost_image1, String spacepost_memo, Date spacepost_startdate,
			Date spacepost_finishdate) {
		super();
		this.ask_id = ask_id;
		this.ask_startdate = ask_startdate;
		this.ask_finishdate = ask_finishdate;
		this.amember_id = amember_id;
		this.spacepost_id = spacepost_id;
		this.ask_state = ask_state;
		this.spacepost_area = spacepost_area;
		this.spacepost_shopname = spacepost_shopname;
		this.spacepost_section = spacepost_section;
		this.spacepost_address = spacepost_address;
		this.spacepost_image1 = spacepost_image1;
		this.spacepost_memo = spacepost_memo;
		this.spacepost_startdate = spacepost_startdate;
		this.spacepost_finishdate = spacepost_finishdate;
	}

	

	public String getSpacepost_address() {
		return spacepost_address;
	}



	public void setSpacepost_address(String spacepost_address) {
		this.spacepost_address = spacepost_address;
	}



	public Date getSpacepost_startdate() {
		return spacepost_startdate;
	}

	public void setSpacepost_startdate(Date spacepost_startdate) {
		this.spacepost_startdate = spacepost_startdate;
	}

	public Date getSpacepost_finishdate() {
		return spacepost_finishdate;
	}

	public void setSpacepost_finishdate(Date spacepost_finishdate) {
		this.spacepost_finishdate = spacepost_finishdate;
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

	public String getSpacepost_area() {
		return spacepost_area;
	}

	public void setSpacepost_area(String spacepost_area) {
		this.spacepost_area = spacepost_area;
	}

	public String getSpacepost_shopname() {
		return spacepost_shopname;
	}

	public void setSpacepost_shopname(String spacepost_shopname) {
		this.spacepost_shopname = spacepost_shopname;
	}

	public String getSpacepost_section() {
		return spacepost_section;
	}

	public void setSpacepost_section(String spacepost_section) {
		this.spacepost_section = spacepost_section;
	}

	public String getSpacepost_image1() {
		return spacepost_image1;
	}

	public void setSpacepost_image1(String spacepost_image1) {
		this.spacepost_image1 = spacepost_image1;
	}

	public String getSpacepost_memo() {
		return spacepost_memo;
	}

	public void setSpacepost_memo(String spacepost_memo) {
		this.spacepost_memo = spacepost_memo;
	}

	@Override
	public String toString() {
		return "AskListVO [ask_id=" + ask_id + ", ask_startdate=" + ask_startdate + ", ask_finishdate=" + ask_finishdate
				+ ", amember_id=" + amember_id + ", spacepost_id=" + spacepost_id + ", ask_state=" + ask_state
				+ ", spacepost_area=" + spacepost_area + ", spacepost_shopname=" + spacepost_shopname
				+ ", spacepost_section=" + spacepost_section + ", spacepost_image1=" + spacepost_image1
				+ ", spacepost_memo=" + spacepost_memo + "]";
	}

}
