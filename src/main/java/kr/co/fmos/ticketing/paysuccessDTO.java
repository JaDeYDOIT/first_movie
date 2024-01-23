package kr.co.fmos.ticketing;

public class paysuccessDTO {
	private String payment_id;
	private String member_id;
	private String move_information_id;
	private int adult;
	private int child;
	private int silver;
	private int price;
	private int pay_discount;
	private int pay_type;
	private int refund;
	private int pay_datetime;
	
	public paysuccessDTO() {}

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

	public String getMove_information_id() {
		return move_information_id;
	}

	public void setMove_information_id(String move_information_id) {
		this.move_information_id = move_information_id;
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

	public int getPay_type() {
		return pay_type;
	}

	public void setPay_type(int pay_type) {
		this.pay_type = pay_type;
	}

	public int getRefund() {
		return refund;
	}

	public void setRefund(int refund) {
		this.refund = refund;
	}

	public int getPay_datetime() {
		return pay_datetime;
	}

	public void setPay_datetime(int pay_datetime) {
		this.pay_datetime = pay_datetime;
	}

	@Override
	public String toString() {
		return "paysuccessDTO [payment_id=" + payment_id + ", member_id=" + member_id + ", move_information_id="
				+ move_information_id + ", adult=" + adult + ", child=" + child + ", silver=" + silver + ", price="
				+ price + ", pay_discount=" + pay_discount + ", pay_type=" + pay_type + ", refund=" + refund
				+ ", pay_datetime=" + pay_datetime + "]";
	}
	
}
