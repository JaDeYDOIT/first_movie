package kr.co.fmos.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.fmos.coupon.CouponDAO;
import kr.co.fmos.coupon.UserHavingCouponDAO;
import kr.co.fmos.customer.InquireDAO;
import kr.co.fmos.customer.InquireDTO;
import kr.co.fmos.member.MemberDAO;
import kr.co.fmos.member.MemberDTO;
import kr.co.fmos.payment.PaymentDAO;
import kr.co.fmos.payment.PaymentDTO;

@Controller
@RequestMapping("/mypage")
public class MypageCont {
	@Autowired
	private MemberDAO memberDao;
	@Autowired
	private InquireDAO inquireDao;
	@Autowired
	private PaymentDAO paymentDao;
	@Autowired
	private CouponDAO couponDao;
	@Autowired
	private UserHavingCouponDAO userhavingcouponDao;

	// 결제내역
	@GetMapping("/payment_detail.do")
	public ModelAndView Payment_detail(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String s_id = (String)session.getAttribute("s_id");
		System.out.println(s_id);
		if ("guest".equals(s_id)) {
			mav.addObject("message", "로그인해짜샤");
			System.out.println("로그인해짜샤");
		}
		mav.addObject("mypage", memberDao.mypage(s_id));
		mav.addObject("payment", paymentDao.mypagelist(s_id));
//		쿠폰갯수
		mav.addObject("mycouponCount", userhavingcouponDao.mycouponCount(s_id));
		return mav;
	}// Payment_detail() end

	// 쿠폰
	@GetMapping("/coupon.do")
	public ModelAndView coupon(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String s_id = (String) session.getAttribute("s_id");
		mav.addObject("mypage", memberDao.mypage(s_id));
		mav.addObject("mycoupon", couponDao.mycouponlist(s_id));
//		쿠폰갯수
		mav.addObject("mycouponCount", userhavingcouponDao.mycouponCount(s_id));
		return mav;
	}// coupon() end

	// 내 문의
	@GetMapping("/inquiry.do")
	public ModelAndView inquiry(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String s_id = (String) session.getAttribute("s_id");
		mav.addObject("mypage", memberDao.mypage(s_id));
		mav.addObject("myinquiry", inquireDao.memberinquirelist(s_id));
//		쿠폰갯수
		mav.addObject("mycouponCount", userhavingcouponDao.mycouponCount(s_id));
		return mav;
	}// inquiry() end

	
	// 회원수정 관련 시작//
	@GetMapping("/memberModify.do")
	public ModelAndView memberㅣist(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String s_id = (String) session.getAttribute("s_id");
		MemberDTO dto = memberDao.memberlist(s_id);
		mav.addObject("mypage", memberDao.mypage(s_id));
		mav.addObject("memberlist", dto);
		mav.setViewName("mypage/memberModify");
//		쿠폰갯수
		mav.addObject("mycouponCount", userhavingcouponDao.mycouponCount(s_id));
		return mav;
	}// memberModify() end

	@PostMapping("/memberModify.do")
	public ModelAndView memberModify(HttpSession session) {
		String s_id = (String) session.getAttribute("s_id");
		ModelAndView mav = new ModelAndView();
		mav.addObject("s_id", s_id);

		MemberDTO dto = memberDao.memberlist(s_id);
		System.out.println(dto);
		mav.addObject("memberlist", dto);
		mav.setViewName("/member/member");
		return mav;
	}

	@PostMapping("/memberupdate")
	public String memberupdate(MemberDTO dto, @RequestParam String member_id, @RequestParam String member_pw,
			@RequestParam String member_phone) {
		MemberDTO update = new MemberDTO();
		update.setMember_id(member_id);
		update.setMember_pw(member_pw);
		update.setMember_phone(member_phone);
		memberDao.memberupdate(dto);
		return "redirect:/main";
	}// memberupdate() end
		// 회원수정 끝

	// 회원탈퇴 리스트
	@GetMapping("/withdrawal.do")
	public ModelAndView withdrawal(HttpSession session) {

		ModelAndView mav = new ModelAndView();
		String s_id = (String) session.getAttribute("s_id");
		mav.addObject("mypage", memberDao.mypage(s_id));
//		쿠폰갯수
		mav.addObject("mycouponCount", userhavingcouponDao.mycouponCount(s_id));
//		System.out.println(s_id);
		return mav;

	}// withdrawal() end

	// 회원탈퇴 확인
	@GetMapping("/memberdelete.do")
	public ModelAndView withdrawal(HttpSession session, String member_pw) {

		System.out.println(member_pw);
		ModelAndView mav = new ModelAndView();
		String s_id = (String) session.getAttribute("s_id");
		session.setAttribute("s_id", "guest");
		session.removeAttribute("s_pw");
		mav.addObject("mypage", memberDao.memberdelete(member_pw));
		mav.setViewName("/main");
		return mav;
	}// withdrawal() end
//
}// MypageCont class end
