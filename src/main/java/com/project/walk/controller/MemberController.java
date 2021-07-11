package com.project.walk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.walk.service.MemberService;
import com.project.walk.util.Script;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	MemberService memberservice;
	
	@GetMapping("/logout")
	public ResponseEntity<String> logout(HttpSession session) {
		// 세션 초기화
		session.invalidate();
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html; charset=utf-8");
		
		String str = Script.href("로그아웃 되었습니다.", "/");
		
		return new ResponseEntity<String>(str, headers, HttpStatus.OK);
	}
	
	
}
