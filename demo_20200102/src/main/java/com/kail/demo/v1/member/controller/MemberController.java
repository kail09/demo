package com.kail.demo.v1.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kail.demo.v1.member.service.MemberService;

@RestController
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("/test")
	public String test() {
		
		memberService.test();
		
		return "chk";
		
	}
	
	@GetMapping("/sqlTest")
	public String mysqlTest() {
		
		memberService.mysqlTest();
		
		return "sqlTest";
		
	}

}
