package kr.co.fmos.coupon;

import java.util.List;
import java.util.Map;

public interface CouponDAO {
	public CouponDTO selectCouponById(String couponID);
	
//	mypage 쿠폰 리스트
	public List<Map<String, Object>> mycouponlist(String member_id);
}
