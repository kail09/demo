package com.kail.demo.v1.member.dao;

import org.apache.ibatis.annotations.Mapper; 

import com.kail.demo.v1.member.model.MemberModel;

@Mapper
public interface MemberDao {
	String test(MemberModel memberModel);
	
	void insertUserInfo(MemberModel memberModel);
	
	long countUserId(String userId);
	
	String loginUserInfo(MemberModel memberModel);
}
