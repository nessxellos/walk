package com.project.walk.service;

import java.util.List;

import com.project.walk.vo.CommentUserVO;

public interface CommentAdminService {
	public List<CommentUserVO> list();// 댓글리스트
	public void insert(CommentUserVO commentVO);// 댓글쓰기
	public void delete(int id);// 댓글삭제
}