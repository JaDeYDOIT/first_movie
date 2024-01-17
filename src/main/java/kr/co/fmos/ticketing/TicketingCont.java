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
	public ModelAndView personseat(@RequestParam String screenMovieInfoID, int remainSeatCount) {
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

<<<<<<< HEAD
	@PostMapping("/paysuccess")
	public ModelAndView paysuccess(@RequestParam String payment_id, @RequestParam String screenMovieInfoID, @RequestParam int adult,
			@RequestParam int student, @RequestParam int silver, @RequestParam int price, @RequestParam int payDiscount,
			@RequestParam String[] selectedSeats) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ticketing/paysuccess");

		// Payment테이블 행 추가 후 그 행 가져오기
		PaymentDTO paymentDto = new PaymentDTO();
		paymentDto.setPayment_id(payment_id);
		paymentDto.setMember_id((String) session.getAttribute("s_id"));
		paymentDto.setMovie_information_id(screenMovieInfoID);
		paymentDto.setAdult(adult);
		paymentDto.setStudent(student);
		paymentDto.setSilver(silver);
		paymentDto.setPrice(price);
		paymentDto.setPay_discount(payDiscount);
		paymentDto.setRefund(1);
		PaymentDTO inputPaymentDto = paymentDao.insertAndReturnWithId(paymentDto);

		// 정보 불러오기
		ScreenMovieInfoDTO screenMovieInfo = screenMovieInfoDao.selectScreenMovieInfoById(screenMovieInfoID);
		MovieDTO movie = movieDao.selectMovieInfoById(String.valueOf(screenMovieInfo.getMovie_id()));
		TheaterBranchDTO theaterBranch = theaterBranchDao
				.selectTheaterBranchById(String.valueOf(screenMovieInfo.getBranch_id()));
		ScreenDTO screen = screenDao.selectScreenById(String.valueOf(screenMovieInfo.getScreen_id()));
		MemberDTO member = memberDao.selectMemberById((String) session.getAttribute("s_id"));

		mav.addObject("memberName", member.getMember_name());
		mav.addObject("paymentId", inputPaymentDto.getPayment_id());
		mav.addObject("movieImage", movie.getMovie_image());
		mav.addObject("movieShowingDate", screenMovieInfo.getMovie_showing_date());
		mav.addObject("dayOfWeek", screenMovieInfo.getMovie_showing_date().getDayOfWeek()
				.getDisplayName(TextStyle.SHORT, Locale.getDefault()));
		mav.addObject("movieShowingTime", screenMovieInfo.getMovie_showing_time());
		mav.addObject("movieEndTime",
				screenMovieInfo.getMovie_showing_time().plusMinutes(movie.getMovie_running_time()));
		mav.addObject("theaterBranchName", theaterBranch.getBranch_name());
		mav.addObject("screenLocation", screen.getScreen_location());
		mav.addObject("adult", adult);
		mav.addObject("student", student);
		mav.addObject("silver", silver);
		mav.addObject("selectedSeats", selectedSeats);
		mav.addObject("price", price);
		mav.addObject("payDiscount", payDiscount);

		return mav;
	}

=======
>>>>>>> 49fb42d715485f568cfa9ec545af0462cc6ec645
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
	public ModelAndView orderSettlement(HttpSession session, @RequestParam int screenMovieInfoID, String[] selectedSeats, int totalPrice) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ticketing/orderSettlement");
		session.setAttribute("s_id", "sungwoo");
		mav.addObject("userHavingCouponList", userHavingCouponDao.userHavingCouponList((String) session.getAttribute("s_id")));
		return mav;
	}// home() end
	
	
}
