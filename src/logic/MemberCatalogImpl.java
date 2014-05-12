package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Member_DAO;

@Service
public class MemberCatalogImpl implements MemberCatalog {
	
	@Autowired
	private Member_DAO memberDao;
	
	public void setMemberDao(Member_DAO memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public Member_VO getUserByUserEmailAndUserPass(String _user_email,
			String _user_passwd) {
		// TODO Auto-generated method stub
		return this.memberDao.findByUserEmailAndPasswd(_user_email, _user_passwd);
	}

	@Override
	public void entryMember(Member_VO member) {
		this.memberDao.create(member);
		
	}



}
