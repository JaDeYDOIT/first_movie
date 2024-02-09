package kr.co.fmos.product;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	public ProductDAO() {
		System.out.println("-----ProductDAO()객체 생성됨");
	}//end
	
	@Autowired
	SqlSession sqlSession;
	
	public void insert(Map<String, Object> map) {
		sqlSession.insert("product.insert", map);
	}//insert() end
	
	public List<ProductDTO> list() {
		return sqlSession.selectList("product.list");
	}//list() end
	
	/*
	 * public List<ProductDTO> category(int product_category_id) { 
	 * 	return sqlSession.selectList("product.category", product_category_id); 
	 * }//category() end
	 */	
	
	//public Map<String, Object> category(int product_category_id) {
	public List<ProductDTO> category(int product_category_id) {
		//호출 함수의 전제적인 흐름을 파악하기 위해 아무거나 찍어보도록 하겠습니다
		//System.out.println("22222");
		//return sqlSession.selectOne("product.category", product_category_id);
		return sqlSession.selectList("product.category", product_category_id);
	}//category() end
	
	public List<ProductDTO> detail(int product_id) {
		return sqlSession.selectList("product.detail", product_id);
	}//detail() end
	
	public String product_image(int product_id) {
		return sqlSession.selectOne("product.product_image", product_id);
	}//product_image() end
	
	public void delete(int product_id) {
		sqlSession.delete("product.delete", product_id);
	}//delete() end
	
	/* 장바구니 개수 조회 */
	public List<Map<String, Object>> cartcnt(String member_id){
		return sqlSession.selectList("cart.cartcnt", member_id);
	}//cartcnt() end
	
}//class end