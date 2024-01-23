package kr.co.fmos.customer;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InquireDAO {

	public InquireDAO() {
		System.out.println("-----ProductDAO()객체 생성됨");
	}//end
	
	@Autowired
	SqlSession sqlSession;
	
	public int inquireInsert(InquireDTO dto) {
		return sqlSession.insert("customer.noticeinsert", dto);
	}//insert() end
	
	public List<InquireDTO> oneselect(int inquire_kind) {
		return sqlSession.selectList("customer.oneselect", inquire_kind);
	}// movieList() end
	
	public List<InquireDTO> lostselect(int inquire_kind) {
		return sqlSession.selectList("customer.lostselect", inquire_kind);
	}// movieList() end
	
	public int oneInquireins(InquireDTO dto) {
		return sqlSession.insert("customer.oneinquireins", dto);
	}
	
	//mypage 나의 문의
	public List<InquireDTO> memberinquirelist(String member_id) {
		return sqlSession.selectList("customer.memberinquirelist", member_id);
	}
	
	public int lostInquireins(InquireDTO dto) {
		return sqlSession.insert("customer.lostInquireins", dto);
	}
	
	public int inquiredelete(int inquire_id) { 
		return sqlSession.delete("customer.inquiredelete", inquire_id); 
	}//delete() end

	
}//class end