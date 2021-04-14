package edu.vinaenter.cland.daos;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import edu.vinaenter.cland.models.Category;

@Repository
public class CategoryDAO extends AbstractDAO{
	
	private static final String FIND_ALL = "SELECT cid,cname FROM categories ORDER BY cid DESC";
	private static final String FIND_ALL_PAGINATION = "SELECT cid,cname FROM categories ORDER BY cid DESC LIMIT ?,?";
	private static final String ADD = "INSERT INTO categories(cname) VALUES(?)";
	private static final String FIND_ONE = "SELECT cname,cid FROM categories WHERE cid=?";
	private static final String EDIT = "UPDATE categories SET cname = ? WHERE cid=?";
	private static final String DEL = "DELETE FROM categories WHERE cid=?";
	private static final String COUNT_CAT = "SELECT COUNT(*) AS count FROM categories";
	
	public List<Category> findAll(){
		return getJdbcTemplate().query(FIND_ALL, new BeanPropertyRowMapper<>(Category.class));
		
	}
	public int add(Category cat) {
		return getJdbcTemplate().update(ADD,new Object[] {cat.getCname()});
		
	}
	public Category findOne(int id) {
		return getJdbcTemplate().queryForObject(FIND_ONE, new Object[] {id}, new BeanPropertyRowMapper<>(Category.class));
	}
	public int edit(Category cat) {
		return getJdbcTemplate().update(EDIT, new Object[] {cat.getCname(), cat.getCid()});
	}
	public int del(int id) {
		return getJdbcTemplate().update(DEL, new Object[] {id});
	}
	public int countCat() {
		return getJdbcTemplate().queryForObject(COUNT_CAT, Integer.class);
	}
	public List<Category> findAll(int offset, int limit) {
		return getJdbcTemplate().query(FIND_ALL_PAGINATION,new Object[] {offset,limit}, new BeanPropertyRowMapper<>(Category.class));
	}
}
