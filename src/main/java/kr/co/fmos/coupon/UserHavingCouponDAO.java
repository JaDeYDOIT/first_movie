package kr.co.fmos.coupon;

import java.util.List;

public interface UserHavingCouponDAO {
	public List<UserHavingCouponDTO> userHavingCouponList(String memberID);
}
