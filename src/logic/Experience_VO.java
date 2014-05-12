package logic;

import java.util.Date;

public class Experience_VO {

	private String _exp_no;
	private String _exp_title;
	private Date _exp_date;
	private int _exp_fee;
	private int _pay__check;
	
	
	
	
	public String get_exp_no() {
		return _exp_no;
	}
	public void set_exp_no(String _exp_no) {
		this._exp_no = _exp_no;
	}
	public String get_exp_title() {
		return _exp_title;
	}
	public void set_exp_title(String _exp_title) {
		this._exp_title = _exp_title;
	}
	public Date get_exp_date() {
		return _exp_date;
	}
	public void set_exp_date(Date _exp_date) {
		this._exp_date = _exp_date;
	}
	public int get_exp_fee() {
		return _exp_fee;
	}
	public void set_exp_fee(int _exp_fee) {
		this._exp_fee = _exp_fee;
	}
	public int get_pay__check() {
		return _pay__check;
	}
	public void set_pay__check(int _pay__check) {
		this._pay__check = _pay__check;
	}
	
	
	
	
}
