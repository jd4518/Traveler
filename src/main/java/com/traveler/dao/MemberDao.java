package com.traveler.dao;

import java.util.List;

import com.traveler.mapper.AdminMapper;
import com.traveler.model.Member;
import com.traveler.util.Pagination;
 
 
public class MemberDao {
	AdminMapper adminMapper;
	
	public void setAdminMapper(AdminMapper mapper) {
		this.adminMapper = mapper;
	}

	public int selectCount() {
		return adminMapper.selectCount();
	}

	public List<Member> selectAll() {
		return adminMapper.selectAll();
	}

	public List<Member> selectPage(Pagination paging) {
		return adminMapper.selectPage(paging);
	}
	
	public Member selectByNum(int num) {
		return adminMapper.selectByNum(num);
	}
	
	public int insert(Member member) {
		int rtn = adminMapper.insert(member);
		
		return member.getNum();
	}
	
	public int update(Member member) {
		return adminMapper.update(member);
	}
	
	public int deleteByNum(int num) {
		return adminMapper.deleteByNum(num);
	}
}
