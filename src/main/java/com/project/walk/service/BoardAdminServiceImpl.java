package com.project.walk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.walk.dao.AttachMapper;
import com.project.walk.dao.BoardAdminMapper;
import com.project.walk.vo.AttachVO;
import com.project.walk.vo.BoardAdminVO;

@Service
public class BoardAdminServiceImpl implements BoardAdminService {

	@Autowired
	private BoardAdminMapper boardadminMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
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
	public BoardAdminVO detail(int bnum) {
		// TODO Auto-generated method stub
		return boardadminMapper.detail(bnum);
	}

	@Override
	public String update(BoardAdminVO boardAdminVO) {
		// TODO Auto-generated method stub
		return boardadminMapper.update(boardAdminVO);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insertBoardAndAttaches(BoardAdminVO boardAdminVO, List<AttachVO> attachList) {
	
		boardadminMapper.insert(boardAdminVO);
		
		if (attachList.size() > 0) {
			for (AttachVO attachVO : attachList) {
			attachMapper.insertAttach(attachVO);
			}
		}
		
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return boardadminMapper.getTotalCount();
	}

	@Override
	public int nextBoardNum() {
		// TODO Auto-generated method stub
		return boardadminMapper.nextBoardNum();
	}

	@Override
	public void updateHitcount(int num) {
		// TODO Auto-generated method stub
		boardadminMapper.updateHitcount(num);
	}

}