package kr.co.fmos.ticketing;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.fmos.movie.MovieDAO;
import kr.co.fmos.region.RegionDAOImp;
import kr.co.fmos.screenMovieInfo.ScreenMovieInfoDAO;
import kr.co.fmos.theaterBranch.TheaterBranchDAOImp;

@Controller
@RequestMapping("/ticketing")
public class TicketingCon {
	public TicketingCon() {
		System.out.println("-----ticketingCon() 객체 생성됨");
	}
	
	@Autowired
	RegionDAOImp regionDao;
	@Autowired
	TheaterBranchDAOImp theaterBranchDao;
	@Autowired
	MovieDAO movieDao;
	@Autowired
	ScreenMovieInfoDAO screenMovieInfoDao; 
	
	@GetMapping("/personseat")
	public ModelAndView personseat() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("ticketing/personseat");
		return mav;
	}
	
	@GetMapping("/paysuccess")
	public ModelAndView paysuccess() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("ticketing/paysuccess");
		return mav;
	}

	@GetMapping("/schedule")
	public ModelAndView schedule() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("regionList", regionDao.list());
		mav.addObject("theaterBranchList", theaterBranchDao.list());
		mav.addObject("movieList", movieDao.movieList());
		mav.addObject("screenMovieInfoList", screenMovieInfoDao.list());
		mav.setViewName("ticketing/schedule");
		return mav;
	}

	@GetMapping("/orderSettlement")
	public ModelAndView orderSettlement() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ticketing/orderSettlement");
		return mav;
	}
}
