package com.traveler.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.traveler.mapper.AdminMapper;
import com.traveler.mapper.MemberMapper;
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
	
<<<<<<< HEAD
	public String insert(Member member) {
=======
	public int insert(Member member) {
>>>>>>> 190b08a3af0f2306860d394baf0431f2e6ca81d2
		int rtn = adminMapper.insert(member);
		
		return member.getNum();
	}
	
	public int update(Member member) {
		return adminMapper.update(member);
	}
	
	public int deleteByNum(int num) {
		return adminMapper.deleteByNum(num);
	}
	
	MemberMapper memberMapper;
	
	public void setMemberMapper(MemberMapper mapper){
		this.memberMapper = mapper;
	}
	
	public int memberSelectCount() {
		return adminMapper.selectCount();
	}

	public List<Member> memberSelectAll() {
		return adminMapper.selectAll();
	}

	public List<Member> memberSelectPage(Pagination paging) {
		return memberMapper.selectPage(paging);
	}
	
	public String memberInsert(Member member) {
		int rtn = adminMapper.insert(member);
		
		return member.getId();
	}
	
	public int deleteAll() {
		return memberMapper.deleteAll();
	}
	
	public Member selectByIdAndPassword(String id, String password) {
		
		Map<String, Object> idAndPassword = new HashMap<String, Object>();
		idAndPassword.put("id", id);
		idAndPassword.put("password", password);
		
		return memberMapper.selectByIdAndPassword(idAndPassword);
	}
	
	
	
	
}
