package kr.co.fmos.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/payment")
public class PaymentCont {
	public PaymentCont() {
		System.out.println("-----PaymentCont() 객체 생성됨");
	}

	@Autowired
	PaymentDAO paymentDao;

	@PostMapping("/selectPaymentByScreenMovieInfoId")
	@ResponseBody
	public List<PaymentDTO> selectPaymentByScreenMovieInfoId(@RequestBody String screenMovieInfoID) {
		return paymentDao.selectPaymentByScreenMovieInfoId(screenMovieInfoID);
	}
}
