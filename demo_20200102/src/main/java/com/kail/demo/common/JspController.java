package com.kail.demo.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kail.demo.v1.member.model.MemberModel;
import com.kail.demo.v1.member.service.MemberService;

import io.micrometer.core.instrument.util.StringUtils;
import lombok.extern.slf4j.Slf4j;

@Slf4j 
@Controller
public class JspController {
	
	@Autowired
	MemberService memberService;	
	
	boolean result = true;
	
	@RequestMapping(value="/")      // localhost
	public String main(HttpServletRequest req) {
		
		
		// 로그인 정보 여부 확인 
		// 없을 경우 로그인 화면으로 리다이렉트 
//		if (result) {
			return "redirect:/login_Admin";
	}
	
	@RequestMapping(value="/login_Admin") 
	public String login(HttpServletRequest request){ 
		
		MemberModel memberModel = new MemberModel();

		String resValue = null;
		String resUrl = null;

		// 세션 값 리턴 및 값이 없을 경우 세션 생성 
		HttpSession session = request.getSession(true);
		
		// session null 값 처리
		try {
			memberModel = (MemberModel) session.getAttribute("member");		
			resValue = memberModel.getUserName();
			
			if (StringUtils.isNotBlank(resValue)) {
				resUrl = "redirect:/index_Admin";
			}
		} catch (Exception e) {
			resUrl = "/login_Admin";
		}
		return resUrl;
	}
	
	@RequestMapping(value="/login_Admin/login") 
	public String login1(HttpServletRequest request){ 
		
		MemberModel model = new MemberModel();
		MemberModel vo = new MemberModel();
		
		HttpSession session = request.getSession();
		String resUrl = null;
		
		model.setUserId(request.getParameter("userId"));
		model.setUserPw(request.getParameter("userPw"));
		
		String userName = memberService.loginUserInfo(model);
		
		if (StringUtils.isNotBlank(userName)) {
			vo.setUserName(userName);
			session.setAttribute("member", vo);
			resUrl = "redirect:/index_Admin";
		} else {
			resUrl = "redirect:/login_Admin";
		}
		return resUrl;
	}
	
	@RequestMapping(value="/login_Admin/logout")
	public String logout(HttpServletRequest request) {
		
		String resUrl = "redirect:/login_Admin";
		
		request.getSession().removeAttribute("member");
		
		return resUrl;
	}
	
	@RequestMapping(value="/index_Admin") 
	public String index(HttpServletRequest request){ 
		MemberModel memberModel = new MemberModel();
		String resValue = null;
		String resUrl = null;
		
		// 세션 값 리턴 및 값이 없을 경우 세션 생성 
		try {
			HttpSession session = request.getSession(true);
			memberModel = (MemberModel) session.getAttribute("member");		
			resValue = memberModel.getUserName();
		} catch (Exception e) {
			log.info("##### Exception. Not Select User ");
		}
		
		if (StringUtils.isBlank(resValue)) {
			resUrl = "redirect:/login_Admin";
		} else {
			resUrl = "/index_Admin";
		}
		return resUrl;
	}
}
