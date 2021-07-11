package com.project.walk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.walk.vo.MemberVO;

@Mapper
public interface MemberMapper {

	public void join(MemberVO memberVO); // 회원가입
	public MemberVO getMemberById(String username); // 로그인
	
	// 멤버 컨트롤러
	public MemberVO detail(int id);//회원 정보 상세보기
	public void update(MemberVO memberVO);//회원정보 수정
	public void delete(int id);//회원 탈퇴
	
	public List<MemberVO> list();
	
	
	
}
