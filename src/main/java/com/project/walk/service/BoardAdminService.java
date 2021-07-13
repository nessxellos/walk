package com.project.walk.service;

import java.util.List;

import com.project.walk.vo.BoardAdminVO;

public interface BoardAdminService {
	
	public List<BoardAdminVO> list();//게시글 리스트 보기
	public void insert(BoardAdminVO boardAdminVO);//게시글 쓰기
	public BoardAdminVO detail(int id);//게시글 상세보기
	public void update(BoardAdminVO boardAdminVO);//게시글 수정
	public void delete(int id);//글 삭제
	
	
	
}
