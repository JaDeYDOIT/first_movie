package kr.co.fmos.payment;

import java.util.List;

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

}
