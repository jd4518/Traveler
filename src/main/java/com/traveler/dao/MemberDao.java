package com.traveler.dao;

import java.util.List;


import com.traveler.mapper.adminMapper;
import com.traveler.model.Member;
 

public class MemberDao {
	adminMapper adminMapper;

	public void setAdminMapper(adminMapper adminMapper) {
		this.adminMapper = adminMapper;
	}



	public List<Member> selectAll() {
		return adminMapper.selectAll();
	}

}
