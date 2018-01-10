package sspro.vo;

import java.sql.Date;

public class SpacePostVO {
	private String spacepost_id;
	private String smember_id;
	private String spacepost_area;
	private String spacepost_shopname;
	private String spacepost_phone;
	private String spacepost_address;
	private String spacepost_size;
	private String spacepost_image;
	private Date spacepost_startdate;
	private Date spacepost_finishdate;
	private String spacepost_sort;
	private String spacepost_memo;
	
	
	public SpacePostVO() {
	}


	public SpacePostVO(String spacepost_id, String smember_id, String spacepost_area, String spacepost_shopname,
			String spacepost_phone, String spacepost_address, String spacepost_size, String spacepost_image,
			Date spacepost_startdate, Date spacepost_finishdate, String spacepost_sort, String spacepost_memo) {
		
		this.spacepost_id = spacepost_id;
		this.smember_id = smember_id;
		this.spacepost_area = spacepost_area;
		this.spacepost_shopname = spacepost_shopname;
		this.spacepost_phone = spacepost_phone;
		this.spacepost_address = spacepost_address;
		this.spacepost_size = spacepost_size;
		this.spacepost_image = spacepost_image;
		this.spacepost_startdate = spacepost_startdate;
		this.spacepost_finishdate = spacepost_finishdate;
		this.spacepost_sort = spacepost_sort;
		this.spacepost_memo = spacepost_memo;
	}


	@Override
	public String toString() {
		return "SpacePostVO [spacepost_id=" + spacepost_id + ", smember_id=" + smember_id + ", spacepost_area="
				+ spacepost_area + ", spacepost_shopname=" + spacepost_shopname + ", spacepost_phone=" + spacepost_phone
				+ ", spacepost_address=" + spacepost_address + ", spacepost_size=" + spacepost_size
				+ ", spacepost_image=" + spacepost_image + ", spacepost_startdate=" + spacepost_startdate
				+ ", spacepost_finishdate=" + spacepost_finishdate + ", spacepost_sort=" + spacepost_sort
				+ ", spacepost_memo=" + spacepost_memo + "]";
	}


	public String getSpacepost_id() {
		return spacepost_id;
	}


	public void setSpacepost_id(String spacepost_id) {
		this.spacepost_id = spacepost_id;
	}


	public String getSmember_id() {
		return smember_id;
	}


	public void setSmember_id(String smember_id) {
		this.smember_id = smember_id;
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


	public String getSpacepost_phone() {
		return spacepost_phone;
	}


	public void setSpacepost_phone(String spacepost_phone) {
		this.spacepost_phone = spacepost_phone;
	}


	public String getSpacepost_address() {
		return spacepost_address;
	}


	public void setSpacepost_address(String spacepost_address) {
		this.spacepost_address = spacepost_address;
	}


	public String getSpacepost_size() {
		return spacepost_size;
	}


	public void setSpacepost_size(String spacepost_size) {
		this.spacepost_size = spacepost_size;
	}


	public String getSpacepost_image() {
		return spacepost_image;
	}


	public void setSpacepost_image(String spacepost_image) {
		this.spacepost_image = spacepost_image;
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


	public String getSpacepost_sort() {
		return spacepost_sort;
	}


	public void setSpacepost_sort(String spacepost_sort) {
		this.spacepost_sort = spacepost_sort;
	}


	public String getSpacepost_memo() {
		return spacepost_memo;
	}


	public void setSpacepost_memo(String spacepost_memo) {
		this.spacepost_memo = spacepost_memo;
	}
	
	

}
