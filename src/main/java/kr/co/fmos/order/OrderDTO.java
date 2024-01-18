package kr.co.fmos.order;

import kr.co.fmos.member.MemberDTO;

public class OrderDTO extends MemberDTO{
	private int cart_payment_id;			//INT UNSIGNED  AUTO_INCREMENT PRIMARY KEY	NOT NULL,
	private String member_id;				//VARCHAR(30)	NOT NULL	COMMENT 
	private String cart_payment_datetime;	//DATETIME		NOT NULL,
	private int cart_payment_method;		//TINYINT 		UNSIGNED	NOT NULL	DEFAULT CURRENT_TIMESTAMP
	private String cart_payment_status;		//VARCHAR(30)	NOT NULL	COMMENT
	
	public int getCart_payment_id() {
		return cart_payment_id;
	}
	public void setCart_payment_id(int cart_payment_id) {
		this.cart_payment_id = cart_payment_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getCart_payment_datetime() {
		return cart_payment_datetime;
	}
	public void setCart_payment_datetime(String cart_payment_datetime) {
		this.cart_payment_datetime = cart_payment_datetime;
	}
	public int getCart_payment_method() {
		return cart_payment_method;
	}
	public void setCart_payment_method(int cart_payment_method) {
		this.cart_payment_method = cart_payment_method;
	}
	public String getCart_payment_status() {
		return cart_payment_status;
	}
	public void setCart_payment_status(String cart_payment_status) {
		this.cart_payment_status = cart_payment_status;
	}
	
	@Override
	public String toString() {
		return "OrderDTO [cart_payment_id=" + cart_payment_id + ", member_id=" + member_id + ", cart_payment_datetime="
				+ cart_payment_datetime + ", cart_payment_method=" + cart_payment_method + ", cart_payment_status="
				+ cart_payment_status + "]";
	}
}//class end