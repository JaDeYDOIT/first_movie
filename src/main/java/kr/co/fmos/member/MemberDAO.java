package kr.co.fmos.member;

import java.util.Map;

<<<<<<< HEAD
public interface MemberDAO {
=======
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {

	
>>>>>>> 49fb42d715485f568cfa9ec545af0462cc6ec645
	public int memberInsert(MemberDTO dto);

	public String idcheck(String member_id);
<<<<<<< HEAD

	public int loginfailcheck(String member_id);

	public int logincussesscheck(Map<String, String> map);

	public String emailcheck(String member_email);

	public int membercheck(MemberDTO dto);

	public int sMembercheck(MemberDTO dto);

	public int sinsert(MemberDTO dto);

	public MemberDTO selectMemberById(String memberId);
=======
	
	public int loginfailcheck(String member_id);
	
	public int logincussesscheck(Map<String, String> map);
	
	public String emailcheck(String member_email);	
	
	public int membercheck(MemberDTO dto);	
	
	// 카카오 로그인 관련
	public int sMembercheck(MemberDTO dto);
	
	public int sinsert(MemberDTO dto);	
>>>>>>> 49fb42d715485f568cfa9ec545af0462cc6ec645
}
