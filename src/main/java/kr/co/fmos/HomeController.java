package kr.co.fmos;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
    
	public HomeController() {
        System.out.println("-----HomeController()객체 생성됨");
    }
    
    //first movie 프로젝트의 첫페이지 호출
    //-> http://localhost:9095/main    
	@RequestMapping("/main")
	public ModelAndView home(HttpSession session ) {
		if(session.getAttribute("s_id") == null || session.getAttribute("s_pw") == null ||
		session.getAttribute("s_id").equals("") || session.getAttribute("s_pw").equals("")) 
		{
			String s_id = "guest";
			String s_pw = "guest";
			session.setAttribute("s_id", s_id);
			session.setAttribute("s_pw", s_pw);
		}
	    
     ModelAndView mav = new ModelAndView();
     //redirect : 등록한 명령어를 호출하 수 
     mav.setViewName("main");
     return mav;
	}//home() end
	
}//class end
