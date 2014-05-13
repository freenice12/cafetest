package logic;

import java.util.Date;

public class Reservation_VO {

	private Member_VO _user_email;
	private Experience_VO _exp_no;
	private int _res_table_num;
	private Date _res_time;
	private Date _res_canceltime;
	private int _res_current_applicant;
	private int _res_max_applicant;
	private int _res_flag;
	private String _res_index_detail;
	
	
	
	public Member_VO get_user_email() {
		return _user_email;
	}
	public void set_user_email(Member_VO _user_email) {
		this._user_email = _user_email;
	}
	public Experience_VO get_exp_no() {
		return _exp_no;
	}
	public void set_exp_no(Experience_VO _exp_no) {
		this._exp_no = _exp_no;
	}
	public int get_res_table_num() {
		return _res_table_num;
	}
	public void set_res_table_num(int _res_table_num) {
		this._res_table_num = _res_table_num;
	}
	public Date get_res_time() {
		return _res_time;
	}
	public void set_res_time(Date _res_time) {
		this._res_time = _res_time;
	}
	public Date get_res_canceltime() {
		return _res_canceltime;
	}
	public void set_res_canceltime(Date _res_canceltime) {
		this._res_canceltime = _res_canceltime;
	}
	public int get_res_current_applicant() {
		return _res_current_applicant;
	}
	public void set_res_current_applicant(int _res_current_applicant) {
		this._res_current_applicant = _res_current_applicant;
	}
	
	public int get_res_max_applicant() {
		return _res_max_applicant;
	}
	public void set_res_max_applicant(int _res_max_applicant) {
		this._res_max_applicant = _res_max_applicant;
	}
	public int get_res_flag() {
		return _res_flag;
	}
	public void set_res_flag(int _res_flag) {
		this._res_flag = _res_flag;
	}
	public String get_res_index_detail() {
		return _res_index_detail;
	}
	public void set_res_index_detail(String _res_index_detail) {
		this._res_index_detail = _res_index_detail;
	}
	
	
	

	
	
	
}
