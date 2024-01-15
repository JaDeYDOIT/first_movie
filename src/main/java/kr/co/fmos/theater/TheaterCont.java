package kr.co.fmos.theater;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
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

import ch.qos.logback.core.model.Model;
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

	
	
	
	
	
	@RequestMapping("fail.do")
	public ModelAndView fail(ModelAndView mav) {
		mav.setViewName("/theater/fail");
		return mav;
	};

	@RequestMapping("cancel.do")
	public ModelAndView cancel(ModelAndView mav) {
		mav.setViewName("/theater/cancel");
		return mav;
	};

//결제 test
	@RequestMapping("kakaoAPI.do")
	@ResponseBody
	public String kakaoAPI() {

		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			// 서버연결 해주는 함수
			HttpURLConnection 서버연결 = (HttpURLConnection) url.openConnection();
			// 메소드는 POST로
			서버연결.setRequestMethod("POST");
			// 인증방식
			서버연결.setRequestProperty("Authorization", "KakaoAK faf9f1e16252192ad5f0ec52244c39eb");
			// 요청 데이터 타입
			서버연결.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			// 내가 서버에게 전해줄 값이 있는지?
			// Doinput의 defult값은 true지만 output의 defult값은 false이기에 true로 설정
			서버연결.setDoOutput(true);
			// 파라미터값 변수에 설정
			String 파라미터 = "cid=TC0ONETIME"
						 + "&partner_order_id=partner_order_id"//가맹점 주문 번호
					 	 + "&partner_user_id=partner_user_id"  //가맹점 회원 id
					 	 + "&item_name=초코파이" 	//상품 이름
						 + "&quantity=1" 		//상품 수량
						 + "&total_amount=2200" //상품 총액
						 + "&vat_amount=200" 	//상품 부과세 금액
						 + "&tax_free_amount=0" //상품 비과세 금액
						 + "&approval_url=http://localhost:9095"		 	//결제 성공시 url
						 + "&fail_url=https://localhost:9095/theater/fail.do"		//결제 취소시 url
						 + "&cancel_url=https://localhost:9095/theater/cancel.do";	//결제 실패시 url
			OutputStream 주는애 = 서버연결.getOutputStream();

			DataOutputStream 데이터주는애 = new DataOutputStream(주는애);
			// outputStream은 바이트 형시긍로 바꾸어주어야한다
			데이터주는애.writeBytes(파라미터);
			// flush는 데이터를 보낸후 내정보를 비워버림
			// 데이터주는애.flush();
			// close는 비워진 데이터를 닫아버림
			데이터주는애.close();
			// 실제로 파라미터를 보낸후 완료된값을 int로 받음
			int 결과 = 서버연결.getResponseCode();

			InputStream 받는애;
			// 상식 -> http코드에서 정상적인 통신을 뜻하는 코드는 200이고 다른 숫자는 전부 에러
			if (결과 == 200) {
				받는애 = 서버연결.getInputStream();
			} else {
				받는애 = 서버연결.getErrorStream();
			} // if() end
				// InputStreamReader 받은 값을 읽어주는 클래스
			InputStreamReader 읽는애 = new InputStreamReader(받는애);
			BufferedReader 형변환하는애 = new BufferedReader(읽는애);

			// 문자열로 형변환을 알아서한후 그것을 찍어내고 비워짐
			return 형변환하는애.readLine();

		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "{\"result\":\"NO\"}";
	}

}// class end