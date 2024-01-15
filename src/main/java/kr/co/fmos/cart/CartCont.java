package kr.co.fmos.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/cart")
public class CartCont {

	public CartCont() {
		System.out.println("-----CartCont()객체 생성됨");
	}//end
	
	@Autowired
	private CartDAO cartDao;
	
	@PostMapping("/insert.do")
	public String cartInsert(@ModelAttribute CartDTO cartDto, HttpSession session) {
		cartDto.setMember_id((String)session.getAttribute("s_id"));
		//System.out.println(cartDto.getProduct_id());
		//System.out.println(cartDto.getProduct_count());
		int num = cartDao.cartInsert(cartDto);
		//System.out.println(num);
		//cartDao.cartcnt("s_id");
		return "redirect:/cart/list.do";
	}//cartInsert() end
	
	@RequestMapping("/list.do")
	public ModelAndView list(HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		System.out.println(s_id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart/list");
		mav.addObject("list", cartDao.cartList(s_id));
		mav.addObject("cartcnt", cartDao.cartcnt(s_id));
		return mav;
	}//list() end
	
	@GetMapping("/delete")
	public ModelAndView delete(HttpServletRequest req, HttpSession session) {//
		//System.out.println(req.getParameter("member_id"));
		//System.out.println(req.getParameter("payment_detail_id"));
		int payment_detail_id = Integer.parseInt(req.getParameter("payment_detail_id"));
		
		cartDao.cartDelete(payment_detail_id);
		String s_id = (String)session.getAttribute("s_id");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cart/list");
		mav.addObject("list", cartDao.cartList(s_id));
		mav.addObject("cartcnt", cartDao.cartcnt(s_id));
		return mav;
	}//delete() end
}//class end