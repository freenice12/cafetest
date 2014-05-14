package logic;

public interface MemberCatalog {
	void entryMember(Member_VO member);
	Member_VO getMemberByUserEmailAndUserPasswd(String userEmail, String userPasswd);
}
