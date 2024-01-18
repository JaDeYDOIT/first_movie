package kr.co.fmos.payment;

import java.util.List;
import java.util.Map;

public interface PaymentDAO {
	public List<PaymentDTO> list();
	
	public List<Map<String, Object>> mypagelist(String member_id);

	public List<PaymentDTO> selectPaymentByScreenMovieInfoId(String screenMovieInfoID);

	public PaymentDTO insertAndReturnWithId(PaymentDTO paymentDto);
	
	
}
