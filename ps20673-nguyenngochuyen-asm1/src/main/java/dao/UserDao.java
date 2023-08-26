package dao;

import java.util.List;
import java.util.Map;

import bean.User;

public interface UserDao {
	//trả ra 1 user duy nhất
	User findById(Integer id);

	User findByEmail(String email);

	User findByUsername(String username);

	User findByUserAndPassword(String username, String password);

	List<User> findAll();

	List<User> findAll(int pageNumber, int pageSize);

	User create(User entity);

	User update(User entity);

	User detele(User entity);
	
	List<User> findUserLikedByVideoVideoHref(Map<String, Object> params);
}
