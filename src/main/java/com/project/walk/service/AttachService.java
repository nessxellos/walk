package com.project.walk.service;

import java.util.List;

import com.project.walk.vo.AttachVO;

public interface AttachService {
	
	public int insertAttach(AttachVO attachVO);;
	
	public List<AttachVO> getAttachesByBno(int bno);
	
}
