package dao;

import logic.Member_VO;

public interface Member_DAO {
	void create(Member_VO member);
	Member_VO findByUserEmailAndUserPasswd(String userEmail, String userPasswd);

}
