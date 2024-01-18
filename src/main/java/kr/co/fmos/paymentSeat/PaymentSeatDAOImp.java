package kr.co.fmos.paymentSeat;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentSeatDAOImp implements PaymentSeatDAO {
	public PaymentSeatDAOImp() {
		System.out.println("-----PaymentSeatDAOImp() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public void insert(PaymentSeatDTO paymentSeatDto) {
		sqlSession.insert("paymentSeat.insert", paymentSeatDto);
	}
}