package kr.co.fmos.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import kr.co.fmos.member.MemberDTO;

@Controller
@RequestMapping("/order")
public class OrderCont {
	public OrderCont() {
		System.out.println("-----OrderCont()객체 생성됨");
	}// OrderCont() end

	@Autowired
	OrderDAO orderDao;

	@GetMapping("/confirm.do")
	public ModelAndView confirm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String s_id = (String) session.getAttribute("s_id");
		MemberDTO dto = orderDao.consumerlist(s_id);
		mav.addObject("confirm", dto);
		mav.addObject("totalmoney", orderDao.totalmoney(s_id));
		mav.setViewName("order/confirm");
		return mav;
	}// confirm() end

	@GetMapping("/msgView.do")
	public ModelAndView msgView() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("order/msgView");
		return mav;
	}// msgView() end

	@PostMapping("/msgView.do")
	public ModelAndView msgView(@RequestParam String cart_payment_id, @RequestParam String member_id, HttpSession session) {
		String s_id = (String) session.getAttribute("s_id");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("order/msgView");

		OrderDTO orderDto = new OrderDTO();
		orderDto.setCart_payment_id(cart_payment_id);
		orderDto.setMember_id(member_id);
		orderDao.confirmInsert(orderDto);

		mav.addObject("member_id", member_id);
		mav.addObject("cart_payment_id", cart_payment_id);

		// 장바구니 비우기
		orderDao.cartDelete(s_id);

		return mav;
	}// msgView() end
}// class end