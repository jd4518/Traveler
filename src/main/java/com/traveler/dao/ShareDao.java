package com.traveler.dao;

import java.util.List;

import com.traveler.mapper.ShareMapper;
import com.traveler.model.Share;
import com.traveler.util.Pagination;

public class ShareDao {		//Mapper와 연결 의존관계
	ShareMapper shareMapper;
	
	//주입
	
	public void setShareMapper(ShareMapper mapper)
	{
		this.shareMapper = mapper;
	}
	
	public int selectCount()
	{
		return shareMapper.selectCount();
	}
	
	public List<Share> selectAll()
	{
		return shareMapper.selectAll();
	}

	public Share selectById(int id) {
		return shareMapper.selectById(id);
	}
	public List<Share> selectPage(Pagination paging)
	{
		return shareMapper.selectPage(paging);
	}
	
	public String insert(Share share)
	{
		int rtn = shareMapper.insert(share);
		
		return share.getId();
	}
	
}
