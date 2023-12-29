package kr.co.fmos.movie;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import kr.co.fmos.member.MemberDTO;

@Repository
@Controller
public class MovieDAO {

	public MovieDAO() {
		System.out.println("MovieDAO() 객체 생성");
	}

	// sql연결
	@Autowired
	SqlSession sqlSession;

	// 영화 리스트
	public List<MovieDTO> movieList() {
		return sqlSession.selectList("movie.list");
	}// movieList() end

	// 영화 추가
	public int movieinsert(MovieDTO movieDto) {
		return sqlSession.insert("movie.insert", movieDto);
	}// commentInsert() end

	// 영화 상세
	public MovieDTO movieDetail(String movie_id) {
		return sqlSession.selectOne("movie.detail", movie_id);
	}// movieList() end

	// 댓글 리스트
	public List<MoviereviewDTO> moviereviewList(String movie_id) {
		return sqlSession.selectList("movie.review", movie_id);
	}// movieList() end
	
	
	public int reviewInsert(MoviereviewDTO dto) {
		return sqlSession.insert("movie.reviewInsert", dto);
	}//insert() end
	
//	 맵방식 댓글
//	 public Map<String, Object> moviereviewList(String movie_id) {
//			return sqlSession.selectOne("movie.review", movie_id);
//		}// movieList() end

//	// 사용가능하지만 하나의 댓글만 나옴
//	 public MoviereviewDTO moviereviewList(String movie_id) {
//		 return sqlSession.selectOne("movie.review", movie_id);
//	 }// movieList() end

}// class end
