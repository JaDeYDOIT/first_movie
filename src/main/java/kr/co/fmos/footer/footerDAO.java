package kr.co.fmos.footer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.fmos.theater.TheaterregionDTO;

@Controller
public class footerDAO {

	// sql연결
	@Autowired
	SqlSession sqlSession;

	public List<TheaterregionDTO> regionlist() {
		return sqlSession.selectList("theater.regionlist");
	}
	
	public List<TheaterregionDTO> branchlist(String ragion_id) {
		return sqlSession.selectList("theater.checkList", ragion_id);
	}

}// footerDAO end()
