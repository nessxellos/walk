package com.project.walk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.walk.dao.BoardAdminMapper;
import com.project.walk.vo.AttachVO;
import com.project.walk.vo.BoardAdminVO;

@Service
public class BoardAdminServiceImpl implements BoardAdminService {

	@Autowired
	private BoardAdminMapper boardadminMapper;
	
	@Override
	public List<BoardAdminVO> list() {
		// TODO Auto-generated method stub
		return boardadminMapper.list();
	}

	@Override
	public void insert(BoardAdminVO boardAdminVO) {
		// TODO Auto-generated method stub
		boardadminMapper.insert(boardAdminVO);
	}

	@Override
	public BoardAdminVO detail(int id) {
		// TODO Auto-generated method stub
		return boardadminMapper.detail(id);
	}

	@Override
	public void update(BoardAdminVO boardAdminVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertBoardAndAttaches(BoardAdminVO boardadminVO, List<AttachVO> attachList) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int nextBoardNum() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateHitcount(int num) {
		// TODO Auto-generated method stub
		
	}

}