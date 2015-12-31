package com.traveler.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.traveler.dao.MemberDao;
import com.traveler.model.Member;
import com.traveler.model.MemberPage;
import com.traveler.util.Pagination;

public class MemberPageService {
	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}

	@Transactional
	public MemberPage getPage(int pageNo) {
		
		Pagination paging = new Pagination();
		paging.setPageNo(pageNo);
		paging.setTotalItem(memberDao.selectCount());
		List<Member> memberList = memberDao.selectPage(paging);
		
		MemberPage page = new MemberPage();
		page.setPaging(paging);
		page.setMembers(memberList);
		
		return page;
	}

}
