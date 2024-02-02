package kr.co.fmos.customer;


public class NoticeDTO {

	private int notice_id;
	private String notice_title;
	private String notice_type;
	private String notice_content;
	private String notice_datetime;
	private int notice_kind;
	
	public NoticeDTO() {}

	public int getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_type() {
		return notice_type;
	}

	public void setNotice_type(String notice_type) {
		this.notice_type = notice_type;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_datetime() {
		return notice_datetime;
	}

	public void setNotice_datetime(String notice_datetime) {
		this.notice_datetime = notice_datetime;
	}

	public int getNotice_kind() {
		return notice_kind;
	}

	public void setNotice_kind(int notice_kind) {
		this.notice_kind = notice_kind;
	}

	@Override
	public String toString() {
		return "NoticeDTO [notice_id=" + notice_id + ", notice_title=" + notice_title + ", notice_type=" + notice_type
				+ ", notice_content=" + notice_content + ", notice_datetime=" + notice_datetime + ", notice_kind="
				+ notice_kind + "]";
	}
	
}
