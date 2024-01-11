package kr.co.fmos.movie;

import java.util.List;

public interface MovieDAO {
	public List<MovieDTO> movieList();

	public int movieinsert(MovieDTO movieDto);

	public MovieDTO movieDetail(String movie_id);

	public List<MoviereviewDTO> moviereviewList(String movie_id);

	public int reviewInsert(MoviereviewDTO dto);

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
	
// TheaterCont에서 호출하는 메서드 시작
	public MovieDTO moviecheck(int movie_id) {
		return sqlSession.selectOne("movie.moviecheck", movie_id);
	}// movieList() end
// TheaterCont에서 호출하는 메서드 끝

	public MovieDTO selectMovieInfoById(String movieID);
}// class end
