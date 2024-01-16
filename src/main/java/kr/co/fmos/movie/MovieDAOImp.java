package kr.co.fmos.movie;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import kr.co.fmos.member.MemberDTO;

@Repository
public class MovieDAOImp implements MovieDAO {

	public MovieDAOImp() {
		System.out.println("-----MovieDAOImp() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	// 영화 리스트
	@Override
	public List<MovieDTO> movieList() {
		return sqlSession.selectList("movie.list");
	}// movieList() end

	// 영화 추가
	@Override
	public int movieinsert(MovieDTO movieDto) {
		return sqlSession.insert("movie.insert", movieDto);
	}// commentInsert() end

	// 영화 상세
	@Override
	public MovieDTO movieDetail(String movie_id) {
		return sqlSession.selectOne("movie.detail", movie_id);
	}// movieList() end

	// 댓글 리스트
	@Override
	public List<MoviereviewDTO> moviereviewList(String movie_id) {
		return sqlSession.selectList("movie.review", movie_id);
	}// movieList() end

	@Override
	public int reviewInsert(MoviereviewDTO dto) {
		return sqlSession.insert("movie.reviewInsert", dto);
	}// insert() end

	@Override
	public MovieDTO selectMovieInfoById(String movieID) {
		return sqlSession.selectOne("movie.selectMovieInfoById", movieID);
	}

	// 영화 리스트
	
//	 맵방식 댓글
//	 public Map<String, Object> moviereviewList(String movie_id) {
//			return sqlSession.selectOne("movie.review", movie_id);
//		}// movieList() end

//	// 사용가능하지만 하나의 댓글만 나옴
//	 public MoviereviewDTO moviereviewList(String movie_id) {
//		 return sqlSession.selectOne("movie.review", movie_id);
//	 }// movieList() end
	
// TheaterCont에서 호출하는 메서드 시작
	public MovieDTO moviecheck(int movie_id) {
		return sqlSession.selectOne("movie.moviecheck", movie_id);
	}// movieList() end
// TheaterCont에서 호출하는 메서드 끝
<<<<<<< HEAD
//	 맵방식 댓글
//	 public Map<String, Object> moviereviewList(String movie_id) {
//			return sqlSession.selectOne("movie.review", movie_id);
//		}// movieList() end

//	// 사용가능하지만 하나의 댓글만 나옴
//	 public MoviereviewDTO moviereviewList(String movie_id) {
//		 return sqlSession.selectOne("movie.review", movie_id);
//	 }// movieList() end
=======
>>>>>>> d3787eea5fc2f7cc98b3ba85f7c534cdf751cb42

}
// class end
