package dao;

import javax.sql.DataSource;


import logic.MemberVo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class Member_DAO_Impl implements Member_DAO {

	private static final String SELECT_BY_USEREMAIL_PASSWD = "SELECT * from member where user_email=? AND user_passwd=?";

	private static final String INSERT = "INSERT INTO member (user_email, user_passwd, alias, user_phone1, user_phone2, user_phone3, postcode, address1, address2)"
			+ " VALUES(:userEmail, :userPasswd, :userAlias, :user_phone1, :user_phone2, :user_phone3, :userPostcode, :userAddress1, :userAddress2)";

	private SimpleJdbcTemplate template;

	@Autowired
	public void setDataSource(DataSource dataSource){
		this.template = new SimpleJdbcTemplate(dataSource);
	}


	@Override
	public MemberVo findByUserEmailAndUserPasswd(String userEmail,
			String userPasswd) {
		RowMapper<MemberVo> mapper = new BeanPropertyRowMapper<MemberVo>(MemberVo.class);
		return this.template.queryForObject(SELECT_BY_USEREMAIL_PASSWD, mapper, userEmail, userPasswd);
	}


	@Override
	public void create(MemberVo member) {
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(member);
		this.template.update(Member_DAO_Impl.INSERT, parameterSource);
	}

}