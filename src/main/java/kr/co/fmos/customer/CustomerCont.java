package kr.co.fmos.customer;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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
import kr.co.fmos.theater.TheaterDAO;

@Controller
@RequestMapping("/customer")
public class CustomerCont {

	public CustomerCont() {
		System.out.println("-----ProductCont()객체생성됨");
	}//end
	
	@Autowired
	private InquireDAO inquireDao;
	
	@Autowired
	private NoticeDAO noticeDao;
	
	@Autowired
	private TheaterDAO theaterDao;
	
	@Autowired
	private RentalDAO rentalDao;
	
//	notice 조회 시작
	@RequestMapping("/notice.do")
	public ModelAndView noticelist(int notice_kind, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String s_id = (String)session.getAttribute("s_id");
		
		if(notice_kind == 0) {
			mav.addObject("list", noticeDao.faqselect(notice_kind));
			mav.setViewName("customer/FAQ");
		} else {
			mav.addObject("list", noticeDao.noticeselect(notice_kind));
			mav.setViewName("customer/notice");
		}
		mav.addObject("s_id", s_id);
		return mav;
	}
//	notice 조회 끝
		
//	inquire 조회 시작
	@RequestMapping("/inquire.do")
	public ModelAndView inquirylist(int inquire_kind, HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		ModelAndView mav = new ModelAndView();
		if(inquire_kind == 0) {
			mav.addObject("list", inquireDao.oneselect(inquire_kind));
			mav.setViewName("customer/one_inquire");
		} else {
			mav.addObject("list", inquireDao.lostselect(inquire_kind));
			mav.setViewName("customer/lost_inquire");
		}
		mav.addObject("s_id", s_id);
		return mav;
	}
//	inquire 조회 끝
	
//	rental 페이지 이동 시작
	@RequestMapping("/rental_inquiry.do")
	public ModelAndView list() {
	ModelAndView mav = new ModelAndView();
	mav.addObject("region_customer", theaterDao.region_customer());
	mav.setViewName("customer/rental_Form");
	return mav;
	}
//	rental 페이지 이동 끝
	
//	notice 입력 페이지 이동 시작	
	@GetMapping("/noticeForm.do")
	public String noticeForm(int notice_kind) {
		if(notice_kind == 0) {
			return "customer/FAQForm";
		} else {
			return "customer/noticeForm";
		}
	}
//	notice 입력 페이지 이동 끝
	
//	1:1문의 페이지 이동 시작	
	@GetMapping("/one_inquiryForm.do")
	public String one_inquiryForm() {
		return "customer/one_inquiryForm";
	}
//	1:1문의 페이지 이동 끝
	
//	분실문문의 페이지 이동 시작	
	@GetMapping("/lost_inquiryForm.do")
	public ModelAndView lost_inquiryForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("region_customer", theaterDao.region_customer());
		mav.setViewName("customer/lost_inquiryForm");
		return mav;
	}
//	분실문문의 페이지 이동 끝	
	
//	noticeinsert 시작
    @PostMapping("/noticeinsert.do") 
    public ModelAndView noticeins(NoticeDTO dto) {
    	ModelAndView mav = new ModelAndView();
		
		 int num = noticeDao.noticeInsert(dto);
		 if(num != 0) { 
			 	mav.addObject("msg1","<script>alert('등록이 완료되었습니다.')</script>"); 
		 	} 
		 else { mav.addObject("msg1","<script>alert('등록실패')</script>"); 
			}
		 
		 if(dto.getNotice_kind() == 0) {
			 mav.addObject("list", noticeDao.faqselect(dto.getNotice_kind()));
			 mav.addObject("msg2", 0);
		 } else {
			 mav.addObject("list", noticeDao.noticeselect(dto.getNotice_kind()));
			 mav.addObject("msg2", 1);
		 }
		 	mav.setViewName("noticeView");
    	return mav;
    }
