package kr.co.fmos.payment;

import java.util.List;

import org.springframework.web.bind.annotation.RequestBody;

public interface PaymentDAO {
	public List<PaymentDTO> list();

	public List<PaymentDTO> selectPaymentByScreenMovieInfoId(String screenMovieInfoID);
<<<<<<< HEAD

	public PaymentDTO insertAndReturnWithId(PaymentDTO paymentDto);
=======
>>>>>>> e62e91181430c7dcf1fe7c7e507418866377b16a
}
