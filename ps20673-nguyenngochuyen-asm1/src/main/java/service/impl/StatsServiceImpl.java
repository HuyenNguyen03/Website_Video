package service.impl;

import dto.VideoLikedInfo;

import java.util.List;

import dao.StatsDao;
import dao.impl.StatsDAOImpl;
import service.StatsService;

public class StatsServiceImpl implements StatsService {

	private StatsDao statsDao;

	public StatsServiceImpl() {
		statsDao = new StatsDAOImpl();
	}

	@Override
	public List<VideoLikedInfo> findVideoLikedInfo() {
		//Goi ham Dao tao de su dung

		return statsDao.findVideoLikedInfo();
	}
}
