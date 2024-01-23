package kr.co.fmos.screen;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/screen")
public class ScreenCont {
	public ScreenCont() {
		System.out.println("-----ScreenCont() 객체 생성됨");
	}

	@Autowired
	ScreenDAO screenDao;

	@PostMapping("/selectScreenById")
	@ResponseBody
	public ScreenDTO selectScreenById(@RequestBody String screenID) {
		return screenDao.selectScreenById(screenID);
	}
}
