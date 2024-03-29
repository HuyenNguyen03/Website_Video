package service;

import java.util.List;
import java.util.Map;

import bean.User;
import dto.UserDto;

public interface UserService {
	User findById(Integer id);

	User findByEmail(String email);

	User findByUsername(String username);

	User login(String username, String password);

	User resetPassword(String email);

	List<User> findAll();

	List<User> findAll(int pageNumber, int pageSize);

	User create(String username, String password, String email);

	User update(User entity);

	User detele(String username);

	List<UserDto> findUserLikedByVideoVideoHref(String href);

	User register(String username, String password, String email);
}