//	noticeinsert 끝
    
    @GetMapping("/noticedelete.do")
	public String delete(HttpServletRequest req) {//
		int notice_id = Integer.parseInt(req.getParameter("notice_id"));
		int notice_kind = Integer.parseInt(req.getParameter("notice_kind"));
		noticeDao.noticeDelete(notice_id);
		return "redirect:/customer/notice.do?notice_kind=" + notice_kind;
	}//delete() end
    
    @PostMapping("/one_inquireins.do")
    public ModelAndView one_inquireins(InquireDTO dto ,HttpSession session) {
    	ModelAndView mav = new ModelAndView();
    	String s_id = (String)session.getAttribute("s_id");
    	dto.setMember_id(s_id);
    	System.out.println(dto.toString());
    	
    	int num = inquireDao.oneInquireins(dto);
    	
    	if(num != 0) { 
		 	mav.addObject("msg1","<script>alert('등록이 완료되었습니다.')</script>"); 
		 	mav.addObject("msg2", 2);
	 	} 
    	else { mav.addObject("msg1","<script>alert('등록실패')</script>"); 
		}
    	mav.addObject("list", inquireDao.oneselect(dto.getInquire_kind()));
    	mav.setViewName("noticeView");
		return mav;
    }
    
    @PostMapping("/lost_inquireins.do")
    public ModelAndView lost_inquiryins(InquireDTO dto ,HttpSession session) {
    	ModelAndView mav = new ModelAndView();
    	String s_id = (String)session.getAttribute("s_id");
    	dto.setMember_id(s_id);
    	System.out.println(dto.toString());
    	
    	int num = inquireDao.lostInquireins(dto);
    	
    	if(num != 0) { 
    		mav.addObject("msg1","<script>alert('등록이 완료되었습니다.')</script>"); 
    		mav.addObject("msg2", 3);
    	} 
    	else { mav.addObject("msg1","<script>alert('등록실패')</script>"); 
    	}
    	mav.addObject("list", noticeDao.faqselect(0));
    	mav.setViewName("noticeView");
    	return mav;
    }
    
    @GetMapping("/inquiredelete.do")
	public String inquiredelete(HttpServletRequest req) {//
		int inquire_id = Integer.parseInt(req.getParameter("inquire_id"));
		int inquire_kind = Integer.parseInt(req.getParameter("inquire_kind"));
		inquireDao.inquiredelete(inquire_id);
		return "redirect:/customer/inquire.do?inquire_kind=" + inquire_kind;
	}//delete() end
    
    @PostMapping("/branchselectbox.do")
    @ResponseBody
    public Map<String, Object> branchselectbox(String region_id) {
        Map<String, Object> map = new HashMap<>();
        map.put("regionselectbox", theaterDao.branchselectbox(region_id));
        return map;
    }
    
    @PostMapping("/screenselectbox.do")
    @ResponseBody
    public Map<String, Object> screenselectbox(int branch_id){
    	Map <String, Object> map = new HashMap<>();
    	map.put("screenselectbox", theaterDao.screenselectbox(branch_id));
    	return map;
    }
    
    @PostMapping("/movieselectbox.do")
    @ResponseBody
    public Map<String, Object> movieselectbox(int screen_id){
    	Map <String, Object> map = new HashMap<>();
    	map.put("movieselectbox", theaterDao.movieselectbox(screen_id));
    	return map;
    }
    
    @PostMapping("/rentalinsert.do")
    public ModelAndView rentalinsert(RentalDTO dto) {
    	ModelAndView mav = new ModelAndView();
    	
    	//1. 주문번호 생성
        SimpleDateFormat sd = new SimpleDateFormat("yyyyMMddHHmmss");
        String payment_datetime = sd.format(new Date());
        payment_datetime = payment_datetime + "1";
        dto.setRental_inquiry_id(Long.parseLong(payment_datetime));
    	
    	String rental_inquiry_area = dto.getRental_inquiry_area();
    	dto.setRental_inquiry_area(theaterDao.Rental_inquiry_area(rental_inquiry_area));
    	
    	int rental_inquiry_place = Integer.parseInt(dto.getRental_inquiry_place());
    	dto.setRental_inquiry_place(theaterDao.rental_inquiry_place(rental_inquiry_place));
    	
    	int rental_inquiry_theater = Integer.parseInt(dto.getRental_inquiry_theater());
    	dto.setRental_inquiry_place(theaterDao.rental_inquiry_theater(rental_inquiry_theater));
    	
    	int rental_inquiry_movie = Integer.parseInt(dto.getRental_inquiry_movie());
    	dto.setRental_inquiry_place(theaterDao.rental_inquiry_movie(rental_inquiry_movie));
    	
//    	int cnt = rentalDao.rentalInsert(dto);
    	mav.addObject("msg1","<script>alert('등록이 완료되었습니다.')</script>");
    	mav.addObject("msg2", 4);
    	mav.setViewName("/noticeView"); 	
    	return mav;
    }
}//class end