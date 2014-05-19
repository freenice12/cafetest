package logic;

import java.util.Date;

public class Board_reviews_VO {
	private int bdNoRev;
	private MemberVo userEmail;
	private String titleRev;
	private String contentRev;
	private Date dateRev;
	private int countRev;
	private int recommendRev;
	private String userIp;
	public int getBdNoRev() {
		return bdNoRev;
	}
	public void setBdNoRev(int bdNoRev) {
		this.bdNoRev = bdNoRev;
	}
	public MemberVo getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(MemberVo userEmail) {
		this.userEmail = userEmail;
	}
	public String getTitleRev() {
		return titleRev;
	}
	public void setTitleRev(String titleRev) {
		this.titleRev = titleRev;
	}
	public String getContentRev() {
		return contentRev;
	}
	public void setContentRev(String contentRev) {
		this.contentRev = contentRev;
	}
	public Date getDateRev() {
		return dateRev;
	}
	public void setDateRev(Date dateRev) {
		this.dateRev = dateRev;
	}
	public int getCountRev() {
		return countRev;
	}
	public void setCountRev(int countRev) {
		this.countRev = countRev;
	}
	public int getRecommendRev() {
		return recommendRev;
	}
	public void setRecommendRev(int recommendRev) {
		this.recommendRev = recommendRev;
	}
	public String getUserIp() {
		return userIp;
	}
	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}
	
		
}
