package com.traveler.dao;

import java.util.List;

import com.traveler.mapper.RecommandMapper;
import com.traveler.model.Recommand;
import com.traveler.util.Pagination;

public class RecommandDao {
	RecommandMapper travelMapper;
	
	public void setTravelMapper(RecommandMapper mapper){
		this.travelMapper = mapper;
	}
	
	public List<Recommand> selectAllRecommand(){
		return travelMapper.selectAllRecommand();
	}
	
	public int selectCount(){
		return travelMapper.selectCount();
	}
	
	public List<Recommand> selectPage(Pagination paging){
		return travelMapper.selectPage(paging);
	}
	
	public int recommandInsert(Recommand recommand){
		return travelMapper.recommandInsert(recommand);
	}
}