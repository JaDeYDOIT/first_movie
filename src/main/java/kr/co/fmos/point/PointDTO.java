package kr.co.fmos.point;

import java.time.LocalDateTime;

public class PointDTO {
	private int point_id;
	private String payment_id;
	private String member_id;
	private int point_history;
	private LocalDateTime point_date;

	public int getPoint_id() {
		return point_id;
	}

	public void setPoint_id(int point_id) {
		this.point_id = point_id;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getPoint_history() {
		return point_history;
	}

	public void setPoint_history(int point_history) {
		this.point_history = point_history;
	}

	public LocalDateTime getPoint_date() {
		return point_date;
	}

	public void setPoint_date(LocalDateTime point_date) {
		this.point_date = point_date;
	}
}
