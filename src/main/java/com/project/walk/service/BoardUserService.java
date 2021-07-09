package com.project.walk.service;

import java.util.List;

import com.project.walk.vo.BoardUserVO;

public interface BoardUserService {
	
	public List<BoardUserVO> list();//게시글 리스트 보기
	public void insert(BoardUserVO boardUserVO);//게시글 쓰기
	public BoardUserVO detail(int id);//게시글 상세보기
	public void update(BoardUserVO boardUserVO);//게시글 수정
	public void delete(int id);//글 삭제
	

	
	
	
}
