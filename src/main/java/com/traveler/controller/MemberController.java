package com.traveler.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.traveler.command.MemberCommand;
import com.traveler.service.MemberRegisterService;

@Controller
@RequestMapping("/traveler/member")
public class MemberController {
	static Log log = LogFactory.getLog(MemberController.class);
	
	@Autowired
	MemberRegisterService memberRegisterService;
	
	
	@RequestMapping(value="login.html")
	public String getLoginView(){
		log.info("getLoginView()...");
		
		return "traveler/member/loginForm";
	}
	
	@RequestMapping(value="index.html")
	public String getBootstrapView(){
		log.info("getLoginView()...");
		
		return "traveler/member/startbootstrap/template";
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
	
	@RequestMapping(value={"","/"}, method=RequestMethod.POST)
	@ResponseBody
	public MemberCommand postMemberAppend(@RequestBody MemberCommand command){
		log.info("postMemberAppend()...member.id = " + command.getId());
		
		command.validate();
		
		if (!command.isValid()) {
			
		}
		
		String id = memberRegisterService.regist(command.getMember());
		command.setId(id);
		
		return command;
	}
}
