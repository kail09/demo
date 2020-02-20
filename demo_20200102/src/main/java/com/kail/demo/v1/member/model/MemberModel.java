package com.kail.demo.v1.member.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("MemberModel")
@Data
public class MemberModel {
	int num;
	String phone;
}
