package kr.co.fmos.theater;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TheaterDAO {

	// sql연결	
	@Autowired
	SqlSession sqlSession;
	
	private JdbcTemplate jt;
	
	private StringBuilder sql = null;
	
	public TheaterDAO() {
		System.out.println("-----TheaterDAO() end");
	}//TheaterDAO() end
	
	
	public List<TheaterregionDTO> regionlist(String region_id) {
		return sqlSession.selectList("theater.regionlist", region_id);
	}
	public List<TheaterbranchDTO> branchlist(String region_id) {
		return sqlSession.selectList("theater.branchlist", region_id);
	}
//	public List<TheaterbranchDTO> screenlist2(int branch_id) {
//		return sqlSession.selectList("theater.screenlist2", branch_id);
//	}

	public List<Map<String, Object>> screenlist(int branch_id) {
		return sqlSession.selectList("theater.screenlist", branch_id);
	}
	
	public TheaterbranchDTO branchimg(int branch_id) {
		return sqlSession.selectOne("theater.branchimg", branch_id);
	}
	
	
	
}//class end