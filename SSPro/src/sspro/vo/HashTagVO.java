package sspro.vo;

public class HashTagVO {
	private String spacepost_id;
	private String hashtag_id;
	private String hashtag_name;
	
	public HashTagVO() {
		// TODO Auto-generated constructor stub
	}

	public HashTagVO(String spacepost_id, String hashtag_id, String hashtag_name) {
		super();
		this.spacepost_id = spacepost_id;
		this.hashtag_id = hashtag_id;
		this.hashtag_name = hashtag_name;
	}

	@Override
	public String toString() {
		return "HashTagVO [spacepost_id=" + spacepost_id + ", hashtag_id=" + hashtag_id + ", hashtag_name="
				+ hashtag_name + "]";
	}

	public String getSpacepost_id() {
		return spacepost_id;
	}

	public void setSpacepost_id(String spacepost_id) {
		this.spacepost_id = spacepost_id;
	}

	public String getHashtag_id() {
		return hashtag_id;
	}

	public void setHashtag_id(String hashtag_id) {
		this.hashtag_id = hashtag_id;
	}

	public String getHashtag_name() {
		return hashtag_name;
	}

	public void setHashtag_name(String hashtag_name) {
		this.hashtag_name = hashtag_name;
	}
	
	

}
