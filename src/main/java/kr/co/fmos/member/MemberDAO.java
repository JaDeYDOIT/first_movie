package kr.co.fmos.member;

<<<<<<< HEAD
import java.util.Map;
import java.util.List;

=======
>>>>>>> 050e549eb5cbdafeaaf62171395abc442624a84a
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

<<<<<<< HEAD
	public String emailcheck(String member_email);

	public int membercheck(MemberDTO dto);

	public int sMembercheck(MemberDTO dto);

	public int sinsert(MemberDTO dto);

	public MemberDTO selectMemberById(String memberId);
=======
	public MemberDAO() {
		System.out.println("-----MemberDAO() 객체 생성됨");
	}//end
	
	@Autowired
	SqlSession sqlSession;
	
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
	
	// 카카오 로그인 관련
	public int sMembercheck(MemberDTO dto){
		return sqlSession.selectOne("member.smembercheck", dto);
	}
	
	public int sinsert(MemberDTO dto) {
		return sqlSession.insert("member.sinsert", dto);
	}//insert() endz
		
	public MemberDTO memberlist(String member_id) {
		return sqlSession.selectOne("member.memberlist", member_id);
	}//memberList() end
	
<<<<<<< HEAD
	public void memberupdate(MemberDTO dto) {
		sqlSession.update("member.memberupdate", dto);
	}//memberupdate() end
	
}//class end
=======
>>>>>>> e62e91181430c7dcf1fe7c7e507418866377b16a
}
>>>>>>> 050e549eb5cbdafeaaf62171395abc442624a84a
