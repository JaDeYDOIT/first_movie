package kr.co.fmos.movie;

import java.util.List;

public interface MovieDAO {
	
	public List<MovieDTO> movieList();

	public int movieinsert(MovieDTO movieDto);

	public MovieDTO movieDetail(String movie_id);

	public List<MoviereviewDTO> moviereviewList(String movie_id);

	public int reviewInsert(MoviereviewDTO dto);
	
	public MovieDTO selectMovieInfoById(String movieID);
	
	public MovieDTO moviecheck(int movie_id);
	
}// class end
	