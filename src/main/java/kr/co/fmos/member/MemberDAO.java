package kr.co.fmos.member;


@Repository
public interface MemberDAO {

	public String emailcheck(String member_email);

	public int membercheck(MemberDTO dto);

	public int sMembercheck(MemberDTO dto);

	public int sinsert(MemberDTO dto);

	public MemberDTO selectMemberById(String memberId);
}
