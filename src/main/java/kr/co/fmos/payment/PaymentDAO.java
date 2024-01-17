package kr.co.fmos.payment;

import java.util.List;

public interface PaymentDAO {
	public List<PaymentDTO> list();

	public List<PaymentDTO> selectPaymentByScreenMovieInfoId(String screenMovieInfoID);

	public PaymentDTO insertAndReturnWithId(PaymentDTO paymentDto);
}
