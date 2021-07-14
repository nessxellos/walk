package com.project.walk.service;

import com.project.walk.vo.BoardLike;

public interface BoardLikeService {
	
	public void addLike(BoardLike boardLike);
	
	public void totLike();
	
	public void subLike();
}
