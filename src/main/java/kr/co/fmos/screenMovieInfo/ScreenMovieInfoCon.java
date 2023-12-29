package kr.co.fmos.screenMovieInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/screenMovieInfo")
public class ScreenMovieInfoCon {
	public ScreenMovieInfoCon() {
		System.out.println("-----ScreenMovieInfoCon() 객체 생성됨");
	}
}
