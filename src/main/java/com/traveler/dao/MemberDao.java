package com.traveler.dao;

import java.util.List;


import com.traveler.mapper.adminMapper;
import com.traveler.model.Member;
 

public class MemberDao {
	adminMapper adminMapper;

	public void setAdminMapper(adminMapper Mapper) {
		this.adminMapper = Mapper;
	}

	public List<Member> selectAll() {
		return adminMapper.selectAll();
	}

}
