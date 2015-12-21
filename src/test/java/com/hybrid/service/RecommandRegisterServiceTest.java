package com.hybrid.service;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.traveler.exception.RecommandRegisterException;
import com.traveler.model.Recommand;
import com.traveler.service.RecommandRegisterService;

public class RecommandRegisterServiceTest {

	static Log log = LogFactory.getLog(RecommandRegisterServiceTest.class);
	
	public static void main(String[] args) {
		GenericXmlApplicationContext ctx=null;
		ctx = new GenericXmlApplicationContext(
				"spring/beans_service.xml", 
				"spring/beans_dao.xml");
		
//		RecommandPageService service = ctx.getBean(RecommandPageService.class);
		RecommandRegisterService service = ctx.getBean(RecommandRegisterService.class);
		
		Recommand recommand = new Recommand();
		
		recommand.setArea("이야");
		recommand.setContent("시끄러워");
		recommand.setName("장");
		recommand.setPicture("xxx.jpg");
		recommand.setTitle("증말");
		
		try {
			int id = service.regist(recommand);
			log.info("city regist id = " + id);
		} catch (RecommandRegisterException e) {
			log.error("city register error...", e);
		}
	
	
		ctx.close();
	}

}
