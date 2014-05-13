package logic;

import java.util.List;

public interface Shop {
	Cart_VO getCart();
	Integer calculateTotalAmount(List<Item_VO> itemList);
	void checkout(Member_VO member, Cart_VO cart);
	List<Item_VO> getItemList();
	Item_VO getItemByItemId(Integer itemId);
	Member_VO getMemberByUserEmailAndUserPasswd(String userEmail, String userPasswd);
	void entryMember(Member_VO member);
}