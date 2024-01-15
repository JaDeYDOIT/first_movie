package kr.co.fmos.member;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public interface MemberDAO {

	public int memberInsert(MemberDTO dto);
	
	public String idcheck(String member_id);
	
	public int logincheck(String member_id);
	
	public int loginfailcheck(String member_id);	
	
	public int logincussesscheck(Map<String, String> map);
	
	public String emailcheck(String member_email);
	
	public int membercheck(MemberDTO dto);
	
	// 카카오 로그인 관련
	public int sMembercheck(MemberDTO dto);
	
	public int sinsert(MemberDTO dto);	
	
	public MemberDTO memberlist(String member_id);
	
	public void memberupdate(MemberDTO dto);
	
	public MemberDTO selectMemberById(String memberId);
	
}//class end
