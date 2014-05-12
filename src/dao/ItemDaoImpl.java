package dao;

import java.util.List;

import javax.sql.DataSource;

import logic.Item_VO;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

public class ItemDaoImpl implements ItemDao {

	private SimpleJdbcTemplate template;

	public void setDataSource(DataSource dataSource) {
		this.template = new SimpleJdbcTemplate(dataSource);
	}

	private static final String SELECT_ALL = "SELECT item_no, item_name,origin,grade,processing,roasting_date,roasting_level,item_info,photo,price,from item";

	@Override
	public List<Item_VO> findAll() {
		// TODO Auto-generated method stub
		RowMapper<Item_VO> mapper = new BeanPropertyRowMapper<Item_VO>(Item_VO.class);
		return this.template.query(ItemDaoImpl.SELECT_ALL, mapper);
	}

}
