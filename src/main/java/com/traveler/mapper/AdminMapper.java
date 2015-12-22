package com.traveler.mapper;

import java.util.List;

import com.traveler.model.Member;
import com.traveler.util.Pagination;

public interface AdminMapper {
	
	int selectCount();
	List<Member> selectAll();
	List<Member> selectPage(Pagination paging);
	Member selectById(String id);
	
	String insert(Member member);
	
	String update(Member member);
	String deleteById(String id);
}
