package com.project.walk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.walk.dao.AttachMapper;
import com.project.walk.dao.BoardUserMapper;
import com.project.walk.vo.AttachVO;
import com.project.walk.vo.BoardUserVO;

@Service
public class BoardUserServiceImpl implements BoardUserService {
	@Autowired
	private BoardUserMapper boarduserMapper;
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Override
	public List<BoardUserVO> list() {
		return boarduserMapper.list();
	}
	
	@Override
	public List<BoardUserVO> bestList() {
		return boarduserMapper.bestList();
	}

	@Override
	public void insert(BoardUserVO boardUserVO) {
		boarduserMapper.insert(boardUserVO);
	}

	@Override
	public BoardUserVO detail(int id) {
		boarduserMapper.updateHitcount(id);
		return boarduserMapper.detail(id);
	}

	@Override
	public void update(BoardUserVO boardUserVO) {
		// TODO Auto-generated method stub
		boarduserMapper.update(boardUserVO);
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getTotalCount() {
		return boarduserMapper.getTotalCount();
	}

	@Override
	public int nextBoardNum() {
		return boarduserMapper.nextBoardNum();
	}

	@Override
	public void updateHitcount(int num) {
		boarduserMapper.updateHitcount(num);
	}

	@Override
	public void insertBoardAndAttaches(BoardUserVO boarduserVO, List<AttachVO> attachList) {
		
		boarduserMapper.insert(boarduserVO);
		
		if (attachList.size() > 0) {
			for (AttachVO attachVO : attachList) {
			attachMapper.insertAttach(attachVO);
			}
		}
	}


}