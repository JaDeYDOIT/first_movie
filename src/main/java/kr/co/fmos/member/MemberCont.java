package kr.co.fmos.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/member")
public class MemberCont {

	public MemberCont() {
		System.out.println("-----MemberCont()객체생성됨");
	}// end

	@Autowired
	private MemberDAO memberDao;

	@GetMapping("/login.do")
	public String list() {
		return "/member/login";
	}// list() end

	@PostMapping("/login.do")
	public ModelAndView login(HttpServletResponse response, MemberDTO dto, HttpSession session,
			@RequestParam(name = "idcheckbox", defaultValue = "2") String idcheckbox, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		int check = memberDao.membercheck(dto);

		if (check == 1) {
			if (idcheckbox.equals("1")) {
				Cookie idcookie = new Cookie("c_id", dto.getMember_id());
				Cookie chcookie = new Cookie("idcheck", idcheckbox);
				idcookie.setMaxAge(Integer.MAX_VALUE);
				chcookie.setMaxAge(Integer.MAX_VALUE);
				response.addCookie(idcookie);
				response.addCookie(chcookie);
			} else {
				Cookie idcookie = new Cookie("c_id", "");
				Cookie chcookie = new Cookie("idcheck", "");
				idcookie.setMaxAge(0);
				chcookie.setMaxAge(0);
				response.addCookie(idcookie);
				response.addCookie(chcookie);
			}
			session.setAttribute("s_id", dto.getMember_id());
			session.setAttribute("s_pw", dto.getMember_pw());

			// 세션 시간을 30분으로 설정 (단위: 초)
			int sessionTimeout = 30 * 60; // 30분
			session.setMaxInactiveInterval(sessionTimeout);
		}
		mav.addObject("msg2", check);
		mav.setViewName("logmsgView");
		return mav;
	}

	@GetMapping("/loginfailcheck.do")
	@ResponseBody
	public int loginfailcheck(String member_id) {
		Map<String, String> map = new HashMap<>();
		int num = memberDao.loginfailcheck(member_id);
		return num;
	}// list() end

	@GetMapping("/logincussesscheck.do")
	@ResponseBody
	public int logincussesscheck(String member_id, String member_pw) {
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("member_pw", member_pw);
		int num = memberDao.logincussesscheck(map);
		return num;
	}// list() end

	@GetMapping("/logsuc.do")
	public ModelAndView logsuc() {
		ModelAndView mav = new ModelAndView();
		int msg1 = 2;

		mav.addObject("msg1", msg1);
		mav.setViewName("/member/login");
		return mav;
	}// list() end

	@GetMapping("/member.do")
	public String member() {
		return "/member/member";
	}

	@PostMapping("/insert")
	public String memberInsert(MemberDTO dto) {
		memberDao.memberInsert(dto);
		return "redirect:/main";
	}

	@PostMapping("idcheckproc.do")
	@ResponseBody
	public String idCheckForm(HttpServletRequest req) {
		String member_id = req.getParameter("memid").trim();
		System.out.println(req.getParameter("memid").trim());
		String result = memberDao.idcheck(member_id);
		return result;
	}

	@PostMapping("emailcheck.do")
	@ResponseBody
	public String emailCheckForm(HttpServletRequest req) {
		String member_email = req.getParameter("mememail").trim();
		String result = memberDao.emailcheck(member_email);
		return result;
	}

	@GetMapping("/logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg1", "<script>alert('로그아웃 되었습니다.')</script>");
		mav.addObject("msg2", 2);
		session.setAttribute("s_id", "guest");
		session.removeAttribute("s_pw");
		mav.setViewName("logmsgView");
		return mav;
	}

	@GetMapping("/sessionlogout.do")
	public ModelAndView sessionlogout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg2", 3);
		session.setAttribute("s_id", "guest");
		session.removeAttribute("s_pw");
		mav.setViewName("logmsgView");
		return mav;
	}

	@GetMapping("/social_log")
	public ModelAndView kakao_log(MemberDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int result = memberDao.sMembercheck(dto);
		System.out.println(result);

		if (result != 1) {
			memberDao.sinsert(dto);
			mav.addObject("msg1", "<script>alert('환영합니다')</script>");
			session.setAttribute("s_id", dto.getMember_email());
		} else {
			mav.addObject("msg1", "<script>alert('환영합니다')</script>");
			session.setAttribute("s_id", dto.getMember_email());
		}

		mav.setViewName("logmsgView");
		return mav;
	}

	@GetMapping("/test.do")
	public String test() {
		return "/member/test";
	}

	@GetMapping("/memberInfo.do")
	public String memberInfo() {
		return "/member/memberinfo";
	}

}// class end
