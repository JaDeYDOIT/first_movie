package kr.co.fmos.customer;

public class InquireDTO {

	private String inquire_id;
	private String member_id;
	private int inquire_kind;
	private String inquire_title;
	private String inquire_content;
	private String inquire_theater_name;
	private String inquire_file;
	private String inquire_pw;
	private String inquire_answer;
	private String inquire_datetime;
	
	public InquireDTO() {}
	
	public String getInquire_id() {
		return inquire_id;
	}
	public void setInquire_id(String inquire_id) {
		this.inquire_id = inquire_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getInquire_kind() {
		return inquire_kind;
	}
	public void setInquire_kind(int inquire_kind) {
		this.inquire_kind = inquire_kind;
	}
	public String getInquire_title() {
		return inquire_title;
	}
	public void setInquire_title(String inquire_title) {
		this.inquire_title = inquire_title;
	}
	public String getInquire_content() {
		return inquire_content;
	}
	public void setInquire_content(String inquire_content) {
		this.inquire_content = inquire_content;
	}
	public String getInquire_theater_name() {
		return inquire_theater_name;
	}
	public void setInquire_theater_name(String inquire_theater_name) {
		this.inquire_theater_name = inquire_theater_name;
	}
	public String getInquire_file() {
		return inquire_file;
	}
	public void setInquire_file(String inquire_file) {
		this.inquire_file = inquire_file;
	}
	
	public String getInquire_pw() {
		return inquire_pw;
	}

	public void setInquire_pw(String inquire_pw) {
		this.inquire_pw = inquire_pw;
	}

	public String getInquire_answer() {
		return inquire_answer;
	}
	public void setInquire_answer(String inquire_answer) {
		this.inquire_answer = inquire_answer;
	}
	public String getInquire_datetime() {
		return inquire_datetime;
	}
	public void setInquire_datetime(String inquire_datetime) {
		this.inquire_datetime = inquire_datetime;
	}
	
	@Override
	public String toString() {
		return "InquireDTO [inquire_id=" + inquire_id + ", member_id=" + member_id + ", inquire_kind=" + inquire_kind
				+ ", inquire_title=" + inquire_title + ", inquire_content=" + inquire_content
				+ ", inquire_theater_name=" + inquire_theater_name + ", inquire_file=" + inquire_file + ", inquire_pw="
				+ inquire_pw + ", inquire_answer=" + inquire_answer + ", inquire_datetime=" + inquire_datetime + "]";
	}
	

}
