package com.project.walk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.walk.service.MemberService;
import com.project.walk.vo.MemberVO;


@Controller
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("join")
	public String join() {
		return "join";
	}
	

}
