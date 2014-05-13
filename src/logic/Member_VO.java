package logic;

import java.io.Serializable;

public class Member_VO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String _user_email;
	private String _user_passwd;
	private String _alias;
	private String _phone;
	private String _postcode;
	private String _address;
	private int _user_level;
	private int _point;
	private int _num_of_article;
	private int _num_of_reply;
	private int _num_of_practice;
	
	public Member_VO() {
		super();
	}
	public String get_user_email() {
		return _user_email;
	}
	public void set_user_email(String _user_email) {
		this._user_email = _user_email;
	}
	public String get_user_passwd() {
		return _user_passwd;
	}
	public void set_user_passwd(String _user_passwd) {
		this._user_passwd = _user_passwd;
	}
	public String get_alias() {
		return _alias;
	}
	public void set_alias(String _alias) {
		this._alias = _alias;
	}
	public String get_phone() {
		return _phone;
	}
	public void set_phone(String _phone) {
		this._phone = _phone;
	}
	public String get_postcode() {
		return _postcode;
	}
	public void set_postcode(String _postcode) {
		this._postcode = _postcode;
	}
	public String get_address() {
		return _address;
	}
	public void set_address(String _address) {
		this._address = _address;
	}
	public int get_user_level() {
		return _user_level;
	}
	public void set_user_level(int _user_level) {
		this._user_level = _user_level;
	}
	public int get_point() {
		return _point;
	}
	public void set_point(int _point) {
		this._point = _point;
	}
	public int get_num_of_article() {
		return _num_of_article;
	}
	public void set_num_of_article(int _num_of_article) {
		this._num_of_article = _num_of_article;
	}
	public int get_num_of_reply() {
		return _num_of_reply;
	}
	public void set_num_of_reply(int _num_of_reply) {
		this._num_of_reply = _num_of_reply;
	}
	public int get_num_of_practice() {
		return _num_of_practice;
	}
	public void set_num_of_practice(int _num_of_practice) {
		this._num_of_practice = _num_of_practice;
	}
	

}
