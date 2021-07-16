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
<form action="/boarduser/update" method="post"> 
   <div class="container">
      <br />
      <h2>게시글 상세보기</h2>
      <br />
      
      
      
      <div class="form-group">
         <label for="title">게시글 번호:</label> <input type="text"
            class="form-control" id="bnum" name="bnum" value="${boarduser.bnum}"
            readonly="readonly">
      </div>
      <div class="form-group">
         <label for="title">제목 :</label> <input type="text"
            class="form-control" id="title" name="title"
            value="${boarduser.title}" >
      </div>
      <div class="form-group">
         <label for="writer">작성자:</label> <input type="text"
            class="form-control" id="writer" name="writer"
            value="${boarduser.writer}" readonly="readonly">
      </div>
      <div class="form-group">
         <label for="writer">내용:</label> <input type="text"
            class="form-control" id="content" name="content"
            value="${boarduser.content}" >
      </div>
      
      <button type="submit" id="btnUpdate" class="btn btn-primary btn-sm">수정완료</button>
   
   </div>
</form>

   <br />
   <br />

</body>
</html>