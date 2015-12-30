package com.traveler.mapper;

import java.util.List;
import java.util.Date;
import com.traveler.model.Member;
import com.traveler.util.Pagination;

public interface AdminMapper {
	
	int selectCount();
	List<Member> selectAll();
	List<Member> selectPage(Pagination paging);
	Member selectByNum(int num);
	
	int insert(Member member);
	
	int update(Member member);
	int deleteByNum(int num);
}
