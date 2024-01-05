package kr.co.fmos.screenMovieInfo;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/screenMovieInfo")
public class ScreenMovieInfoCont {
	public ScreenMovieInfoCont() {
		System.out.println("-----ScreenMovieInfoCont() 객체 생성됨");
	}

	@Autowired
	ScreenMovieInfoDAO screenMovieInfoDao;

	@PostMapping("/showingTime")
	@ResponseBody
	public List<ScreenMovieInfoDTO> showingTime(@RequestBody Map<String, Object> map) {
		return screenMovieInfoDao.showingTime(map);
	}
}