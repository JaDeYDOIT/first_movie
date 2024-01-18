package kr.co.fmos.order;

import kr.co.fmos.cart.CartDTO;

public class OrderDTO extends CartDTO{
	
	private String cart_payment_id;		//VARCHAR(30)   PRIMARY KEY	NOT NULL,
	private String member_id;			//VARCHAR(30)	NOT NULL	COMMENT 최대15글자,
	private long payment_datetime;		//DATETIME		NOT NULL	DEFAULT CURRENT_TIMESTAMP,
	private int payment_method;			//TINYINT 		UNSIGNED	NOT NULL	COMMENT 0: 카드결제, 1: 카카오페이,
	private String payment_status;		//TINYINT 		UNSIGNED	NOT NULL	DEFAULT 0	COMMENT 0: 결제완료, 1: 환불
	private String paymentResponse;
	
	public String getCart_payment_id() {
		return cart_payment_id;
	}
	public void setCart_payment_id(String cart_payment_id) {
		this.cart_payment_id = cart_payment_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public long getPayment_datetime() {
		return payment_datetime;
	}
	public void setPayment_datetime(long payment_datetime) {
		this.payment_datetime = payment_datetime;
	}
	public int getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(int payment_method) {
		this.payment_method = payment_method;
	}
	public String getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}
	
	public String getPaymentResponse() {
		return paymentResponse;
	}
	public void setPaymentResponse(String paymentResponse) {
		this.paymentResponse = paymentResponse;
	}
	@Override
	public String toString() {
		return "OrderDTO [cart_payment_id=" + cart_payment_id + ", member_id=" + member_id + ", payment_datetime="
				+ payment_datetime + ", payment_method=" + payment_method + ", payment_status=" + payment_status
				+ ", paymentResponse=" + paymentResponse + "]";
	}
	
	
}//class end