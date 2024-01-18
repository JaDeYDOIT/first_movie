package kr.co.fmos.coupon;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserHavingCouponDAOImp implements UserHavingCouponDAO {
	public UserHavingCouponDAOImp() {
		System.out.println("-----UserHavingCouponDAOImp() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<UserHavingCouponDTO> userHavingCouponList(String memberID) {
		return sqlSession.selectList("coupon.userHavingCouponList", memberID);
	}
//	mypage 쿠폰 갯수
	@Override
	public UserHavingCouponDTO mycouponCount(String member_id){
		return sqlSession.selectOne("coupon.mycouponCount", member_id);
	}
}