package theater;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kr.co.fmos.movie.MovieDTO;

@Repository
public class TheaterDAO {

	// sql연결
	@Autowired
	SqlSession sqlSession;

	private JdbcTemplate jt;

	private StringBuilder sql = null;

	public TheaterDAO() {
		System.out.println("-----TheaterDAO() end");
	}// TheaterDAO() end

	public List<TheaterregionDTO> regionlist(String region_id) {
		return sqlSession.selectList("theater.regionlist", region_id);
	}

	public List<Screen_movie_informationDTO> branchlist(String region_id ) {
		return sqlSession.selectList("theater.branchlist", region_id);
	}

	// 지역 -> 지점 ajax
	public List<TheaterbranchDTO> checkList(String check) {
		return sqlSession.selectList("theater.checkList", check);
	}

	public List<String> screenlist(Screen_movie_informationDTO dto) {
		return sqlSession.selectList("theater.screenlist", dto);
	}

	public TheaterbranchDTO branchimg(int branch_id) {
		return sqlSession.selectOne("theater.branchimg", branch_id);
	}
	
	// write 리스트
	public List<Map<String, Object>> writelist() {
		return sqlSession.selectList("theater.writelist");
	}
	// write ajax 리스트
	public Map<String, Object> writeajaxlist(int movie_id) {
		return sqlSession.selectOne("theater.writeajaxlist", movie_id);
	}

	public int theaterinsert(Map<String, Object> map) {
		return sqlSession.insert("theater.theaterinsert", map);
	}

	public List<Integer> screencount(int branch_id) {
		return sqlSession.selectList("theater.screencount", branch_id);
	}
	
	public List<Screen_movie_informationDTO> smitime(int branch_id) {
		return sqlSession.selectList("theater.smitime", branch_id);
	}
	
	public List<Screen_movie_informationDTO> timecheck() {
		return sqlSession.selectList("theater.timecheck");
	}
	
	// write 지점 리스트
	public List<TheaterbranchDTO> writebranchlist() {
		return sqlSession.selectList("theater.writebranchlist");
	}
	

	// write ajax 상영관 리스트
	public List<ScreenDTO> screenajaxlist(int branch_id) {
		return sqlSession.selectList("theater.screenajaxlist", branch_id);
	}

	// write 상영관 영화정보 인설트
	public int SMIinsert(Screen_movie_informationDTO dto) {
		return sqlSession.insert("theater.SMIinsert", dto);
	}

	//customerCont에서 사용 시작
	public List<TheaterregionDTO> region_customer() {
		return sqlSession.selectList("theater.region_customer");
	}
	
	public List<Map<String, Object>> movieselectbox(int screen_id) {
		return sqlSession.selectList("theater.movieselectbox", screen_id);
	}
	//customerCont에서 사용 끝
	
	
//	write 리스트
	public List<Map<String, Object>> writemovielist() {
		return sqlSession.selectList("theater.moviewritelist");
	}

	// write ajax 리스트
	public Map<String, Object> writelist(Map<String, Object> writelist) {
		return sqlSession.selectOne("theater.writelist", writelist);
	}

}// class end