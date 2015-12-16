package com.traveler.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/traveler")
public class AdminController {
	static Log log = LogFactory.getLog(AdminController.class);
	
	@RequestMapping(value="login.html")
	public String getLoginView(){
		log.info("getLoginView()...");
		
		return "traveler/admin/login";
	}
	
	@RequestMapping(value="memberList.html")
	public String getmemberListView(){
		log.info("getmemberListView()...");
		
		return "traveler/admin/memberList";
	}

}
