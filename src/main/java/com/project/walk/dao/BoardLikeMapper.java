package com.project.walk.dao;

import org.apache.ibatis.annotations.Mapper;

import com.project.walk.vo.BoardLike;

@Mapper
public interface BoardLikeMapper {
	
	public void addLike(BoardLike boardLike);
	
	public int totLike(int b_id);
	
	public void subLike();
	
}
