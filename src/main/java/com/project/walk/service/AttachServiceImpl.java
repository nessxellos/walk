package com.project.walk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.walk.dao.AttachMapper;
import com.project.walk.vo.AttachVO;

@Service
public class AttachServiceImpl implements AttachService {

	@Autowired
	private AttachMapper attachMapper;
	
	@Override
	public int insertAttach(AttachVO attachVO) {
		return attachMapper.insertAttach(attachVO);
	}

	@Override
	public List<AttachVO> getAttachesByBno(int bno) {
		return null;
	}
		
}