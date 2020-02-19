package com.kail.demo.v1.member.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface MemberDao {
	@Select("select phone from demoDb.member where num = 1")
	String test();
}
