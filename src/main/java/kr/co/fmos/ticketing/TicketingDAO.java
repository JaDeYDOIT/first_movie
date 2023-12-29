package kr.co.fmos.ticketing;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TicketingDAO {
	public TicketingDAO() {
		System.out.println("-----ticketingDAO() 객체 생성됨");
	}

	@Autowired
	SqlSession sqlSession;
}
