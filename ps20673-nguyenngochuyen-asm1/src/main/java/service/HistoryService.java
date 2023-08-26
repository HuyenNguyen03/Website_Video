package service;

import java.util.List;

import bean.History;
import bean.User;
import bean.Video;	

public interface HistoryService {
	List<History> findByUser(String username);
	List<History> findByUserAndIsLiked(String username);
	History findByUserIdAndVideoId(Integer userId,Integer videoId);
	History create(User user,Video video);
	boolean updateLikeOrUnlike(User user,String videoHref);
}
