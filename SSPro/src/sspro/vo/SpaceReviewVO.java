package sspro.vo;

public class SpaceReviewVO {
	
	private String rspace_id;
	private int rspace_score;
	private String rspace_memo;
	private String spacepost_id;
	private String amember_id;
	public SpaceReviewVO() {
	}
	public SpaceReviewVO(String rspace_id, int rspace_score, String rspace_memo, String spacepost_id,
			String amember_id) {
		super();
		this.rspace_id = rspace_id;
		this.rspace_score = rspace_score;
		this.rspace_memo = rspace_memo;
		this.spacepost_id = spacepost_id;
		this.amember_id = amember_id;
	}

	@Override
	public String toString() {
		return "SpaceReviewVO [rspace_id=" + rspace_id + ", rspace_score=" + rspace_score + ", rspace_memo="
				+ rspace_memo + ", spacepost_id=" + spacepost_id + ", amember_id=" + amember_id + "]";
	}

	public String getRspace_id() {
		return rspace_id;
	}

	public void setRspace_id(String rspace_id) {
		this.rspace_id = rspace_id;
	}

	public int getRspace_score() {
		return rspace_score;
	}

	public void setRspace_score(int rspace_score) {
		this.rspace_score = rspace_score;
	}

	public String getRspace_memo() {
		return rspace_memo;
	}

	public void setRspace_memo(String rspace_memo) {
		this.rspace_memo = rspace_memo;
	}

	public String getSpacepost_id() {
		return spacepost_id;
	}

	public void setSpacepost_id(String spacepost_id) {
		this.spacepost_id = spacepost_id;
	}

	public String getAmember_id() {
		return amember_id;
	}

	public void setAmember_id(String amember_id) {
		this.amember_id = amember_id;
	}

	
	
	
}
