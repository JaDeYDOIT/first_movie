package kr.co.fmos.coupon;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserHavingCouponDAO {
	public List<UserHavingCouponDTO> userHavingCouponList(String memberID);
	
//	mypage 쿠폰 갯수
	public UserHavingCouponDTO mycouponCount(String member_id);
}
