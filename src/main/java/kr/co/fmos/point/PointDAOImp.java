package kr.co.fmos.point;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PointDAOImp implements PointDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int getMemberTotalPoint(String memberID) {
		return sqlSession.selectOne("point.getMemberTotalPoint", memberID);
	};
}
