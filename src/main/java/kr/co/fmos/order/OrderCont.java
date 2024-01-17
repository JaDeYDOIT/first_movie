package kr.co.fmos.order;

<<<<<<< HEAD
import java.util.List;
=======
import java.text.SimpleDateFormat;
import java.util.Date;
>>>>>>> 1273a93995ca58a977e7efd5a6572507b62601f8

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		String s_id = (String)session.getAttribute("s_id");
		
		//int totalmoney = orderDao.totalmoney(s_id);
		//System.out.println(totalmoney);
		
		//List<MemberDTO> dto = orderDao.consumerlist(s_id);
		//System.out.println(dto.toString());
		
		MemberDTO dto = orderDao.consumerlist(s_id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("confirm", dto);
		mav.addObject("totalmoney", orderDao.totalmoney(s_id));
		mav.setViewName("order/confirm");
		return mav;
	}//confirm() end
	
	@GetMapping("/msgView.do")
	public String msgView() {
		return "order/msgView";
	}//confirm() end
	
	
	
	
	
}//class end