<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



</head>
<body>


<div class="container mt-3">
  
  <c:forEach items="${ b_lists }" var="bestuser">
  <ul class="list-group">
    <li class="list-group-item d-flex justify-content-between align-items-center">
      <a href="/boarduser/detail/${bestuser.id }">제목 : ${ bestuser.title }</a>
      <span class="badge badge-primary badge-pill">조회수 : ${ bestuser.hitCnt }</span>
    </li>
    
  </ul>
  <br>
  </c:forEach>
</div>
<br><br>
<a href="insert">글쓰기</a>


</body>
</html>