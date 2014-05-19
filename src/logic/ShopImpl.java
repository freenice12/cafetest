package logic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopImpl implements Shop {
	
	@Autowired
	private MemberCatalog memberCatalog;

	@Override
	public void entryMember(MemberVo member) {
		// TODO Auto-generated method stub
		this.memberCatalog.entryMember(member);

	}

}
