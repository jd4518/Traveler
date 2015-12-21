package com.traveler.service;


import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.transaction.annotation.Transactional;

import com.traveler.dao.RecommandDao;
import com.traveler.exception.RecommandRegisterException;
import com.traveler.model.Recommand;

public class RecommandRegisterService {

	RecommandDao recommandDao;
	
	public void setRecommandDao(RecommandDao dao) {
		this.recommandDao = dao;
	}
	
	@Transactional
	public int regist(Recommand recommand) {
		int id=0;
		try {
			id = recommandDao.recommandInsert(recommand);
		} catch (DataIntegrityViolationException e) {
			throw new RecommandRegisterException();
		}
		
		return id;
	}
}
