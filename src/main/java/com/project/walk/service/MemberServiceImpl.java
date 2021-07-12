package com.project.walk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.walk.dao.MemberMapper;
import com.project.walk.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper memberMapper;

	@Override
	public void join(MemberVO memberVO) {
		memberMapper.join(memberVO);
	}

	@Override
	public MemberVO getMemberById(String username) {
		return memberMapper.getMemberById(username);
	}

	@Override
	public MemberVO detail(int id) {
		return memberMapper.detail(id);
	}

	@Override
	public void update(MemberVO memberVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberVO> list() {
		return memberMapper.list();
	}

	@Override
	public int count() {
		return memberMapper.count();
	}



}