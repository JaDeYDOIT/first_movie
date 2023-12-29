package kr.co.fmos.payment;

import java.time.LocalDateTime;


public class PaymentDTO {
	private String payment_id;
	private String member_id;
	private String movie_information_id;
	private int adult;
	private int child;
	private int silver;
	private int price;
	private int pay_discount;
	private String pay_type;
	private int refund;
	private LocalDateTime pay_datetime;
	
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
	public String getMovie_information_id() {
		return movie_information_id;
	}
	public void setMovie_information_id(String movie_information_id) {
		this.movie_information_id = movie_information_id;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public int getSilver() {
		return silver;
	}
	public void setSilver(int silver) {
		this.silver = silver;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPay_discount() {
		return pay_discount;
	}
	public void setPay_discount(int pay_discount) {
		this.pay_discount = pay_discount;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public int getRefund() {
		return refund;
	}
	public void setRefund(int refund) {
		this.refund = refund;
	}
	public LocalDateTime getPay_datetime() {
		return pay_datetime;
	}
	public void setPay_datetime(LocalDateTime pay_datetime) {
		this.pay_datetime = pay_datetime;
	}
}
