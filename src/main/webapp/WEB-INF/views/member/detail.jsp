<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>


<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>유저 정보 보기</title>

<style>
input {
	border-radius: 20px;
	width:500px;
	margin-bottom: 20px;
}

button {
	width: 200px;
	color: white;
	font-size: 15px;
	background-color: #4CAF50;
	border-radius: 20px;
	margin-bottom: 10%;
}

</style>

</head>
<body>
<br><br><br><br><br><br><br>
<div align="center">
<span style=" font: italic bold 1.5em/1em Georgia, serif ;">
회원 정보 상세보기
</span>
</div>
<hr>
	
	<div align="center">
	<div class="container">
		<br />
		<br />
		<table>
		<tr>
			<td>회원 등록번호: <input type="text" id="id" name="id" value="${member.id}"
				readonly="readonly"></td>
		</tr>
		
		<tr align="right">
			<td>유저명 : <input type="text"
				 id="username" name="username"
				value="${member.username}" readonly="readonly"></td>
				</tr>
				
			<tr align="right">
			<td>가입일: <input type="text"
				id="regdate" name="regdate"
				value="${member.regdate}" readonly="readonly"></td>
				</tr>
				
			<tr align="right">
			<td>이메일: <input type="text"
				 id="email" name="email"
				value="${member.email}" readonly="readonly"></td>
				</tr>
				
			<tr align="right">
			<td>주소:<input type="text"
				 id="addr" name="addr"
				value="${member.addr}" readonly="readonly"></td>
				</tr>
		</table>
		<a href="/member/update/${member.id}"><button  type="button" id="btnUpdate" >수정</button></a>
		<button type="button" id="btnDelete" >탈퇴</button>

	</div>
	<br />
	<br />
<script>
$("#btnDelete").click(function() {
	if (!confirm('정말 탈퇴하시겠습니까?'))
		return false;
	location.href = "/member/remove"
})

</script>
</body>
</html>