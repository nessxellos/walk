package com.project.walk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.walk.vo.AttachVO;

@Mapper
public interface AttachMapper {
	
	public int insertAttach(AttachVO attachVO);
	
	public List<AttachVO> getAttachesByBno(int bno);
	
}
