package sspro.VO;

public class MemberSpaceVO {

	private String smember_id;
	private String smember_name;
	private String smember_email;
	private String smember_pass;
	private String smember_phone;
	
	public MemberSpaceVO() {
	}
	
	public MemberSpaceVO(String smember_id, String smember_name, String smember_email, String smember_pass,
			String smember_phone) {
		super();
		this.smember_id = smember_id;
		this.smember_name = smember_name;
		this.smember_email = smember_email;
		this.smember_pass = smember_pass;
		this.smember_phone = smember_phone;
	}

	@Override
	public String toString() {
		return "MemberSpaceVO [smember_id=" + smember_id + ", smember_name=" + smember_name + ", smember_email="
				+ smember_email + ", smember_pass=" + smember_pass + ", smember_phone=" + smember_phone + "]";
	}

	public String getSmember_id() {
		return smember_id;
	}

	public void setSmember_id(String smember_id) {
		this.smember_id = smember_id;
	}

	public String getSmember_name() {
		return smember_name;
	}

	public void setSmember_name(String smember_name) {
		this.smember_name = smember_name;
	}

	public String getSmember_email() {
		return smember_email;
	}

	public void setSmember_email(String smember_email) {
		this.smember_email = smember_email;
	}

	public String getSmember_pass() {
		return smember_pass;
	}

	public void setSmember_pass(String smember_pass) {
		this.smember_pass = smember_pass;
	}

	public String getSmember_phone() {
		return smember_phone;
	}

	public void setSmember_phone(String smember_phone) {
		this.smember_phone = smember_phone;
	}
	
}
