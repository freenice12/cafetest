package logic;


import logic.MemberCatalog;
import logic.MemberVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopImpl implements Shop {
	
	/**Notice by Inhee
	 * The Methods and Instances 
	 * of "Item_VO, Sale_VO, Cart_VO" shall be updated 
	 * by Mr.Kim*/ 

	
	/*@Autowired
	private SaleCatalog saleCatalog;*/
	
	@Autowired
	private MemberCatalog memberCatalog;

	@Override
	public MemberVo getMemberByUserEmailAndUserPasswd(String userEmail,
			String userPasswd) {
		// TODO Auto-generated method stub
		return this.memberCatalog.getMemberByUserEmailAndUserPasswd(userEmail, userPasswd);
	}

	@Override
	public void entryMember(MemberVo member) {
		// TODO Auto-generated method stub
		this.memberCatalog.entryMember(member);

	}

}
