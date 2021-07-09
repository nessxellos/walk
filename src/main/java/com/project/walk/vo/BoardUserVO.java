package com.project.walk.vo;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardUserVO {
	private int id;
	private String title;
	private String writer;
	private String content;
	private MultipartFile uploadimg;
	private Date regDate;
	private int hitCnt;
	private int likeCnt;
//	private double location;
}
