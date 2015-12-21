package com.traveler.mapper;

import java.util.List;

import com.traveler.model.Member;
import com.traveler.util.Pagination;

public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	List<Member> selectPage(Pagination paging);
	
	int insert(Member member);
	int deleteAll();

}
