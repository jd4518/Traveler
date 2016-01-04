package com.hybrid.service;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.traveler.command.RecommandCommand;
import com.traveler.exception.RecommandRegisterException;
import com.traveler.model.Recommand;
import com.traveler.service.RecommandDetailService;
import com.traveler.service.RecommandModifyService;
import com.traveler.service.RecommandRegisterService;
import com.traveler.service.RecommandUnRegisterService;

public class RecommandRegisterServiceTest {

	static Log log = LogFactory.getLog(RecommandRegisterServiceTest.class);
	
	public static void main(String[] args) {
		GenericXmlApplicationContext ctx=null;
		ctx = new GenericXmlApplicationContext(
				"spring/beans_service.xml", 
				"spring/beans_dao.xml");
		
//		RecommandPageService service = ctx.getBean(RecommandPageService.class);
//		RecommandRegisterService service = ctx.getBean(RecommandRegisterService.class);
//		RecommandDetailService service = ctx.getBean(RecommandDetailService.class);
//		RecommandUnRegisterService service = ctx.getBean(RecommandUnRegisterService.class);
		RecommandModifyService service = ctx.getBean(RecommandModifyService.class);
		Recommand recommand = new Recommand();
		recommand.setListNo(20);
		recommand.setTitle("aaa");
		recommand.setArea("서울");
		recommand.setContent("nnn");
		recommand.setName("aasdf");
		
		
		
		try {
			service.update(recommand);
			log.info("update...");
		} catch (RecommandRegisterException e) {
			log.error("city register error...", e);
		}
	
	
		ctx.close();
	}

}
