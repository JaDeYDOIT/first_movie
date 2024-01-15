package kr.co.fmos.customer;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping("/notice.do")
	public ModelAndView noticelist(int notice_kind) {
		ModelAndView mav = new ModelAndView();
		if(notice_kind == 0) {
			mav.addObject("list", noticeDao.faqselect(notice_kind));
			mav.setViewName("customer/FAQ");
		} else {
			mav.addObject("list", noticeDao.noticeselect(notice_kind));
			mav.setViewName("customer/notice");
		}
		return mav;
	}
		
	@RequestMapping("/inquire.do")
	public ModelAndView inquirylist(int inquire_kind) {
		ModelAndView mav = new ModelAndView();
		if(inquire_kind == 0) {
			mav.addObject("list", inquireDao.oneselect(inquire_kind));
			mav.setViewName("customer/one_inquire");
		} else {
			mav.addObject("list", inquireDao.lostselect(inquire_kind));
			mav.setViewName("customer/lost_inquire");
		}
		return mav;
	}
	
	@RequestMapping("/rental_inquiry.do")
	public ModelAndView list() {
	ModelAndView mav = new ModelAndView();
	mav.addObject("region_customer", theaterDao.region_customer());
	mav.setViewName("customer/rental_Form");
	return mav;
	}
	
	@GetMapping("/noticeForm.do")
	public String noticeForm() {
		return "customer/noticeForm";
	}
	
	@GetMapping("/one_inquiryForm.do")
	public String one_inquiryForm() {
		return "customer/one_inquiryForm";
	}
	
	@GetMapping("/lost_inquiryForm.do")
	public String lost_inquiryForm() {
		return "customer/lost_inquiryForm";
	}
	
    @PostMapping("/noticeinsert.do") 
    public ModelAndView noticeins(NoticeDTO dto) {
    	ModelAndView mav = new ModelAndView();
		
		 int num = noticeDao.noticeInsert(dto);
		 if(num != 0) { 
			 	mav.addObject("msg1","<script>alert('등록이 완료되었습니다.')</script>"); 
		 	} 
		 else { mav.addObject("msg1","<script>alert('등록실패')</script>"); 
			}
		mav.addObject("list", noticeDao.faqselect(0));
    	mav.setViewName("/customer/FAQ");
    	return mav;
    }
    
    @PostMapping("/inquireins.do")
    public ModelAndView oneinquiryins(InquireDTO dto ,HttpSession session) {
    	ModelAndView mav = new ModelAndView();
    	String s_id = (String)session.getAttribute("s_id");
    	dto.setMember_id(s_id);
    	
    	int num = inquireDao.oneInquireins(dto);
    	
    	if(num != 0) { 
		 	mav.addObject("msg1","<script>alert('등록이 완료되었습니다.')</script>"); 
	 	} 
    	else { mav.addObject("msg1","<script>alert('등록실패')</script>"); 
		}
    	mav.addObject("list", noticeDao.faqselect(0));
		mav.setViewName("/customer/FAQ");
		return mav;
    }
    
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
    	System.out.println(map.toString());
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
    public void rentalinsert(RentalDTO dto) {
    	String rental_inquiry_area = dto.getRental_inquiry_area();
    	System.out.println(theaterDao.Rental_inquiry_area(rental_inquiry_area));
    	dto.setRental_inquiry_area(theaterDao.Rental_inquiry_area(rental_inquiry_area));
    	
    	int rental_inquiry_place = Integer.parseInt(dto.getRental_inquiry_place());
    	System.out.println(theaterDao.rental_inquiry_place(rental_inquiry_place));
    	dto.setRental_inquiry_place(theaterDao.rental_inquiry_place(rental_inquiry_place));
    	
    	int rental_inquiry_theater = Integer.parseInt(dto.getRental_inquiry_theater());
    	System.out.println(theaterDao.rental_inquiry_theater(rental_inquiry_theater));
    	dto.setRental_inquiry_place(theaterDao.rental_inquiry_theater(rental_inquiry_theater));
    	
    	int rental_inquiry_movie = Integer.parseInt(dto.getRental_inquiry_movie());
    	System.out.println(theaterDao.rental_inquiry_movie(rental_inquiry_movie));
    	dto.setRental_inquiry_place(theaterDao.rental_inquiry_movie(rental_inquiry_movie));
    	
    	
    	
    	
    	
    }
    
    
}//class end