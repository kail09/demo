package com.kail.member.dao.impl;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.kail.member.dao.MemberDAO;
import com.kail.member.model.MemberVO;

public class MemberDAOImpl implements MemberDAO {
	// sql Session 객체를 스프링에서 생성하여 주입
	// 의존관계 주입(Dependency Injection), 느슨한 결합
	SqlSession sqlSession; // mybatis 실행객체
	
	// 1-1. 회원 로그인체크
	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne("member.loginCheck", vo);
		return (name == null) ? false : true;
	}
	
	// 1-2. 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sqlSession.selectOne("member.viewMember", vo);
	}
	
	// 2. 회원 로그아웃
	@Override
	public void logout(HttpSession sessin) {
		
	}
}
