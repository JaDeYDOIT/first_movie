package kr.co.fmos.screenMovieInfo;

import java.util.List;
import java.util.Map;

public interface ScreenMovieInfoDAO {
	public List<ScreenMovieInfoDTO> list();

	public ScreenMovieInfoDTO selectScreenMovieInfoById(String screenMovieInfoID);
	
	public List<ScreenMovieInfoDTO> showingTime(Map<String, Object> map);

	public Map<String, Object> detail(int screenMovieInfoID);

	public List<Map<String, Object>> emptySeats(String screenMovieInfoID);
}