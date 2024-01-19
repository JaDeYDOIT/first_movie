package kr.co.fmos.payment;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDAOImp implements PaymentDAO {
	public PaymentDAOImp() {
		System.out.println("-----PaymentDAO()객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<PaymentDTO> list() {
		return sqlSession.selectList("payment.list");
	}

	@Override
	public List<PaymentDTO> selectPaymentByScreenMovieInfoId(String screenMovieInfoID) {
		return sqlSession.selectList("payment.selectPaymentByScreenMovieInfoId", screenMovieInfoID);
	}

	@Override
	public PaymentDTO insertAndReturnWithId(PaymentDTO paymentDto) {
		sqlSession.insert("payment.insertAndReturnWithId", paymentDto);
		return paymentDto;
	}
	
	@Override
	public List<Map<String, Object>> mypagelist(String member_id) {
		return sqlSession.selectList("payment.mypagelist", member_id);
	}
}
