package com.project.walk.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	private int id;
	private String password;
	private String username;
	private Date regdate;
//	private String auth;
	
}
