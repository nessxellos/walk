<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	home
	
	이메일은 ${memberVO.email } 입니다?
                <c:choose>
                	<c:when test="${ not empty memberVO }">
                	<br/>
                	${memberVO.username } 님 환영합니다.
                	
                		<li><a href="/member/logout">로그아웃</a></li>
                		<li><a href="/member/info">회원정보확인</a></li>
                		<li><a href="/member/modify">회원정보수정</a></li>
                		<li><a href="/member/remove">회원탈퇴</a></li><br/><br/>
                		<li><a href="/boarduser/insert">글쓰기</a><li>
                		
                		<li><a href="/member/list">회원 목록 보기</a></li>
                	</c:when>
                	<c:otherwise>
                		<li><a href="/join">회원가입</a></li>
                		<li><a href="/login">로그인</a></li>
                	</c:otherwise>
                </c:choose>
    <li><a href="/boarduser/list">게시판</a></li>
</body>
</html>