package sspro.vo;

public class MainReviewVO {
	private String amember_name;
	private String amember_major;
	private String rspace_memo;
	
	public MainReviewVO() {
		// TODO Auto-generated constructor stub
	}

	public MainReviewVO(String amember_name, String amember_major, String rspace_memo) {
		super();
		this.amember_name = amember_name;
		this.amember_major = amember_major;
		this.rspace_memo = rspace_memo;
	}

	public String getAmember_name() {
		return amember_name;
	}

	public void setAmember_name(String amember_name) {
		this.amember_name = amember_name;
	}

	public String getAmember_major() {
		return amember_major;
	}

	public void setAmember_major(String amember_major) {
		this.amember_major = amember_major;
	}

	public String getRspace_memo() {
		return rspace_memo;
	}

	public void setRspace_memo(String rspace_memo) {
		this.rspace_memo = rspace_memo;
	}

	@Override
	public String toString() {
		return "MainReviewVO [amember_name=" + amember_name + ", amember_major=" + amember_major + ", rspace_memo="
				+ rspace_memo + "]";
	}
	
	
}
