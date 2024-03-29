package dao.impl;

import java.util.List;
import java.util.Map;

import constant.NamedStored;

import bean.User;
import dao.AbstractDao;
import dao.UserDao;

public class UserDaoImpl extends AbstractDao<User> implements UserDao{

	@Override
	public User findById(Integer id) {
		
		return super.findById(User.class,id);
	}

	@Override
	public User findByEmail(String email) {
		String sql = "SELECT  o FROM User o WHERE o.email = ?0";
		return super.findOne(User.class, sql, email);
	}

	@Override
	public User findByUsername(String username) {
		String sql = "SELECT  o FROM User o WHERE o.username = ?0";
		return super.findOne(User.class, sql, username);
	}

	@Override
	public User findByUserAndPassword(String username, String password) {
		String sql = "SELECT o FROM User o WHERE o.username = ?0 AND o.password = ?1";
		return super.findOne(User.class, sql,username,password);
	}

	@Override
	public List<User> findAll() {
		
		return super.findAll(User.class, true);
	}
	

	@Override
	public List<User> findAll(int pageNumber, int pageSize) {
		return super.findAll(User.class, true,pageNumber,pageSize);
	}

	@Override
	public User create(User entity) {
		return null;
	}

	@Override
	public User update(User entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User detele(User entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findUserLikedByVideoVideoHref(Map<String, Object> params) {
		return super.callStored(NamedStored.FIND_USER_BY_HREF, params);
	}

}
