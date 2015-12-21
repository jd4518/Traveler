package com.traveler.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.traveler.model.RecommandList;
import com.traveler.model.RecommandPage;
import com.traveler.service.RecommandListService;
import com.traveler.service.RecommandPageService;

@Controller
@RequestMapping("/traveler")
public class BoardController {
	static Log log = LogFactory.getLog(BoardController.class);
	
	@Autowired
	RecommandListService recommandListService;
	
	@Autowired
	RecommandPageService recommandPageService;
	
	
	
	@RequestMapping(value="/recommandMain.html")
	public String getRecommandMainView(){
		log.info("getRecommandMainView()...");
		
		return "traveler/travel/recommandMain";
	}
	
	@RequestMapping(value="/list.html")
	public String getRecommandListView(){
		log.info("getRecommandListView()...");
		
		return "traveler/travel/recommandList";
	}
	
	@RequestMapping(value={"", "/"}, method=RequestMethod.GET)
	@ResponseBody
	public RecommandList getRecommandAll() {
		log.info("getRecommandAll...");
		
		RecommandList list = recommandListService.getList();
		
		return list;
	}
	
	@RequestMapping(value="/page/{pageNo:[0-9]+}", method=RequestMethod.GET)
	@ResponseBody
	public RecommandPage getRecommandPage(@PathVariable int pageNo) {
		log.info("getRecommandPage()... pageNo = " + pageNo);
		
		RecommandPage page = recommandPageService.getPage(pageNo);
		
		return page;
	}
}
