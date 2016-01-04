package com.traveler.service;


import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.traveler.dao.RecommandDao;
import com.traveler.exception.RecommandRegisterException;
import com.traveler.model.Recommand;

public class RecommandRegisterService {
	Log log = LogFactory.getLog(RecommandRegisterService.class);
	RecommandDao recommandDao;
	
	public void setRecommandDao(RecommandDao dao) {
		this.recommandDao = dao;
	}
	
	@Transactional
	public int regist(Recommand recommand,HttpServletRequest request) {
		int id=0;
		try {
			id = recommandDao.recommandInsert(recommand);
		     
		    MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		    Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		    MultipartFile multipartFile = null;
		    while(iterator.hasNext()){
		        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
		        if(multipartFile.isEmpty() == false){
		            log.debug("------------- file start -------------");
		            log.debug("name : "+multipartFile.getName());
		            log.debug("filename : "+multipartFile.getOriginalFilename());
		            log.debug("size : "+multipartFile.getSize());
		            log.debug("-------------- file end --------------\n");
		        }
		    }

		} catch (DataIntegrityViolationException e) {
			throw new RecommandRegisterException();
		}
		
		return id;
	}
}
