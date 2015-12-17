package com.traveler.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/traveler")
public class MemberController {
	static Log log = LogFactory.getLog(MemberController.class);
	
	@RequestMapping(value="login.html")
	public String getLoginView(){
		log.info("getLoginView()...");
		
		return "traveler/member/loginForm";
	}
	
	@RequestMapping(value="main.html")
	public String getMainView(){
		log.info("getMainView()...");
		
		return "traveler/member/main";
	}

	
	@RequestMapping(value="regist.html")
	public String getRegistView(){
		log.info("getRegistView()...");
		
		return "traveler/member/regist";
	}
	
}
