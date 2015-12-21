package com.traveler.mapper;

import java.util.List;

import com.traveler.model.Share;
import com.traveler.util.Pagination;

public interface ShareMapper {

		int selectCount();
		List<Share> selectAll();
		Share selectById(int id);
		List<Share> selectPage(Pagination paging);
		
		int insert(Share share);
}
