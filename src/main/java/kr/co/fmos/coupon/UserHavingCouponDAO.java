package kr.co.fmos.coupon;

import java.util.List;
import java.util.Map;

public interface UserHavingCouponDAO {
	public UserHavingCouponDTO mycouponCount(String member_id);

	public List<Map<String,Object>> getUserHavingCoupon(String memberID);
}
