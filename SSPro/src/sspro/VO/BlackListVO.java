package sspro.VO;

public class BlackListVO {
	private String blacklist_id;
	private int blacklist_count;
	private String amember_id;
	
    public BlackListVO() {
	}
	
	public BlackListVO(String blacklist_id, int blacklist_count, String amember_id) {
		super();
		this.blacklist_id = blacklist_id;
		this.blacklist_count = blacklist_count;
		this.amember_id = amember_id;
	}

	@Override
	public String toString() {
		return "BlackListVO [blacklist_id=" + blacklist_id + ", blacklist_count=" + blacklist_count + ", amember_id="
				+ amember_id + "]";
	}

	public String getBlacklist_id() {
		return blacklist_id;
	}

	public void setBlacklist_id(String blacklist_id) {
		this.blacklist_id = blacklist_id;
	}

	public int getBlacklist_count() {
		return blacklist_count;
	}

	public void setBlacklist_count(int blacklist_count) {
		this.blacklist_count = blacklist_count;
	}

	public String getAmember_id() {
		return amember_id;
	}

	public void setAmember_id(String amember_id) {
		this.amember_id = amember_id;
	}
	
	
	
}
