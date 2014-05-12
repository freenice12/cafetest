package dao;

import logic.Member_VO;

public interface Member_DAO {
	Member_VO findByUserEmailAndPasswd(String _user_email, String _user_passwd);

}
