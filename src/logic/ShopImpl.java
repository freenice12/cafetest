package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopImpl implements Shop {
	
	/**Notice by Inhee
	 * The Methods and Instances 
	 * of "Item_VO, Sale_VO, Cart_VO" shall be updated 
	 * by Mr.Kim*/ 
	@Autowired
	private ItemCatalog itemCatalog;
	
	/*@Autowired
	private SaleCatalog saleCatalog;*/
	
	@Autowired
	private MemberCatalog memberCatalog;

	
	@Override
	public Cart_VO getCart() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer calculateTotalAmount(List<Item_VO> itemList) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void checkout(Member_VO member, Cart_VO cart) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Item_VO> getItemList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Item_VO getItemByItemId(Integer itemId) {
		// TODO Auto-generated method stub
		return null;
	}
	

	@Override
	public Member_VO getMemberByUserEmailAndUserPasswd(String userEmail,
			String userPasswd) {
		// TODO Auto-generated method stub
		return this.memberCatalog.getMemberByUserEmailAndUserPasswd(userEmail, userPasswd);
	}

	@Override
	public void entryMember(Member_VO member) {
		// TODO Auto-generated method stub
		this.memberCatalog.entryMember(member);

	}

}
