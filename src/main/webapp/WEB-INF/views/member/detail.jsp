<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
		<h2>회원 정보</h2>
		<br />
		<div class="form-group">
			<label for="title">회원 등록번호:</label> <input type="text"
				class="form-control" id="id" name="id" value="${member.id}"
				readonly="readonly">
		</div>
		<div class="form-group">
			<label for="title">유저명 :</label> <input type="text"
				class="form-control" id="username" name="username"
				value="${member.username}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="writer">가입일:</label> <input type="text"
				class="form-control" id="regdate" name="regdate"
				value="${member.regdate}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="writer">이메일:</label> <input type="text"
				class="form-control" id="email" name="email"
				value="${member.email}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="writer">주소:</label> <input type="text"
				class="form-control" id="addr" name="addr"
				value="${member.addr}" readonly="readonly">
		</div>

		<button type="button" id="btnUpdate" class="btn btn-primary btn-sm">수정</button>
		<button type="button" id="btnDelete" class="btn btn-primary btn-sm">탈퇴</button>

	</div>
	<br />
	<br />

</body>
</html>