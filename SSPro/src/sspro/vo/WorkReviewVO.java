package sspro.vo;

public class WorkReviewVO {
	private String rwork_id;
	private int rwork_score;
	private String rwork_memo;
	private String smember_id;
	private String amember_id;
	
	public WorkReviewVO() {
	}
	
	public WorkReviewVO(String rwork_id, int rwork_score, String rwork_memo, String smember_id, String amember_id) {
		
		this.rwork_id = rwork_id;
		this.rwork_score = rwork_score;
		this.rwork_memo = rwork_memo;
		this.smember_id = smember_id;
		this.amember_id = amember_id;
	}

	@Override
	public String toString() {
		return "WorkReviewVO [rwork_id=" + rwork_id + ", rwork_score=" + rwork_score + ", rwork_memo=" + rwork_memo
				+ ", smember_id=" + smember_id + ", amember_id=" + amember_id + "]";
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

	public String getSmember_id() {
		return smember_id;
	}

	public void setSmember_id(String smember_id) {
		this.smember_id = smember_id;
	}

	public String getAmember_id() {
		return amember_id;
	}

	public void setAmember_id(String amember_id) {
		this.amember_id = amember_id;
	}
	
	

}
