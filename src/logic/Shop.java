package logic;

public interface Shop {
	Cart getCart();
	Integer calculate TotalAmount(List<Item> itemList);
	void checkout(Member_VO member, Cart cart);
	List<Item> getItemList();
	Item getItemByItemId(Integer itemId);
	Member_VO getMemberByUserEmailAndUserPasswd(String userEmail, String userPasswd);
	void entryMember(Member_VO member);

}
