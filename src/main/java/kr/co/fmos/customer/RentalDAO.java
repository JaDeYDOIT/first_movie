package kr.co.fmos.customer;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RentalDAO {

	public RentalDAO() {
		System.out.println("-----RentalDAO()객체 생성됨");
	}
	
	@Autowired
	SqlSession sqlSession;
	
	public int rentalInsert(RentalDTO dto) {
		return sqlSession.insert("customer.rentalInsert", dto);
	}//insert() end

	
	
}
