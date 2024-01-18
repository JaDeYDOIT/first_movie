package kr.co.fmos.coupon;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/coupon")
public class CouponCont {

	public CouponCont() {
		System.out.println("-----CouponCont()객체생성됨");
	}

	@Autowired
	private CouponDAO couponDao;

	@RequestMapping("/selectCouponById")
	@ResponseBody
	public CouponDTO selectCouponName(@RequestBody String couponID) {
		return couponDao.selectCouponById(couponID);
	}
}