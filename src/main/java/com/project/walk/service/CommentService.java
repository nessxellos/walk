package com.project.walk.service;

import java.util.List;

import com.project.walk.vo.CommentVO;

public interface CommentService {
	
	public List<CommentVO> list();// 댓글리스트
	public void insert(CommentVO commentVO);// 댓글쓰기
	public void delete(int id);// 댓글삭제
}
