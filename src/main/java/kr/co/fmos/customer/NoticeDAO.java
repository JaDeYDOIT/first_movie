package kr.co.fmos.customer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {
	@Autowired
	SqlSession sqlSession;
	public NoticeDAO() {
		System.out.println("-----noticeDAO()객체 생성됨");
	}//end
	
	public int noticeInsert(NoticeDTO dto) {
		return sqlSession.insert("customer.noticeinsert", dto);
	}//insert() end
	
	public List<NoticeDTO> faqselect(int notice_kind) {
		return sqlSession.selectList("customer.faqselect", notice_kind);
	}// movieList() end
	public List<NoticeDTO> faqselect() {
		return sqlSession.selectList("customer.mainfaq");
	}// movieList() end
	
	public List<NoticeDTO> noticeselect(int notice_kind) {
		return sqlSession.selectList("customer.noticeselect", notice_kind);
	}// movieList() end
	
	public List<NoticeDTO> noticeselect() {
		return sqlSession.selectList("customer.mainnotice");
	}// movieList() end
	
	public int noticeDelete(int notice_id) { 
		return sqlSession.delete("customer.noticeDelete", notice_id); 
	}//delete() end
}
