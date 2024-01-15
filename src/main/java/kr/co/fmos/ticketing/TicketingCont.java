package kr.co.fmos.ticketing;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.fmos.coupon.UserHavingCouponDAO;
import kr.co.fmos.movie.MovieDAOImp;
import kr.co.fmos.region.RegionDAOImp;
import kr.co.fmos.screenMovieInfo.ScreenMovieInfoDAO;
import kr.co.fmos.theaterBranch.TheaterBranchDAOImp;

@Controller
@RequestMapping("/ticketing")
public class TicketingCont {
	public TicketingCont() {
		System.out.println("-----TicketingCont() 객체 생성됨");
	}

	@Autowired
	RegionDAOImp regionDao;
	@Autowired
	TheaterBranchDAOImp theaterBranchDao;
	@Autowired
	MovieDAOImp movieDao;
	@Autowired
	ScreenMovieInfoDAO screenMovieInfoDao;
	@Autowired
	UserHavingCouponDAO userHavingCouponDao;
	
	@GetMapping("/personseat")
	public ModelAndView personseat(@RequestParam int screenMovieInfoID, int remainSeatCount) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("screenMovieInfo", screenMovieInfoDao.detail(screenMovieInfoID));
		mav.addObject("remainSeatCount", remainSeatCount);
		mav.setViewName("ticketing/personseat");
		return mav;
	}
	
	@GetMapping("/paysuccess")
	public ModelAndView paysuccess() {
		ModelAndView mav = new ModelAndView();
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
	public ModelAndView orderSettlement(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ticketing/orderSettlement");
		session.setAttribute("s_id", "sungwoo");
		mav.addObject("userHavingCouponList",
				userHavingCouponDao.userHavingCouponList((String) session.getAttribute("s_id")));
		return mav;
	}// home() end
	
	
}
