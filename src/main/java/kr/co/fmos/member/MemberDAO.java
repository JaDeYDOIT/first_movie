package kr.co.fmos.member;

import java.util.Map;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {
	
	public int memberInsert(MemberDTO dto);//insert() end
	
	public String idcheck(String member_id);//idcheck() end
	
	public int logincheck(String member_id);//totalamount() end
	
	public String emailcheck(String member_email);//emailcheck() end
	
	public int membercheck(MemberDTO dto);
	
	// 카카오 로그인 관련
	public int sMembercheck(MemberDTO dto);
	
	public int sinsert(MemberDTO dto);//insert() endz
		
	public MemberDTO memberlist(String member_id);//memberList() end
	
	public void memberupdate(MemberDTO dto);//memberupdate() end
	
	public MemberDTO selectMemberById(String memberId);

}//class end
