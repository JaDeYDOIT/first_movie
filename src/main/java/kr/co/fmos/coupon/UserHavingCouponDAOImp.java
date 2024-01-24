package kr.co.fmos.coupon;

import java.util.List;
import java.util.Map;

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
	public List<Map<String,Object>> getUserHavingCouponWithName(String memberID) {
		return sqlSession.selectList("coupon.getUserHavingCouponWithName", memberID);
	}
}