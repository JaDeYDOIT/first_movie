package kr.co.fmos.screen;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScreenDAOImp implements ScreenDAO {
	public ScreenDAOImp() {
		System.out.println("-----ScreenDAOImp() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public ScreenDTO selectScreenById(String screenID) {
		return sqlSession.selectOne("screen.selectScreenById", screenID);
	}// selectScreenById() end
}
