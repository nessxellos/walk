<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	

<!DOCTYPE html>
<html>
<title>유저 정보 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<br />
		<h2>게시글 상세보기</h2>
		
		<br />
		<div class="form-group">
			<label for="title">게시글 번호:</label> <input type="text"
				class="form-control" id="id" name="id" value="${boarduser.bnum}"
				readonly="readonly">
		</div>
		<div class="form-group">
			<label for="title">제목 :</label> <input type="text"
				class="form-control" id="username" name="username"
				value="${boarduser.title}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="writer">작성자:</label> <input type="text"
				class="form-control" id="regdate" name="regdate"
				value="${boarduser.writer}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="writer">내용:</label> <input type="text"
				class="form-control" id="email" name="email"
				value="${boarduser.content}" readonly="readonly">
		</div>


		<button type="button" id="btnUpdate" class="btn btn-primary btn-sm"><a href="/boarduser/list">목록으로 가기</a></button>
		

	</div>
	<br />
	<br />
<script>

</script>
</body>
</html>