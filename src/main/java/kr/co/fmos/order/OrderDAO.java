package kr.co.fmos.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.fmos.member.MemberDTO;

@Repository
public class OrderDAO {
	
	public OrderDAO() {
		System.out.println("-----OrderDAO()객체 생성됨");
	}// OrderDAO() end

	@Autowired
	SqlSession sqlSession;

	public String orderno(String payment_datetime) {
		return sqlSession.selectOne("order.orderno", payment_datetime);
	}// orderno() end

	public int totalmoney(String member_id) {
		return sqlSession.selectOne("order.totalmoney", member_id);
	}// totalmoney() end

	
	public MemberDTO consumerlist(String member_id) {
		return sqlSession.selectOne("order.consumerlist", member_id);
	}// consumerlist() end

	/*
	 * public List<MemberDTO> consumerlist(String member_id) { return
	 * sqlSession.selectList("order.consumerlist", member_id); }//consumerlist() end
	 */

	/* 장바구니 → 결제 이동 dto*/
	 public int confirmInsert(OrderDTO dto) { 
		 return	 sqlSession.insert("order.confirmInsert", dto); 
	}// confirmInsert() end
	 
	 
	public int cartDelete(String member_id) {
		return sqlSession.delete("order.cartDelete", member_id);
	}// cartDelete() end

}// class end