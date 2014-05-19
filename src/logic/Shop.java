package logic;

import logic.MemberVo;

public interface Shop {


	MemberVo getMemberByUserEmailAndUserPasswd(String userEmail, String userPasswd);
	void entryMember(MemberVo member);
}