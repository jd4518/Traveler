package com.traveler.service;


import org.springframework.transaction.annotation.Transactional;

import com.traveler.dao.RecommandDao;
import com.traveler.model.Recommand;

public class RecommandDetailService {

	RecommandDao recommandDao;
	
	public void setRecommandDao(RecommandDao dao) {
		this.recommandDao = dao;
	}
	
	@Transactional
	public Recommand detail(int listNo) {
		Recommand recommand = recommandDao.selectByTitle(listNo);
		
		return recommand;
	}
}
