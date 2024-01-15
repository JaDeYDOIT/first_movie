package kr.co.fmos.screenMovieInfo;

import java.util.List;
import java.util.Map;

public interface ScreenMovieInfoDAO {
	public List<ScreenMovieInfoDTO> list();

	public List<ScreenMovieInfoDTO> showingTime(Map<String, Object> map);
}