package com.traveler.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.traveler.model.MemberList;
import com.traveler.service.MemberListService;


@Controller
public class AdminController {
	static Log log = LogFactory.getLog(AdminController.class);
	
	@Autowired	// 필드 주입
	MemberListService memberListService;
	
	
	@RequestMapping(value="admin/main.html")
	public String getMainView(){
		log.info("getMainView()...");
		
		return "traveler/admin/main";
	}
	
	@RequestMapping(value="memberList.html")
	public String getmemberList(){
		log.info("getmemberList()...");
		
		return "traveler/admin/memberList";
	}
	
	/*
	 *  URL_GET_LIST = [/city] or [/city/]
	 *  Accept = application/json
	 */
	@RequestMapping(value={"", "/"}, method=RequestMethod.GET)
	@ResponseBody
	public MemberList getMemberList() {
		log.info("getMemberList()...");
		
		MemberList memberList = memberListService.getList();
		
		return memberList;
	}
	

}
