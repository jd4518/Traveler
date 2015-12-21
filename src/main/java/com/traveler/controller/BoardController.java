package com.traveler.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.traveler.command.ShareCommand;
import com.traveler.model.Share;
import com.traveler.model.ShareList;
import com.traveler.model.SharePage;
import com.traveler.service.ShareDetailService;
import com.traveler.service.ShareListService;
import com.traveler.service.SharePageService;
import com.traveler.service.ShareRegisterService;

@Controller
@RequestMapping("/traveler")
public class BoardController {
	static Log log = LogFactory.getLog(BoardController.class);
	
	
	 @Autowired		//필드 주입
	 ShareListService shareListService;
	 
	 @Autowired
	 ShareDetailService shareDetailService;
	 
	 @Autowired
	 SharePageService sharePageService;
	 
	 @Autowired
	 ShareRegisterService shareRegisterService;
	
	  
	@RequestMapping(value="recommandList.html")
	public String getRecommandListView(){
		log.info("getRecommandListView()...");
		
		return "traveler/travel/recommandList";
	}
	
	@RequestMapping(value="main.html")
	public String getShareMainView(){
		log.info("getMainView()...");
		
		return "traveler/travel/main";
	}
	
	   @RequestMapping(value="/shareList.html",method=RequestMethod.GET)
	   public String getShareListView()
	   {
	      log.info("getListView()...");
	      
	      return "traveler/travel/shareList";    
	   }
	
	   @RequestMapping(value="/detail.html",method=RequestMethod.GET)   
	   public String getDetailView()
	   {
	      log.info("getDetailView()...");
	      
	      return "traveler/travel/detail";      
	   }
	
	   @RequestMapping(value="/shareInsert.html",method=RequestMethod.GET)  
	   public String getAppendView()
	   {
	      log.info("getAppendView()...");
	      
	      return "traveler/travel/shareInsert";    
	   }
	
	 
	   @RequestMapping(value={"","/"}, method=RequestMethod.POST)				//POST로 요청을 하면 입력으로 응답
	   @ResponseBody
	   public ShareCommand postShareAppend(@RequestBody ShareCommand command){		
		      log.info("postShareAppend()... share.id = " + command.getId());
		      
		      command.validate();
		      
		      if(!command.isValid())		//에러발생시 ajax에서 errorcallback 호출
		      {
		    	  //throw
		      }
		      String id = shareRegisterService.regist(command.getShare());
		      command.setId(id);
		      return command;
	   }	
	
	
	@RequestMapping(value={"","/"},method=RequestMethod.GET) 
	@ResponseBody
	public ShareList getShareAll()
	{
		  log.info("getCityAll()....");
	      ShareList list = shareListService.getList(); 
	      return list; 
	}
	
	  
	   @RequestMapping(value="/{id:[0-9]+}",method=RequestMethod.GET)
	   @ResponseBody
	   public Share getShareItem(@PathVariable int id){
	      log.info("getShareItem().... id = "+id);
	      
	      Share share = shareDetailService.detail(id);
	      
	      return share;		//spring이 자동으로 json 형태로 리턴
	   }
	   
	//   @RequestMapping("/page/{pageNo:[\\-\\+]{0,1}[0-9]+}")
	//   {0,1} 0번 또는 1번 실행
	//   [\\-\\+] - + 부호를 나타내려고 \\사용해서 -와 + 표현
	   
	   /*
	    *    URL_GET_PAGE = [/city/page/{pageNo}]
	    *    Accept = application/json
	    */
	   @RequestMapping(value="/page/{pageNo:[0-9]+}",method=RequestMethod.GET)
	   @ResponseBody//json or xml로 return받기위해
	   public SharePage getSharePage(@PathVariable int pageNo){
	      log.info("pageNo = " + pageNo);
	      SharePage page = sharePageService.getPage(pageNo);	
	      return page;
	   }
	
}
