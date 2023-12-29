package kr.co.fmos.theater;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TheaterDAO {

	@Autowired
	private JdbcTemplate jt;
	
	private StringBuilder sql = null;
	
	public TheaterDAO() {
		System.out.println("-----TheaterDAO() end");
	}//TheaterDAO() end
	
}//class end