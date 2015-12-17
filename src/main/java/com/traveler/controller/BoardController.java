package com.traveler.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/traveler")
public class BoardController {
	static Log log = LogFactory.getLog(BoardController.class);
	
	
	@RequestMapping(value="recommandList.html")
	public String getRecommandListView(){
		log.info("getRecommandListView()...");
		
		return "traveler/travel/recommandList";
	}
	
	@RequestMapping(value="shareList.html")
	public String getShareListView()
	{
		log.info("getShareListView()...");
		
		return "traveler/travel/shareList";
	}
	
	
}
