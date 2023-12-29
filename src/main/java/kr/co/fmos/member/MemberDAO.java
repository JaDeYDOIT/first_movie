package kr.co.fmos.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	public MemberDAO() {
		System.out.println("-----CartDAO() 객체 생성됨");
	}//end
	
	@Autowired
	SqlSession sqlSession;
	
	
	public int memberInsert(MemberDTO dto) {
		return sqlSession.insert("member.insert", dto);
	}//insert() end
	
	public String idcheck(String member_id) {
		return sqlSession.selectOne("member.idcheck", member_id);
	}//totalamount() end
	
	public String emailcheck(String member_email) {
		return sqlSession.selectOne("member.emailcheck", member_email);
	}//totalamount() end
	
	public int membercheck(MemberDTO dto){
		return sqlSession.selectOne("member.membercheck", dto);
	}
	
	// 카카오 로그인 관련
	public int sMembercheck(MemberDTO dto){
		return sqlSession.selectOne("member.smembercheck", dto);
	}
	
	public int sinsert(MemberDTO dto) {
		return sqlSession.insert("member.sinsert", dto);
	}//insert() end
}
