package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Member_DAO;

@Service
public class MemberCatalogImpl implements MemberCatalog {
	
	@Autowired
	private Member_DAO memberDao;
	
	
	@Override
	public Member_VO getMemberByUserEmailAndUserPasswd(String userEmail,
			String userPasswd) {
		// TODO Auto-generated method stub
		return this.memberDao.findByUserEmailAndUserPasswd(userEmail, userPasswd);
	}

	@Override
	public void entryMember(Member_VO member) {
		this.memberDao.create(member);
		
	}



}
