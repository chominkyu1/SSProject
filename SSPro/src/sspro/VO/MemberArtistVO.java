package sspro.VO;

public class MemberArtistVO {

	private String amember_id;
	private String amember_name;
	private String amember_email;
	private String amember_pass;
	private String amember_major;
	private String amember_phone;
	private int amember_grade;
	private int amember_score;
	
	public MemberArtistVO() {
	}

	public MemberArtistVO(String amember_id, String amember_name, String amember_email, String amember_pass,
			String amember_major, String amember_phone, int amember_grade, int amember_score) {
		super();
		this.amember_id = amember_id;
		this.amember_name = amember_name;
		this.amember_email = amember_email;
		this.amember_pass = amember_pass;
		this.amember_major = amember_major;
		this.amember_phone = amember_phone;
		this.amember_grade = amember_grade;
		this.amember_score = amember_score;
	}

	@Override
	public String toString() {
		return "MemberSpaceVO [amember_id=" + amember_id + ", amember_name=" + amember_name + ", amember_email="
				+ amember_email + ", amember_pass=" + amember_pass + ", amember_major=" + amember_major
				+ ", amember_phone=" + amember_phone + ", amember_grade=" + amember_grade + ", amember_score="
				+ amember_score + "]";
	}

	public String getAmember_id() {
		return amember_id;
	}

	public void setAmember_id(String amember_id) {
		this.amember_id = amember_id;
	}

	public String getAmember_name() {
		return amember_name;
	}

	public void setAmember_name(String amember_name) {
		this.amember_name = amember_name;
	}

	public String getAmember_email() {
		return amember_email;
	}

	public void setAmember_email(String amember_email) {
		this.amember_email = amember_email;
	}

	public String getAmember_pass() {
		return amember_pass;
	}

	public void setAmember_pass(String amember_pass) {
		this.amember_pass = amember_pass;
	}

	public String getAmember_major() {
		return amember_major;
	}

	public void setAmember_major(String amember_major) {
		this.amember_major = amember_major;
	}

	public String getAmember_phone() {
		return amember_phone;
	}

	public void setAmember_phone(String amember_phone) {
		this.amember_phone = amember_phone;
	}

	public int getAmember_grade() {
		return amember_grade;
	}

	public void setAmember_grade(int amember_grade) {
		this.amember_grade = amember_grade;
	}

	public int getAmember_score() {
		return amember_score;
	}

	public void setAmember_score(int amember_score) {
		this.amember_score = amember_score;
	}
}
