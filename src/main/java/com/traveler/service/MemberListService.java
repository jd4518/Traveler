package com.traveler.service;

import java.util.List;


import com.traveler.dao.MemberDao;
import com.traveler.model.Member;
import com.traveler.model.MemberList;

public class MemberListService {
	MemberDao memberDao;
	

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public MemberList getList() {
		List<Member> members = memberDao.selectAllMember();
		MemberList rtn = new MemberList();
		rtn.setMembers(members);
		
		return rtn;
	}

	
}
