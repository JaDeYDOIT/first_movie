package kr.co.fmos.coupon;

import java.time.LocalDateTime;

public class UserHavingCouponDTO {
	private int having_coupon_id;
	private String member_id;
	private int coupon_id;
	private LocalDateTime coupon_create_date;
	private LocalDateTime coupon_expiration_date;

	public int getHaving_coupon_id() {
		return having_coupon_id;
	}

	public void setHaving_coupon_id(int having_coupon_id) {
		this.having_coupon_id = having_coupon_id;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getCoupon_id() {
		return coupon_id;
	}

	public void setCoupon_id(int coupon_id) {
		this.coupon_id = coupon_id;
	}

	public LocalDateTime getCoupon_create_date() {
		return coupon_create_date;
	}

	public void setCoupon_create_date(LocalDateTime coupon_create_date) {
		this.coupon_create_date = coupon_create_date;
	}

	public LocalDateTime getCoupon_expiration_date() {
		return coupon_expiration_date;
	}

	public void setCoupon_expiration_date(LocalDateTime coupon_expiration_date) {
		this.coupon_expiration_date = coupon_expiration_date;
	}
}
