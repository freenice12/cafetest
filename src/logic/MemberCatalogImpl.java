package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class MemberCatalogImpl implements MemberCatalog {
	
	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public MemberVo getMemberByUserEmailAndUserPasswd(String userEmail,
			String userPasswd) {
		// TODO Auto-generated method stub
		return this.memberDao.findByUserEmailAndUserPasswd(userEmail, userPasswd);
	}

	@Override
	public void entryMember(MemberVo member) {
		this.memberDao.create(member);
		
	}



}
