package logic;

import java.util.Date;

public class Reservation_VO {

	private MemberVo userEmail;
	private Experience_VO expNo;
	private int resTableNum;
	private Date resTime;
	private Date resCanceltime;
	private int resCurrentApplicant;
	private int resMaxApplicant;
	private int resFlag;
	private String resIndexDetail;
	
	
	
	public Reservation_VO() {
		super();
	}



	public MemberVo getUserEmail() {
		return userEmail;
	}



	public void setUserEmail(MemberVo userEmail) {
		this.userEmail = userEmail;
	}



	public Experience_VO getExpNo() {
		return expNo;
	}



	public void setExpNo(Experience_VO expNo) {
		this.expNo = expNo;
	}



	public int getResTableNum() {
		return resTableNum;
	}



	public void setResTableNum(int resTableNum) {
		this.resTableNum = resTableNum;
	}



	public Date getResTime() {
		return resTime;
	}



	public void setResTime(Date resTime) {
		this.resTime = resTime;
	}



	public Date getResCanceltime() {
		return resCanceltime;
	}



	public void setResCanceltime(Date resCanceltime) {
		this.resCanceltime = resCanceltime;
	}



	public int getResCurrentApplicant() {
		return resCurrentApplicant;
	}



	public void setResCurrentApplicant(int resCurrentApplicant) {
		this.resCurrentApplicant = resCurrentApplicant;
	}



	public int getResMaxApplicant() {
		return resMaxApplicant;
	}



	public void setResMaxApplicant(int resMaxApplicant) {
		this.resMaxApplicant = resMaxApplicant;
	}



	public int getResFlag() {
		return resFlag;
	}



	public void setResFlag(int resFlag) {
		this.resFlag = resFlag;
	}



	public String getResIndexDetail() {
		return resIndexDetail;
	}



	public void setResIndexDetail(String resIndexDetail) {
		this.resIndexDetail = resIndexDetail;
	}
	
	
	
	

	
	
	
}
