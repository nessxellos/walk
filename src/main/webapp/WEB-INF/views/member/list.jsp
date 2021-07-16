<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<body>
		<%-- <jsp:include page="/WEB-INF/views/include/header.jsp" /> --%>
<br/>
<h2>회원 목록 (total: ${ count })</h2>
<br/>
<c:forEach items="${ lists }" var="membervo"><br/>
<div class="card" style="width:400px">
<img class="card-img-top" src="img_avatar1.png" alt="Card image">
  <div class="card-body">
    <h4 class="card-title"><a href="/member/detail/${membervo.id }">작성자 : ${ membervo.username } </a><br /></h4>
    <p class="card-text">가입일 : <fmt:formatDate value="${ membervo.regdate }" pattern="yyyy-MM-dd"/><br /></p>
    <p class="card-text">이메일 : ${ membervo.email } <br /></p>
	<p class="card-text">주소 : ${ membervo.addr } <br /></p>
  </div>
</div>
</c:forEach>
</body>
</html>