package kr.co.fmos.point;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PointDAOImp implements PointDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<PointDTO> selectMemberPoint(String memberID) {
		return sqlSession.selectList("point.selectMemberPoint", memberID);
	};
}
