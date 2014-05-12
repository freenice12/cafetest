package dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import logic.Member_VO;

public class Member_DAO_Impl implements Member_DAO {
	
	private static final String SELECT_BY_USEREMAIL_PASSWD = "SELECT user_email, user_passwd, alias,"
			+ " phone_num, postcode, address, user_level, point, num_of_article, num_of_reply, num_of_practice"
			+ " from member where user_email=? AND user_passwd=?";
	
	private SimpleJdbcTemplate template;
	
	public void setDataSource(DataSource dataSource){
		this.template = new SimpleJdbcTemplate(dataSource);
	}
			

	@Override
	public Member_VO findByUserEmailAndPasswd(String _user_email,
			String _user_passwd) {
		RowMapper<Member_VO> mapper = new BeanPropertyRowMapper<Member_VO>(Member_VO.class);
		return this.template.queryForObject(SELECT_BY_USEREMAIL_PASSWD, mapper, _user_email, _user_passwd);
	}

}