package logic;

public interface MemberCatalog {
	void entryMember(Member_VO member);
	Member_VO getUserByUserEmailAndUserPass(String _user_email, String _user_passwd);
}
