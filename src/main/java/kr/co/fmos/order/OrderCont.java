package kr.co.fmos.order;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.jaxb.SpringDataJaxb.OrderDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import kr.co.fmos.member.MemberDTO;

@Controller
@RequestMapping("/order")
public class OrderCont {
	public OrderCont() {
		System.out.println("-----OrderCont()객체 생성됨");
	}//OrderCont() end
	
	@Autowired
	OrderDAO orderDao;
	
	@GetMapping("/confirm.do") 
    public ModelAndView confirm(HttpSession session) { 
       ModelAndView mav = new ModelAndView();
       String s_id = (String)session.getAttribute("s_id");
       MemberDTO dto = orderDao.consumerlist(s_id);
       mav.addObject("confirm", dto);
       mav.addObject("totalmoney", orderDao.totalmoney(s_id));
       mav.setViewName("order/confirm");
       return mav;
    }//confirm() end
	
	
	@PostMapping("/confirm.do")
	public ModelAndView confirmInsert(@ModelAttribute OrderDTO orderDto, HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		//System.out.println(s_id);
		
		ModelAndView mav = new ModelAndView();
		
		//1. 주문번호 생성
		SimpleDateFormat sd = new SimpleDateFormat("yyyyMMddHHmmss");
		String payment_datetime = sd.format(new Date());
		//System.out.println(payment_datetime); //20240104192653
		
		String cart_payment_id = orderDao.orderno(payment_datetime);
		if(cart_payment_id.equals("1")) {
			cart_payment_id = payment_datetime + "1";
		} else {
			int n = Integer.parseInt(cart_payment_id.substring(14)+1);
			cart_payment_id = payment_datetime + n;
		}//if end
		//System.out.println(cart_payment_id); //202401041926531
		
				
		//2. 총 금액 구하기
		int totalmoney = orderDao.totalmoney(s_id);
		//System.out.println(totalmoney);
		
		
		//3. 주문자 성명, 전화번호 dto에 담기
		MemberDTO dto = orderDao.consumerlist(s_id);
		//System.out.println(dto.getMember_name());
		//System.out.println(dto.getMember_phone());
		
		
		//4. orderDto에 주문서번호, 세션아이디, 결제시간 담기
		orderDto.setCart_payment_id(cart_payment_id);
		orderDto.setMember_id(s_id);
		orderDto.setPayment_datetime(Long.parseLong(payment_datetime));
		//System.out.println(orderDto.toString());
		
		int cnt = orderDao.confirmInsert(orderDto);
		//System.out.println(cnt);
		
		mav.addObject("confirm", dto); /* 주문자 이름, 주문자 전화번호 */
		mav.addObject("totalmoney", orderDao.totalmoney(s_id));/* 총 결제 금액 */
		mav.setViewName("order/msgView");
		
//		RedirectView redirectView = new RedirectView("http://localhost:9095/main"); // "/main"은 실제 이동할 페이지의 URL로 변경해야 합니다.
//		redirectView.setExposeModelAttributes(false); // 모델 속성 노출 방지
//		mav.setView(redirectView);
//		mav.addObject("delayTime", 3000);
		
		orderDao.cartDelete(s_id);
		return mav;
	}//confirmInsert() end
}//class end