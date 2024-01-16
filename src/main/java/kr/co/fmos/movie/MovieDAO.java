package kr.co.fmos.movie;

import java.util.List;

public interface MovieDAO {
<<<<<<< HEAD
	
	public List<MovieDTO> movieList();

	public int movieinsert(MovieDTO movieDto);

	public MovieDTO movieDetail(String movie_id);

	public List<MoviereviewDTO> moviereviewList(String movie_id);

=======

	// 영화 리스트
	public List<Map<String, Object>> movieList();
	
	// 영화 추가
	public int movieinsert(MovieDTO movieDto);
	
	// 영화 상세
	public MovieDTO movieDetail(String movie_id);
	
	// 댓글 리스트
	public List<MoviereviewDTO> moviereviewList(String movie_id);	
	
>>>>>>> d3787eea5fc2f7cc98b3ba85f7c534cdf751cb42
	public int reviewInsert(MoviereviewDTO dto);
	
	public MovieDTO selectMovieInfoById(String movieID);
	
<<<<<<< HEAD
	public MovieDTO moviecheck(int movie_id);
=======
// TheaterCont에서 호출하는 메서드 시작
	public MovieDTO moviecheck(int movie_id);
// TheaterCont에서 호출하는 메서드 끝
>>>>>>> d3787eea5fc2f7cc98b3ba85f7c534cdf751cb42
	
}// class end
