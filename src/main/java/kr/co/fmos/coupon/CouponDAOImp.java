package kr.co.fmos.coupon;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CouponDAOImp implements CouponDAO {
	public CouponDAOImp() {
		System.out.println("-----CouponDAOImp() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public CouponDTO selectCouponById(String couponID) {
		return sqlSession.selectOne("coupon.selectCouponById", couponID);
	}
	
//	mypage 쿠폰 리스트
	@Override
	public List<Map<String, Object>> mycouponlist(String member_id){
		return sqlSession.selectList("coupon.mycouponlist", member_id);
	}
}