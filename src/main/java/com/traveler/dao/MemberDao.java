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
	
	public Member selectById(String id) {
		return adminMapper.selectById(id);
	}
	
	public String insert(Member member) {
		String rtn = adminMapper.insert(member);
		
		return member.getId();
	}
	
	public String update(Member member) {
		return adminMapper.update(member);
	}
	
	public String deleteById(String id) {
		return adminMapper.deleteById(id);
	}
}
