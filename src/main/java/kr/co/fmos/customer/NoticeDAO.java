package kr.co.fmos.customer;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.fmos.member.MemberDTO;
import kr.co.fmos.movie.MoviereviewDTO;

@Repository
public class NoticeDAO {

	public NoticeDAO() {
		System.out.println("-----noticeDAO()객체 생성됨");
	}//end
	
	@Autowired
	SqlSession sqlSession;
	
	public int noticeInsert(NoticeDTO dto) {
		return sqlSession.insert("customer.noticeinsert", dto);
	}//insert() end
	
	public List<NoticeDTO> faqselect(int notice_kind) {
		return sqlSession.selectList("customer.faqselect", notice_kind);
	}// movieList() end
	
	public List<NoticeDTO> noticeselect(int notice_kind) {
		return sqlSession.selectList("customer.noticeselect", notice_kind);
	}// movieList() end
	
	public int noticeDelete(int notice_id) { 
		return sqlSession.delete("customer.noticeDelete", notice_id); 
	}//delete() end
	
	
	//메인 페이지
	public List<NoticeDTO> mainfaq() {
		return sqlSession.selectList("customer.mainfaq");
	}// movieList() end
	public List<NoticeDTO> mainnotice() {
		return sqlSession.selectList("customer.mainnotice");
	}// movieList() end
	
	
}
