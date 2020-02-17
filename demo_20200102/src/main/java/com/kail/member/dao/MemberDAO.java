package com.kail.member.dao;

import javax.servlet.http.HttpSession;

import com.kail.member.model.MemberVO;

public interface MemberDAO {
	// 1. 회원 로그인 체크
	public boolean loginCheck(MemberVO vo);
	// 1-1.회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	// 2. 회원 로그아웃
	public void logout(HttpSession session);
	

}
