package kr.co.fmos.member;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImp implements MemberDAO {

	public MemberDAOImp() {
		System.out.println("-----MemberDAOImp() 객체 생성됨");
	}// end

	@Autowired
	SqlSession sqlSession;

	@Override
	public int memberInsert(MemberDTO dto) {
		return sqlSession.insert("member.insert", dto);
	}// insert() end

	@Override
	public String idcheck(String member_id) {
		return sqlSession.selectOne("member.idcheck", member_id);
	}// idcheck() end

	@Override
	public String emailcheck(String member_email) {
		return sqlSession.selectOne("member.emailcheck", member_email);
	}// emailcheck() end

	@Override
	public int membercheck(MemberDTO dto) {
		return sqlSession.selectOne("member.membercheck", dto);
	}// membercheck() end

	@Override
	// 카카오 로그인 관련
	public int sMembercheck(MemberDTO dto) {
		return sqlSession.selectOne("member.smembercheck", dto);
	}// sMembercheck() end

	@Override
	public int sinsert(MemberDTO dto) {
		return sqlSession.insert("member.sinsert", dto);
	}// sinsert() end

	@Override
	public MemberDTO selectMemberById(String memberId) {
		return sqlSession.selectOne("member.selectMemberById", memberId);
	}// selectMemberById() end

	@Override
	public int loginfailcheck(String member_id) {
		return sqlSession.selectOne("member.loginfailcheck", member_id);
	}

	@Override
	public int logincussesscheck(Map<String, String> map) {
		return sqlSession.selectOne("member.logincussesscheck", map);
	}
}
