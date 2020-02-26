package com.kail.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kail.demo.v1.member.model.MemberModel;
import com.kail.demo.v1.member.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j 
@Controller
public class JspController {
	
	@Autowired
	MemberService memberService;	
	
	boolean result = true;
	
	@RequestMapping(value="/")      // localhost
	public String main() {
		// 로그인 정보 여부 확인 
		// 없을 경우 로그인 화면으로 리다이렉트 
//		if (result) {
			return "redirect:/login_Admin";
/*		} else {
			return "/index_Admin";
		}*/
	}
	
	@RequestMapping(value="/login_Admin") 
	public String login(HttpServletRequest req){ 
		
		HttpSession session = req.getSession();
		log.debug("data chk : " + session.getAttribute("userId"));


		if (result) {
			System.out.println("chk login admin1");
			return "/login_Admin";
		} else {
			System.out.println("chk login admin2");
			return "/index_Admin";
		}	
	}
	
	@RequestMapping(value="/login_Admin/login", method=RequestMethod.POST) 
	public String login1(HttpServletRequest req){ 
		MemberModel model = new MemberModel();
		HttpSession session = req.getSession();
		log.debug("data chk : " + session.getAttribute("userId"));
		System.out.println("chk data :  "+ session.getAttribute("userId"));
		model.setUserId(req.getParameter("userId"));
		model.setUserPw(req.getParameter("userPw"));
		
		String userName = memberService.loginUserInfo(model);
		MemberModel vo = new MemberModel();
		if (userName == null ) {
			session.setAttribute("member", null);
		} else {
			vo.setUserName(userName);
			session.setAttribute("member", vo);
		}
		return "redirect:/index_Admin";
//		if (result) {
//			System.out.println("chk login admin1");
//			return "/login_Admin";
//		} else {
//			System.out.println("chk login admin2");
//			return "/index_Admin";
//		}	
	}
	
	@RequestMapping(value="/index_Admin") 
	public String index(HttpSession session){ 
		
//		if (!"".equals(session.getAttribute("userId"))) {
//			result = false;
//		}
		
//		if (result) {
//			return "redirect:/login_Admin";
//		} else {
			return "/index_Admin";
//		}
	}
	// 로그인화면 작업 (security 이용고민)
}
