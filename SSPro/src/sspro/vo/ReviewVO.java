package sspro.vo;

public class ReviewVO {
	private String rwork_id;
	private int rwork_score;
	private String rwork_memo;
	private String rwork_smember_id;
	private String rwork_amember_id;
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewVO(String rwork_id, int rwork_score, String rwork_memo, String rwork_smember_id,
			String rwork_amember_id) {
		super();
		this.rwork_id = rwork_id;
		this.rwork_score = rwork_score;
		this.rwork_memo = rwork_memo;
		this.rwork_smember_id = rwork_smember_id;
		this.rwork_amember_id = rwork_amember_id;
	}

	public String getRwork_id() {
		return rwork_id;
	}

	public void setRwork_id(String rwork_id) {
		this.rwork_id = rwork_id;
	}

	public int getRwork_score() {
		return rwork_score;
	}

	public void setRwork_score(int rwork_score) {
		this.rwork_score = rwork_score;
	}

	public String getRwork_memo() {
		return rwork_memo;
	}

	public void setRwork_memo(String rwork_memo) {
		this.rwork_memo = rwork_memo;
	}

	public String getRwork_smember_id() {
		return rwork_smember_id;
	}

	public void setRwork_smember_id(String rwork_smember_id) {
		this.rwork_smember_id = rwork_smember_id;
	}

	public String getRwork_amember_id() {
		return rwork_amember_id;
	}

	public void setRwork_amember_id(String rwork_amember_id) {
		this.rwork_amember_id = rwork_amember_id;
	}

	
	
}
