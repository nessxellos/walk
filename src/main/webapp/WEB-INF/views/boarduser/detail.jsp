<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<title>게시글 상세 보기</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div>
		<form>
			<br />
			<h2>게시글 상세보기</h2>
			<input type="hidden" id="username" name="username"
				value="${memberVO.username }"> <br />
			<div>
				게시글 번호: <input type="text" id="id" name="id"
					value="${boarduser.bnum}" readonly="readonly">
			</div>
			<div>
				제목 : <input type="text" id="title" name="title"
					value="${boarduser.title}" readonly="readonly">
			</div>
			<div>
				작성자: <input type="text" id="writer" name="writer"
					value="${boarduser.writer}" readonly="readonly">
			</div>
			<div>
				내용: <input type="text" id="email" name="email"
					value="${boarduser.content}" readonly="readonly">
			</div>
			<p>조회수 : ${boarduser.hitCnt}</p>
			<c:choose>
				<c:when test="${ not empty memberVO }">
					<p>추천수 :${ bl.cntlike }</p>
					<input type="button" value="좋아요" id="likeit" name="likeit">
				</c:when>
			</c:choose>

			<button type="button" id="btnUpdate">수정</button>
			<button type="button" id="btnDelete">삭제</button>
		</form>
	</div><br /><br />
<div>
	<textarea rows="3" cols="50" id="msg"></textarea>
	<input type="button" value="댓글쓰기" id="btnComment">
</div><hr />
<div id="replyResult"></div>
<script>
var init = function() {
	$.ajax({
		type : "get",
		url : "/reply/commentList",
		data : {
			"boarduservo_id" : ${boarduser.id}
		}
	}).done(
			function(resp) {				
				var str ="";
				$.each(resp, function(key, val){
					str += "작성자: " + val.username
					str += "내용: " + val.content
					str += "작성일: " + val.regdate
					str +=" <a href='javascript:fdel(" + val.id + ")'>삭제</a><br>"
					
				})		
				$("#replyResult").html(str);
	}).fail(function(e) {
		alret("실패")
	})
}
// 댓글쓰기
$("#btnComment").click(function() {
	if ($("#msg").val() == "") {
		alert("댓글을 입력하세요!");
		return;
	}
	data = {
		"username" : $("#username").val(),
		"boarduservo_id" : ${boarduser.id},
		"content" : $("#msg").val()
	}
	$.ajax({
		type : "post",
		url : "/reply/commentInsert",
		contentType : "application/json;charset=utf-8",
		data : JSON.stringify(data)
	}).done(function() {
		alert("댓글 작성 성공")
		init()
	}).fail(function() {
		alert("댓글 작성 실패")
	})
})

// 게시판 글 수정
$("#btnUpdate").click(function() {
	if (!confirm('정말 수정할까요?'))
		return false;
	location.href = "/update/${board.num}"
})

// 게시판 글 삭제
$("#btnDelete").click(function() {
	if (!confirm('정말 삭제할까요?'))
		return false;
	$.ajax({
		type : "delete",
		url : "/boarduser/delete/"+$("#id").val(),
		success : function(resp) {
			if (resp == "success") {
				alert("삭제성공");
				location.href = "/boarduser/list";
			}//if
		}//success
	})//ajax
}) //btnDelete

/* 댓글 삭제  */
function fdel(id) {
	//alert(id)
	$.ajax({
		type : "DELETE",
		url : "/reply/delete/" + id
	}).done(function(resp) {
		alert("댓글이 삭제되었습니다.")
		init()
	}).fail(function(e) {
		alert("댓글 삭제 실패")
	})
} // fdel
init();

$("#likeit").click(function(){
	data = {
			"b_id" : ${boarduser.id},
			"m_id" : $("#username").val()
	}
	$.ajax({
		type:"POST",
		url:"/boarduser/like/"+$("#id").val(),
		contentType:"application/json;charset=utf-8",
		data:JSON.stringify(data)
	})
	.done(function(){
		alert("'좋아요'가 성공적으로 반영되었습니다.");
		location.href = "/boarduser/detail/"+${boarduser.id};
	})
	.fail(function(){
	})
})
</script>
</body>
</html>