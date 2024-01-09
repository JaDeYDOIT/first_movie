package kr.co.fmos.theater;

import java.util.ArrayList;
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

//	@RequestMapping("/list.do")
//	public ModelAndView list(@RequestParam(value = "region_id", defaultValue = "region_001") String region_id) {
//		//System.out.println(region_id);
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("region_id", region_id);
//		mav.addObject("list", theaterdao.regionlist(region_id));
//		System.out.println(region_id);
//		mav.setViewName("theater/list");
//		return mav;
//	}//list() end
//	

//	@RequestMapping("/list.do")
//	public ModelAndView list(String region_id) {//region_id=region_001, branch_id=19
//		//System.out.println(region_id);
//		
//		//System.out.println(theaterdao.screenlist(branch_id));
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("theaterlist", theaterdao.regionlist(region_id));
//		mav.addObject("branchlist", theaterdao.branchlist(region_id));
//
//		mav.setViewName("theater/list");
//		return mav;
//	}//list() end

	// 지역
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

	// 지점
	@RequestMapping("/branchlist.do")
	public ModelAndView list(String region_id, int branch_id) {// region_id=region_001, branch_id=19
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("timecheck", theaterdao.timecheck()); 
		mav.addObject("theaterlist", theaterdao.regionlist(region_id));
		mav.addObject("branchlist", theaterdao.branchlist(region_id));
		mav.addObject("screenlist", theaterdao.screenlist(branch_id));
		mav.addObject("branchimg", theaterdao.branchimg(branch_id));
		mav.setViewName("theater/list");
		return mav;
		
	}// list() end

	
	//지역 -> 지점  ajax
	@GetMapping("/check.do")
	@ResponseBody
	public List<TheaterbranchDTO> check(String check) throws Exception {
		List<TheaterbranchDTO> list = theaterdao.checkList(check);
		return list;
	}

	// 리스트형식 write페이지
	@GetMapping("/write.do")
	public ModelAndView writelist() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("writelist", theaterdao.writelist());
		mav.addObject("writebranchlist", theaterdao.writebranchlist());
		mav.setViewName("theater/write");
		return mav;
	}

	// write페이지 ajax
	@PostMapping("/writelist.do")
	@ResponseBody
	public Map<String, Object> writeajaxlist(int movie_id) {
		System.out.println(movie_id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("writeajaxlist", theaterdao.writeajaxlist(movie_id));
		return map;
	}

	@PostMapping("/insert.do")
	public String insert(HttpServletRequest req) {

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

		map.put("theaterinsert", theaterdao.theaterinsert(map));

		return "redirect:list.do";
	}
	
	@PostMapping("/screenlist.do")
	@ResponseBody
	public Map<String, Object>screenajaxlist(int branch_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("screenajaxlist", theaterdao.screenajaxlist(branch_id));
		return map;
	}

}// class end