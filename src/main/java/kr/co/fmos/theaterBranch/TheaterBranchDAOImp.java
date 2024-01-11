package kr.co.fmos.theaterBranch;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TheaterBranchDAOImp implements TheaterBranchDAO {
	public TheaterBranchDAOImp() {
		System.out.println("-----theaterBranchDAO() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<TheaterBranchDTO> list() {
		return sqlSession.selectList("theaterBranch.list");
	}// list() end

	@Override
	public TheaterBranchDTO selectTheaterBranchById(String branchID) {
		return sqlSession.selectOne("theaterBranch.selectTheaterBranchById", branchID);
	}// selectTheaterBranchById() end
}
