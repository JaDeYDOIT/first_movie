package kr.co.fmos.cart;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jakarta.servlet.http.HttpServletRequest;

@Repository
public class CartDAO {
	public CartDAO() {
		System.out.println("-----CartDAO()객체 생성됨");
	}//end
	
	@Autowired
	SqlSession sqlSession;
	
	public int cartInsert(CartDTO dto) {
		return sqlSession.insert("cart.insert", dto);
	}//cartInsert() end
	
	public List<CartDTO> cartList(String member_id) {
		return sqlSession.selectList("cart.list", member_id);
		
	}//list() end
	
	public int cartDelete(int payment_detail_id) { 
		return sqlSession.delete("cart.delete", payment_detail_id); 
	}//delete() end
	
}//class end