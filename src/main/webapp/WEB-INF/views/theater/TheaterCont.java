package kr.co.fmos.theater;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/theater")
public class TheaterCont {
	
	@Autowired
	TheaterDAO dao;
	
	public TheaterCont() {
		System.out.println("-----TheaterCont()객체 생성됨");
	}//TheaterCont() end
	
	@RequestMapping("/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("theater/list");
		return mav;
	}//list() end
	

}//class end