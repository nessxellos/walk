<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<title>유저 정보 보기</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

</head>
<body>
<form action="/boarduser/update" method="post"> 
      <br />
      <h2>게시글 상세보기</h2>
      <br />
      
      
      
      <div>
         게시글 번호: <input type="text"
           id="bnum" name="bnum" value="${boarduser.bnum}"
            readonly="readonly">
      </div>
      <div>
         제목 : <input type="text"
             id="title" name="title"
            value="${boarduser.title}" >
      </div>
      <div>
         작성자: <input type="text"
             id="writer" name="writer"
            value="${boarduser.writer}" readonly="readonly">
      </div>
      <div>
         내용: <input type="text"
             id="content" name="content"
            value="${boarduser.content}" >
      </div>
      
      <button type="submit" id="btnUpdate" >수정완료</button>
   
</form>

   <br />
   <br />

</body>
</html>