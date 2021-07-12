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
		<h2>회원 정복</h2>
		<br />
		<form action="insert" method="post">
			<div class="form-group">
				<label for="title">글번호:</label> <input type="text"
					class="form-control" id="num" name="num" value="${board.num}"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="title">제목:</label> <input type="text"
					class="form-control" id="title" name="title" value="${board.title}"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="writer">글쓴이:</label> <input type="text"
					class="form-control" id="writer" name="writer"
					value="${board.writer}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="content">내용:</label>
				<textarea class="form-control" id="content" name="content"
					readonly="readonly">${board.content }</textarea>
			</div>

			<button type="button" id="btnUpdate" class="btn btn-primary btn-sm">수정</button>
			<button type="button" id="btnDelete" class="btn btn-primary btn-sm">삭제</button>

		</form>
	</div>
	<br />
	<br />
	<div align="center">
		<textarea rows="3" cols="50" id="msg"></textarea>
		<input type="button" value="댓글쓰기" class="btn btn-secondary btn-sm"
			id="btnComment">
	</div>
	<hr />
	<div id="replyResult"></div>
	

	<script>
	
	var init = function(){
		$.ajax({
			type :"get",
			url : "/reply/commentList",
			data : {"bnum" : $("#num").val()}
		})
		.done(function(resp){
//			alert(resp.length)
//			댓글의 갯수만큼 반복문
			var str = "";
			$.each(resp,function(key, val){
				str += val.userid+"  "
				str += val.content+"  "
				str += val.regdate+"  "
				str += "<a href='javascript:fdel("+val.cnum+")'>삭제</a><br>"
			})
			$("#replyResult").html(str);
		})
		.fail(function(e){
			alert("실패")
		})
	}
	
	
	/* 댓글쓰기 */
	$("#btnComment").click(function(){
		if($("#msg").val()==""){
			alert("댓글을 입력하세요");
			return;
		}
		data = {
				"bnum" : $("#num").val(),
				"content" : $("#msg").val()
		}
		
		$.ajax({
			type : "post",
			url : "/reply/commentInsert",
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(data)

		})
		.done(function(){
			alert("댓글 작성 성공")
			init()
		})
		.fail(function(){
			alert("댓글 작성 실패")
		})
	})
	
		$("#btnUpdate").click(function() {
			if (!confirm('수정하시겠습니까?'))
				return false;
			location.href = "/update/${board.num}"
		})

		$("#btnDelete").click(function() {
			if (!confirm('삭제하시겠습니까?'))
				return false;

			$.ajax({
				type : "delete",
				url : "/delete/${board.num}",
				success : function(resp) {
					if (resp == "success") {
						alert("삭제성공");
						location.href = "/list"
					} // if
				} // success
			}) //ajax
		}) //btnDelete
		
	function fdel(cnum){

		$.ajax({
			type : "delete",
			url : "/reply/delete/"+cnum
		})
		.done(function(resp){
			alert(resp + "번 댓글 삭제완료")
			init();
		})
		.fail(function(resp){
			alert("댓글 삭제 실패")
		})
	}
init();
	</script>
</body>
</html>