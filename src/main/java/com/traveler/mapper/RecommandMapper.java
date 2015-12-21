package com.traveler.mapper;

import java.util.List;

import com.traveler.model.Recommand;
import com.traveler.util.Pagination;

public interface RecommandMapper {
	List<Recommand> selectAllRecommand();
	List<Recommand> selectPage(Pagination paging);
	
	int selectCount();
	
}
