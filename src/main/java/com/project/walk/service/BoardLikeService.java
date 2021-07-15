package com.project.walk.service;

import com.project.walk.vo.BoardLike;

public interface BoardLikeService {
	
	public void addLike(BoardLike boardLike);
	
	public int totLike(int b_id);
	
	public void subLike();
}
