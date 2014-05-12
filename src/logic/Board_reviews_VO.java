package logic;

import java.util.Date;

public class Board_reviews_VO {
	private int bd_no_rev;
	private Member_VO user_email;
	private String title_rev;
	private String content_rev;
	private Date date_rev;
	private int count_rev;
	private int recommend_rev;
	private String user_ip;
	public int getBd_no_rev() {
		return bd_no_rev;
	}
	public void setBd_no_rev(int bd_no_rev) {
		this.bd_no_rev = bd_no_rev;
	}
	public Member_VO getUser_email() {
		return user_email;
	}
	public void setUser_email(Member_VO user_email) {
		this.user_email = user_email;
	}
	public String getTitle_rev() {
		return title_rev;
	}
	public void setTitle_rev(String title_rev) {
		this.title_rev = title_rev;
	}
	public String getContent_rev() {
		return content_rev;
	}
	public void setContent_rev(String content_rev) {
		this.content_rev = content_rev;
	}
	public Date getDate_rev() {
		return date_rev;
	}
	public void setDate_rev(Date date_rev) {
		this.date_rev = date_rev;
	}
	public int getCount_rev() {
		return count_rev;
	}
	public void setCount_rev(int count_rev) {
		this.count_rev = count_rev;
	}
	public int getRecommend_rev() {
		return recommend_rev;
	}
	public void setRecommend_rev(int recommend_rev) {
		this.recommend_rev = recommend_rev;
	}
	public String getUser_ip() {
		return user_ip;
	}
	public void setUser_ip(String user_ip) {
		this.user_ip = user_ip;
	}
	
}
