package kr.co.fmos.coupon;

import java.util.List;
import java.util.Map;

public interface UserHavingCouponDAO {
	public List<Map<String,Object>> getUserHavingCouponWithName(String memberID);
}
