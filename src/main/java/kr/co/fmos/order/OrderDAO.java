package kr.co.fmos.order;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.fmos.member.MemberDTO;


@Repository
public class OrderDAO {
	public OrderDAO() {
		System.out.println("-----OrderDAO()객체 생성됨");
	}//OrderDAO() end
	
	@Autowired
	SqlSession sqlSession;

	 /*
	 public String orderno(String cdate) { return
	 sqlSession.selectOne("order.orderno", cdate); }//orderno() end
	 */
	
	public int totalmoney(String member_id) {
		return sqlSession.selectOne("order.totalmoney", member_id);
	}//totalamount() end
	
	
	public MemberDTO consumerlist(String member_id) {
		return sqlSession.selectOne("order.consumerlist", member_id);
	}//consumerlist() end
	
	
	/*
	 * public List<MemberDTO> consumerlist(String member_id) { return
	 * sqlSession.selectList("order.consumerlist", member_id); }//consumerlist() end
	 */	
}//class end