package dao;

import java.util.List;

import bean.History;

public interface HistoryDao {
	List<History> findByUser(String username);

	List<History> findByUserAndIsLiked(String username);

	History findByUserIdAndVideoId(Integer userId, Integer videoId);

	History create(History entity);

	History update(History entity);

	History detele(History entity);
}
