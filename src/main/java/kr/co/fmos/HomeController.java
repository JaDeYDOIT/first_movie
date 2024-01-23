package kr.co.fmos;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.fmos.customer.NoticeDAO;
import kr.co.fmos.movie.MovieDAO;

@Controller
public class HomeController {
    
    @Autowired
	private MovieDAO movieDao;
    @Autowired
	private NoticeDAO noticeDao;
    
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
			String s_pw = "";
			session.setAttribute("s_id", s_id);
		}
		
     ModelAndView mav = new ModelAndView();
     mav.addObject("sessionTimeoutInSeconds", session.getMaxInactiveInterval());
     mav.addObject("movie", movieDao.movieList());
     mav.addObject("FAQlist", noticeDao.mainfaq());
     mav.addObject("noticelist", noticeDao.mainnotice());
     mav.setViewName("main");
     return mav;
	}//home() end
	
}//class end
