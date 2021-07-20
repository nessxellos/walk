<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<title>유저 정보 보기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>
<body>
	<div>
		<br />
		<h2>게시글 상세보기</h2>
		<br />
		<div>
			게시글 번호: <input type="text" id="id" name="id" value="${boardadmin.bnum}" readonly="readonly">
		</div>
		<div>
			제목 : <input type="text" id="username" name="username" value="${boardadmin.title}" readonly="readonly">
		</div>
		<div>
			작성자:<input type="text" id="regdate" name="regdate" value="${boardadmin.writer}" readonly="readonly">
		</div>
		<div>
			내용:<input type="text" id="email" name="email" value="${boardadmin.content}" readonly="readonly">
		</div>


		<button type="button" id="btnUpdate" >수정</button>
		<button type="button" id="btnDelete" >삭제</button>

	</div>
	<br />
	<br />
<div>
	<textarea rows="3" cols="50" id="msg"></textarea>
	<input type="button" value="댓글쓰기" id="btnComment">
</div><hr />
<div id="replyResult"></div>
<script>
var init = function() {
	$.ajax({
		type : "get",
		url : "/replyadmin/commentList",
		data : {
			"boardadminvo_id" : ${boardadmin.id}
		}
	}).done(
		function(resp) {
			var str = "";
			$.each(resp, function(key, val) {
				str += "작성자: " + val.username
				str += "내용: " + val.content
				str += "작성일: " + val.regdate
				str += "<a href='javascript:fdel(" + val.id + ")'>삭제</a><br>"
			})
				$("#replyResult").html(str);
	}).fail(function(e) {
		alert("실패")
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
			"boardadminvo_id" : ${boardadmin.id},
			"content" : $("#msg").val()
	}
	$.ajax({
		type : "post",
		url : "/replyadmin/commentInsert",
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
	location.href = "/boardadmin/update/${boardadmin.id}"
})

// 게시판 글 삭제
$("#btnDelete").click(function() {
	if (!confirm('정말 삭제할까요?'))
		return false;
	$.ajax({
		type : "delete",
		url : "/boardadmin/delete/"+$("#id").val(),
		success : function(resp) {
			if (resp == "success") {
				alert("삭제성공");
				location.href = "/boardadmin/list";
			}//if
		}//success
	})//ajax
}) //btnDelete

/* 댓글 삭제  */
function fdel(cnum) {
	//alert(cnum)
	$.ajax({
		type : "DELETE",
		url : "/replyadmin/delete/" + id
	}).done(function(resp) {
		alert("댓글이 삭제되었습니다.")
		init()
	}).fail(function(e) {
		alert("댓글 삭제 실패")
	})	
	} // fdel
init();
</script>

</body>
</html>