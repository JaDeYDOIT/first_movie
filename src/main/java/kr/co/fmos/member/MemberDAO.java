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
}
