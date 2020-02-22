package com.kail.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
public class JspController {
	
	boolean result = true;
	
	@RequestMapping(value="/")      // localhost
	public String main() {
		// 로그인 정보 여부 확인 
		// 없을 경우 로그인 화면으로 리다이렉트 
		if (result) {
			return "redirect:/login_Admin";
		} else {
			return "redirect:/index_Admin";
		}
	}
	
	@RequestMapping("/login_Admin") 
	public String login(){ 
		if (result) {
			return "/login_Admin";
		} else {
			return "redirect:/index_Admin";
		}	}
	
	@RequestMapping("/index_Admin") 
	public String index(){ 
		if (result) {
			return "redirect:/login_Admin";
		} else {
			return "/index_Admin";
		}
	}
	// 로그인화면 작업 (security 이용고민)
}
