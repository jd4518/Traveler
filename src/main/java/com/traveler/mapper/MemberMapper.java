package com.traveler.mapper;

import java.util.List;
import java.util.Map;

import com.traveler.model.Member;
import com.traveler.util.Pagination;

public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	List<Member> selectPage(Pagination paging);
	Member selectByIdAndPassword(Map<String, Object> idAndPassword);
	
	int insert(Member member);
	int deleteAll();

}
