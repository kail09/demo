package com.kail.member.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger; 
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kail.member.model.MemberVO;
import com.kail.member.service.MemberService;

@Controller // 현재 클래스를 스프링에서 관리하 컨트롤러 bean 으로 생성 
@RequestMapping("/member/*") //모든 맵핑은 /member/ 를 상
public class MemberController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	MemberService memberService;
	
	// 01. 로그인 화면
	@RequestMapping("login.do")
	public String login() {
		return "member/login";
	}
	
	// 02. 로그인 처리
	@RequestMapping("loginCheck.do")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) {
		boolean result = memberService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		
		if (result == true ) {
			// main.jsp 으로 이동
			mav.setViewName("home");
			mav.addObject("msg", "success");
		} else {
			// login.jsp로 이동
			mav.setViewName("member/login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	// 03. 로그아웃 처리
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/login");
		mav.addObject("msg", "logout");
		
		return mav;
	}

}
