<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>

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

<br><br><br><br><br><br><br>
<div align="center">
<span style=" font: italic bold 1.5em/1em Georgia, serif ;">
개인 정보 수정
</span>
</div>
<hr>
<form action="/member/update" method="post"> 
   <div class="container">

      <br />
      <div class="form-group">
         <label for="title">회원 등록번호:</label> <input type="text"
            class="form-control" id="id" name="id" value="${memberVO.id}"
         readonly="readonly">
      </div>
      
      <div class="form-group">
         <label for="title">유저명 :</label> <input type="text"
            class="form-control" id="username" name="username"
            value="${memberVO.username}" readonly="readonly">
      </div>
      
      <div class="form-group">
         <label for="title">패스워드 :</label> <input type="password"
            class="form-control" id="password" name="password"
            value="${memberVO.password}">
      </div>
      
      <div class="form-group">
         <label for="writer">가입일:</label> <input type="text"
            class="form-control" id="regdate" name="regdate"
            value="${memberVO.regdate}" readonly="readonly">
      </div>
      <div class="form-group">
         <label for="writer">이메일:</label> <input type="email"
            class="form-control" id="email" name="email"
            value="${memberVO.email}" >
      </div>
      <div class="form-group">
         <label for="writer">주소:</label> <input type="text"
            class="form-control" id="addr" name="addr"
            value="${memberVO.addr}">
      </div>

      <button type="submit" id="btnUpdate" class="btn btn-primary btn-sm">수정완료</button>
   </div>
</form>
   <br />
   <br />

</body>
</html>