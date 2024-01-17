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
<<<<<<< HEAD

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
=======
	
	public int memberInsert(MemberDTO dto) {
		return sqlSession.insert("member.insert", dto);
	}//insert() end
	
	public String idcheck(String member_id) {
		return sqlSession.selectOne("member.idcheck", member_id);
	}//idcheck() end
	
	public int logincheck(String member_id) {
		return sqlSession.selectOne("member.logincheck", member_id);
	}//totalamount() end
	
	public String emailcheck(String member_email) {
		return sqlSession.selectOne("member.emailcheck", member_email);
	}//emailcheck() end
	
	public int membercheck(MemberDTO dto){
		return sqlSession.selectOne("member.membercheck", dto);
	}
	
>>>>>>> 49fb42d715485f568cfa9ec545af0462cc6ec645
	// 카카오 로그인 관련
	public int sMembercheck(MemberDTO dto) {
		return sqlSession.selectOne("member.smembercheck", dto);
<<<<<<< HEAD
	}// sMembercheck() end

	@Override
	public int sinsert(MemberDTO dto) {
		return sqlSession.insert("member.sinsert", dto);
	}// sinsert() end
=======
	}
	
	public int sinsert(MemberDTO dto) {
		return sqlSession.insert("member.sinsert", dto);
	}//insert() endz
		
	public MemberDTO memberlist(String member_id) {
		return sqlSession.selectOne("member.memberlist", member_id);
	}//memberList() end
	
	public void memberupdate(MemberDTO dto) {
		sqlSession.update("member.memberupdate", dto);
	}//memberupdate() end
>>>>>>> 49fb42d715485f568cfa9ec545af0462cc6ec645

	public MemberDTO selectMemberById(String memberId) {
		return sqlSession.selectOne("member.selectMemberById", memberId);
	}// selectMemberById() end
<<<<<<< HEAD

	@Override
	public int loginfailcheck(String member_id) {
		return sqlSession.selectOne("member.loginfailcheck", member_id);
	}

	@Override
	public int logincussesscheck(Map<String, String> map) {
		return sqlSession.selectOne("member.logincussesscheck", map);
	}
=======
	
	public int logincussesscheck(Map<String, String> map) {
		return sqlSession.selectOne("member.logincussesscheck", map);
	}//totalamount() end
	
	public int loginfailcheck(String member_id) {
		return sqlSession.selectOne("member.loginfailcheck", member_id);
	}//totalamount() end

>>>>>>> 49fb42d715485f568cfa9ec545af0462cc6ec645
}
