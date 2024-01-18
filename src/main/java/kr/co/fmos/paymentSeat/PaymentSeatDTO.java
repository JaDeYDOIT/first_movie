package kr.co.fmos.paymentSeat;

public class PaymentSeatDTO {
	private int payment_seat_id;
	private String payment_id;
	private int seat_x;
	private int seat_y;

	public int getPayment_seat_id() {
		return payment_seat_id;
	}

	public void setPayment_seat_id(int payment_seat_id) {
		this.payment_seat_id = payment_seat_id;
	}

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public int getSeat_x() {
		return seat_x;
	}

	public void setSeat_x(int seat_x) {
		this.seat_x = seat_x;
	}

	public int getSeat_y() {
		return seat_y;
	}

	public void setSeat_y(int seat_y) {
		this.seat_y = seat_y;
	}

	@Override
	public String toString() {
		return "paymentSeatDTO [payment_seat_id=" + payment_seat_id + ", payment_id=" + payment_id + ", seat_x="
				+ seat_x + ", seat_y=" + seat_y + "]";
	}
}
