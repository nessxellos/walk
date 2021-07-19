<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<body>
<br/>
<h2>회원 목록 (total: ${ count })</h2>
<br/>
<table class="bbsList" >
                <thead class="head">
                    <tr>
                        <th><a class="checkbox" href="" ></a></th> 
                        <th>번호</th>
                        <th>제목</th>   
                        <th>작성자</th>
                        <th>등록일</th>
                        <th>조회수</th>
                        
                    </tr>    
                </thead>
                <tbody class="body">
                <c:forEach items="${ lists }" var="membervo"><br/>
                    <tr>
                        <td class=""><a href="/member/detail/${membervo.id }">작성자 : ${ membervo.username } </a></td>
                        <td class="">가입일 : <fmt:formatDate value="${ membervo.regdate }" pattern="yyyy-MM-dd"/></td>
                        <td class="">하고싶은 말</td>
                        <td class="">이메일 : ${ membervo.email }</td>
                        <td class="">2016-05-23</td>
                        <td class=" txt_org">주소 : ${ membervo.addr }</td>
                        
                    </tr>
                    </c:forEach>
                    
                </tbody>

</table>
</body>
</html>