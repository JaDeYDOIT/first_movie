package kr.co.fmos.ticketing;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.fmos.coupon.UserHavingCouponDAO;
import kr.co.fmos.movie.MovieDAOImp;
import kr.co.fmos.payment.PaymentDAO;
import kr.co.fmos.payment.PaymentDTO;
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
	private HttpSession session;
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
	@Autowired
	PaymentDAO paymentDao;

	@GetMapping("/personseat")
	public ModelAndView personseat(@RequestParam int screenMovieInfoID, int remainSeatCount) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("screenMovieInfo", screenMovieInfoDao.detail(screenMovieInfoID));
		mav.addObject("remainSeatCount", remainSeatCount);
		mav.setViewName("ticketing/personseat");
		return mav;
	}
	
	@GetMapping("/paysuccess")
	public ModelAndView getPaysuccess() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ticketing/paysuccess");
		return mav;
	}

	@PostMapping("/paysuccess")
	public ModelAndView paysuccess(@RequestParam String screenMovieInfoID, @RequestParam int adult,
			@RequestParam int student, @RequestParam int silver, @RequestParam int price, @RequestParam int payDiscount,
			@RequestParam String pay_type) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ticketing/paysuccess");

		// Payment테이블 행 추가 후 그 행 가져오기
		PaymentDTO paymentDto = new PaymentDTO();
		paymentDto.setMember_id((String) session.getAttribute("s_id"));
		paymentDto.setMovie_information_id(screenMovieInfoID);
		paymentDto.setAdult(adult);
		paymentDto.setStudent(student);
		paymentDto.setPrice(price);
		paymentDto.setPay_discount(payDiscount);
		paymentDto.setPay_type(pay_type);
		paymentDto.setRefund(1);
		PaymentDTO inputPaymentDto = paymentDao.insertAndWithReturnID(paymentDto);
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
		session.setAttribute("s_id", "sungwoo");
		mav.addObject("userHavingCouponList",
				userHavingCouponDao.userHavingCouponList((String) session.getAttribute("s_id")));
		return mav;
	}// home() end
	
	
}
