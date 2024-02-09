package kr.co.fmos.member;

import java.util.Map;

public interface MemberDAO {
	public int memberInsert(MemberDTO dto);

	public String idcheck(String member_id);

	public int loginfailcheck(String member_id);

	public int logincussesscheck(Map<String, String> map);

	public String emailcheck(String member_email);

	public int membercheck(MemberDTO dto);

	public int sMembercheck(MemberDTO dto);

	public int sinsert(MemberDTO dto);

	public MemberDTO selectMemberById(String memberId);
	
	//마이 페이지
	public MemberDTO mypage(String member_id);

	//회원 삭제
	public int memberdelete(String member_pw);
	
//회원정보 수정 리스트
	public MemberDTO memberlist(String member_id);
	
	//회원정보 수정 업데이트
	public void memberupdate(MemberDTO dto);
	
}
