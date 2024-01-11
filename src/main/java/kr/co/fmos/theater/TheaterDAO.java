package kr.co.fmos.theater;

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

	public List<TheaterbranchDTO> branchlist(String region_id) {
		return sqlSession.selectList("theater.branchlist", region_id);
	}

	// 지역 -> 지점 ajax
	public List<TheaterbranchDTO> checkList(String check) {
		return sqlSession.selectList("theater.checkList", check);
	}

	public List<String> screenlist(int branch_id) {
		return sqlSession.selectList("theater.screenlist", branch_id);
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

	public int screeninsert(Map<String, Object> map) {
		return sqlSession.insert("theater.screeninsert", map);
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

//	// write 상영관 리스트
//	public List<ScreenDTO> writescreenlist() {
//		return sqlSession.selectList("theater.writescreenlist");
//	}
	// write ajax 상영관 리스트
	public List<ScreenDTO> screenajaxlist(int branch_id) {
		return sqlSession.selectList("theater.screenajaxlist", branch_id);
	}

	// write 상영관 영화정보 인설트
	public int SMIinsert(Screen_movie_informationDTO dto) {
		return sqlSession.insert("theater.SMIinsert", dto);
	}
	
//	write 리스트
	public List<Map<String, Object>> writemovielist() {
		return sqlSession.selectList("theater.moviewritelist");
	}

	// write ajax 리스트
	public Map<String, Object> writelist(Map<String, Object> writelist) {
		return sqlSession.selectOne("theater.writelist", writelist);
	}
	
	//customerCont에서 사용 시작
		public List<TheaterregionDTO> region_customer() {
			return sqlSession.selectList("theater.region_customer");
		}
		
		public List<Map<String, Object>> movieselectbox(int screen_id) {
			return sqlSession.selectList("theater.movieselectbox", screen_id);
		}
		
		public List<Map<String, Object>> branchselectbox(String region_id) {
			return sqlSession.selectList("theater.branchselectbox", region_id);
		}
		
		public List<Map<String, Object>> screenselectbox(int branch_id) {
			return sqlSession.selectList("theater.screenselectbox", branch_id);
		}
	
	//대관문의 데이터 문자열로 가져오기 시작
		public String Rental_inquiry_area(String rental_inquiry_area) {
			return sqlSession.selectOne("theater.Rental_inquiry_area", rental_inquiry_area);
		}
		
		public String rental_inquiry_place(int rental_inquiry_place) {
			return sqlSession.selectOne("theater.rental_inquiry_place", rental_inquiry_place);
		}
		
		public String rental_inquiry_theater(int rental_inquiry_theater) {
			return sqlSession.selectOne("theater.rental_inquiry_theater", rental_inquiry_theater);
		}
		
		public String rental_inquiry_movie(int rental_inquiry_movie) {
			return sqlSession.selectOne("theater.rental_inquiry_movie", rental_inquiry_movie);
		}
	//대관문의 데이터 문자열로 가져오기 시작
		//customerCont에서 사용 끝
}// class end