package kr.co.fmos.member;

public class MemberDTO {

	private String member_id;
	private String member_name;
	private String member_pw;
	private String member_email;
	private int member_gender;
	private String member_birthdate;
	private String member_phone;
	private int member_email_check;
	private int member_sns_check;
	
	public MemberDTO() {}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public int getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(int member_gender) {
		this.member_gender = member_gender;
	}


	public String getMember_birthdate() {
		return member_birthdate;
	}

	public void setMember_birthdate(String member_birthdate) {
		this.member_birthdate = member_birthdate;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public int getMember_email_check() {
		return member_email_check;
	}

	public void setMember_email_check(int member_email_check) {
		this.member_email_check = member_email_check;
	}

	public int getMember_sns_check() {
		return member_sns_check;
	}

	public void setMember_sns_check(int member_sns_check) {
		this.member_sns_check = member_sns_check;
	}

	@Override
	public String toString() {
		return "MemberDTO [member_id=" + member_id + ", member_name=" + member_name + ", member_pw=" + member_pw
				+ ", member_email=" + member_email + ", member_gender=" + member_gender + ", member_birthdate="
				+ member_birthdate + ", member_phone=" + member_phone + ", member_email_check=" + member_email_check
				+ ", member_sns_check=" + member_sns_check + "]";
	}
	
}
