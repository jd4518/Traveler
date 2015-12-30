package com.traveler.service;


import com.traveler.dao.MemberDao;
import com.traveler.exception.LoginFailException;
import com.traveler.model.Member;

public class LoginService {

	MemberDao memberDao;
	
	
	public void setMemberDao(MemberDao dao){
		this.memberDao = dao;
	}
	
	public Member login(String id, String password) {
		
		
		
		Member member = memberDao.selectByIdAndPassword(id, password);
		if(member == null){
			throw new LoginFailException("해당 유저는 존재하지 않습니다");
			
		}
		
		return member;
	}
}
