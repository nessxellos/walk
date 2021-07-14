package com.project.walk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.walk.dao.BoardLikeMapper;
import com.project.walk.vo.BoardLike;

@Service
public class BoardLikeServiceImpl implements BoardLikeService {

	@Autowired
	BoardLikeMapper boardLikeMapper;
	
	@Override
	public void addLike(BoardLike boardLike) {
		boardLikeMapper.addLike(boardLike);
	}

	@Override
	public void totLike() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void subLike() {
		// TODO Auto-generated method stub
		
	}

}
