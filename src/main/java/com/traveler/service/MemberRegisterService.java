package com.traveler.service;

import javax.sql.DataSource;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.transaction.annotation.Transactional;

import com.traveler.dao.MemberDao;
import com.traveler.exception.MemberRegisterException;
import com.traveler.model.Member;


public class MemberRegisterService {

	MemberDao memberDao;
	
	public void setMemberDao(MemberDao dao) {
		this.memberDao = dao;
	}
	
	DataSource dataSource;
	
	@Transactional
	public String regist(Member member) {
		String id;
		
		try {
			id = memberDao.insert(member);
		} catch (DataIntegrityViolationException e) {
			throw new MemberRegisterException();
		}
		return id;
	}
}
