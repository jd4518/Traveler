package com.traveler.service;

import org.springframework.transaction.annotation.Transactional;

import com.traveler.dao.ShareDao;
import com.traveler.model.Share;

public class ShareDetailService {
	
	ShareDao sharedao;
	
	
	public void setShareDao(ShareDao dao)
	{
		this.sharedao = dao;
	}
	
	@Transactional
	public Share shareDetail(int boardNum) {
		
		Share share = sharedao.selectByboardNum(boardNum);
		
		return share;
	}

	
}
