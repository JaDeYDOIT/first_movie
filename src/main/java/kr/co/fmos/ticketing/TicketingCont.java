package kr.co.fmos.ticketing;

import java.time.format.TextStyle;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.fmos.coupon.UserHavingCouponDAO;
import kr.co.fmos.member.MemberDAO;
import kr.co.fmos.member.MemberDTO;
import kr.co.fmos.movie.MovieDAO;
import kr.co.fmos.movie.MovieDTO;
import kr.co.fmos.payment.PaymentDAO;
import kr.co.fmos.payment.PaymentDTO;
import kr.co.fmos.region.RegionDAO;
import kr.co.fmos.screen.ScreenDAO;
import kr.co.fmos.screen.ScreenDTO;
import kr.co.fmos.screenMovieInfo.ScreenMovieInfoDAO;
import kr.co.fmos.screenMovieInfo.ScreenMovieInfoDTO;
import kr.co.fmos.theaterBranch.TheaterBranchDAO;
import kr.co.fmos.theaterBranch.TheaterBranchDTO;

@Controller
@RequestMapping("/ticketing")
public class TicketingCont {
	public TicketingCont() {
		System.out.println("-----TicketingCont() 객체 생성됨");
	}

	@Autowired
	HttpSession session;
	@Autowired
	RegionDAO regionDao;
	@Autowired
	TheaterBranchDAO theaterBranchDao;
	@Autowired
	MovieDAO movieDao;
	@Autowired
	ScreenMovieInfoDAO screenMovieInfoDao;
	@Autowired
	UserHavingCouponDAO userHavingCouponDao;
	@Autowired
	PaymentDAO paymentDao;
	@Autowired
	ScreenDAO screenDao;
	@Autowired
	MemberDAO memberDao;

	@GetMapping("/personseat")
	public ModelAndView personseat(@RequestParam String screenMovieInfoID, int remainSeatCount) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("screenMovieInfoID", screenMovieInfoID);
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

	@PostMapping("/paysuccess")
	public ModelAndView paysuccess(@RequestParam String screenMovieInfoID, @RequestParam int adult,
			@RequestParam int student, @RequestParam int silver, @RequestParam int price, @RequestParam int payDiscount,
			@RequestParam String payType, @RequestParam String[] selectedSeats) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ticketing/paysuccess");

		// Payment테이블 행 추가 후 그 행 가져오기
		PaymentDTO paymentDto = new PaymentDTO();
		paymentDto.setMember_id((String) session.getAttribute("s_id"));
		paymentDto.setMovie_information_id(screenMovieInfoID);
		paymentDto.setAdult(adult);
		paymentDto.setStudent(student);
		paymentDto.setSilver(silver);
		paymentDto.setPrice(price);
		paymentDto.setPay_discount(payDiscount);
		paymentDto.setPay_type(payType);
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
		mav.addObject("payType", payType);

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
				userHavingCouponDao.userHavingCouponList((String) session.getAttribute("s_id").toString()));
		return mav;
	}// home() end

}
