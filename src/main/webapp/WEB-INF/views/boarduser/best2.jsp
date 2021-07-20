<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>
<body>


<div>
  
  <c:forEach items="${ b_lists }" var="bestuser">
  <ul>
    <li>
      <a href="/boarduser/detail/${bestuser.id }">제목 : ${ bestuser.title }</a>
      <span>조회수 : ${ bestuser.hitCnt }</span>
      <span>추천수 : ${ bestuser.likeCnt }</span>
    </li>
  </ul>
  <br>
  </c:forEach>
</div>
<br><br>
<a href="insert">글쓰기</a>
</body>
</html>