package theater;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import kr.co.fmos.movie.MovieDAO;

@Controller
@RequestMapping("/theater")
public class TheaterCont {

	@Autowired
	TheaterDAO theaterdao;

	@Autowired
	MovieDAO moviedao;

	public TheaterCont() {
		System.out.println("-----TheaterCont()객체 생성됨");
	}// TheaterCont() end

//	list 페이지 끝--------------------------------------------------
	// list 페이지 지역
	@RequestMapping("/list.do")
	public ModelAndView list(String region_id) {// region_id=region_001, branch_id=19
		// System.out.println(region_id);
		// System.out.println(theaterdao.screenlist(branch_id));

		ModelAndView mav = new ModelAndView();
		mav.addObject("theaterlist", theaterdao.regionlist(region_id));
		mav.addObject("branchlist", theaterdao.branchlist(region_id));
		mav.setViewName("theater/list");
		return mav;
	}// list() end

	// list 페이지 지점
	@RequestMapping("/branchlist.do")
	public ModelAndView list(String region_id, int branch_id, Screen_movie_informationDTO dto, HttpSession session) {// region_id=region_001,
																														// branch_id=19
		// System.out.println(region_id);
		// System.out.println(theaterdao.screenlist(branch_id));
		String s_id = (String) session.getAttribute("s_id");
		System.out.println(s_id);
		ModelAndView mav = new ModelAndView();

		mav.addObject("timecheck", theaterdao.timecheck());
		mav.addObject("theaterlist", theaterdao.regionlist(region_id));
		mav.addObject("branchlist", theaterdao.branchlist(region_id));
		mav.addObject("screenlist", theaterdao.screenlist(dto));
		mav.addObject("branchimg", theaterdao.branchimg(branch_id));
		mav.setViewName("theater/list");
		return mav;
	}// list() end

	// 지역 -> 지점 ajax
	@GetMapping("/check.do")
	@ResponseBody
	public List<TheaterbranchDTO> check(String check) throws Exception {
		List<TheaterbranchDTO> list = theaterdao.checkList(check);
		return list;
	}
//	list 페이지 끝--------------------------------------------------

//	write 페이시 시작---------------------------------------------------
	// 리스트형식 write페이지
	@GetMapping("/write.do")
	public ModelAndView writelist() {

		ModelAndView mav = new ModelAndView();
		mav.addObject("writelist", theaterdao.writelist());
		mav.addObject("writebranchlist", theaterdao.writebranchlist());
		mav.setViewName("theater/write");
		return mav;
	}

	// write페이지 지역 ajax
	@PostMapping("/writelist.do")
	@ResponseBody
	public Map<String, Object> writeajaxlist(int movie_id) {
		System.out.println(movie_id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("writeajaxlist", theaterdao.writeajaxlist(movie_id));
		return map;
	}

	// write페이지 지점 ajax
	@PostMapping("/screenlist.do")
	@ResponseBody
	public Map<String, Object> screenajaxlist(int branch_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("screenajaxlist", theaterdao.screenajaxlist(branch_id));
		return map;
	}// list() end

	@PostMapping("/insert.do")
	public ModelAndView insert(HttpServletRequest req) {

		Map<String, Object> map = new HashMap<String, Object>();
		int movie_id = Integer.parseInt(req.getParameter("movie_id"));
		int screen_id = Integer.parseInt(req.getParameter("screen_id"));
		int branch_id = Integer.parseInt(req.getParameter("branch_id"));

		String movie_showing_date = req.getParameter("movie_showing_date");
		String movie_showing_time = req.getParameter("movie_showing_time");

		map.put("movie_id", movie_id);
		map.put("screen_id", screen_id);
		map.put("branch_id", branch_id);
		map.put("movie_showing_date", movie_showing_date);
		map.put("movie_showing_time", movie_showing_time);
		System.out.println(map.toString());

		int cnt = theaterdao.theaterinsert(map);

		ModelAndView mav = new ModelAndView();

		if (cnt != 0) {
			mav.addObject("msg1", "<script>alert('추가 완료되었습니다')</script>");
			mav.addObject("msg2",
					"<script>location.href='/theater/branchlist.do?region_id=region_001&branch_id=1'</script>");
		} else {
			mav.addObject("msg1", "<script>alert('추가 실패했습니다')</script>");
		}
		// if end

		mav.setViewName("msgView");
		return mav;
	}

//	write 페이시 끝---------------------------------------------------

}// class end