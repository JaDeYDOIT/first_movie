package kr.co.fmos.movie;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.fmos.member.MemberDAO;

@Controller
@RequestMapping("/movie")
public class MovieCont {
	int count = 0;
	String movie = "movie";

	@Autowired
	private MovieDAOImp movieDao;

	public MovieCont() {
		System.out.println("-----MovieCont() 객체 생성됨");
	}

	/////////////////// 영화 리스트 조회///////////////
	@GetMapping("/list.do")
	public ModelAndView list() {

		ModelAndView mav = new ModelAndView();

		mav.addObject("list", movieDao.movieList());
		mav.setViewName("movie/list");
		return mav;
	}// list() end

/////////////////////영화 추가 페이지//////////////////////////
	@GetMapping("/write.do")
	public String write() {
		// 로그인 했다면
//		String s_id="itwill";
		return "movie/write";
	}// list() end

/////////////////////영화 추가//////////////////////////
	@PostMapping("/insert.do")
	@ResponseBody
	public ModelAndView insert(Map<String, Object> map, MovieDTO moviedto, HttpSession session) throws Exception {
		// HttpServletRequest req
		// @ModelAttribute CommentDTO commentDto

//		count += count+1;
//		movie = "movie"+count;
//		
//		moviedto.setMovie_id(movie);
		
		
		ModelAndView mav = new ModelAndView();

		int cnt = movieDao.movieinsert(moviedto);

		if (cnt != 0) {
			mav.addObject("msg1", "<p>추가 완료되었습니다</p>");
			mav.addObject("msg2", "<p><a onclick='history.back()'>[전 페이지로]</a></p>");
		} else {
			mav.addObject("msg1", "<p>추가 실패하였습니다</p>");
			mav.addObject("msg2", "<p><a href='javascript:history.back()'>[다시시도]</a></p>");
		}
		// if end

		mav.setViewName("msgView");
		return mav;

	}// movieinsert() end

/////////////////////영화 상세 페이지//////////////////////////
	@GetMapping("/detail.do")
	public ModelAndView detail(String movie_id) {

		ModelAndView mav = new ModelAndView();
		mav.addObject("detail", movieDao.movieDetail(movie_id));
		mav.addObject("review", movieDao.moviereviewList(movie_id));
		mav.setViewName("/movie/detail");
		return mav;
	}// list() end

/////////////////////리뷰 추가//////////////////////////

	@GetMapping("/insert.do")
	public String reviewInsert(HttpSession session, MoviereviewDTO dto) {
		String s_id = (String) session.getAttribute("s_id");
		dto.setMember_id(s_id);
		movieDao.reviewInsert(dto);
		return "redirect:/movie/detail.do?movie_id=" + dto.getMovie_id();
	}// list() end

	@PostMapping("/selectMovieInfoById")
	@ResponseBody
	public MovieDTO selectMovieInfoById(@RequestBody String movieID) {
		return movieDao.selectMovieInfoById(movieID);
	}
}
