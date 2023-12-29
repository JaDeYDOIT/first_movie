package kr.co.fmos.screenMovieInfo;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ScreenMovieInfoDAOImp implements ScreenMovieInfoDAO{
	
	public ScreenMovieInfoDAOImp() {
		System.out.println("-----screenMovieInfoDAOImp() 객체 생성됨");
	}
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ScreenMovieInfoDTO> list(){
		return sqlSession.selectList("screenMovieInfo.list");
	}//list() end
}
