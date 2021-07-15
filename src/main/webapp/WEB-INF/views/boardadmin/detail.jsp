  
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<title>유저 정보 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<br />
		<h2>게시글 상세보기</h2>
		<br />
		<div class="form-group">
			<label for="title">게시글 번호:</label> <input type="text" class="form-control" id="id" name="id" value="${boardadmin.bnum}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="title">제목 :</label> <input type="text" class="form-control" id="username" name="username" value="${boardadmin.title}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="writer">작성자:</label> <input type="text" class="form-control" id="regdate" name="regdate" value="${boardadmin.writer}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="writer">내용:</label> <input type="text" class="form-control" id="email" name="email" value="${boardadmin.content}" readonly="readonly">
		</div>


		<button type="button" id="btnUpdate" class="btn btn-primary btn-sm">
			<a href="/boardadmin/list">확인</a>
		</button>
		<button type="button" id="btnUpdate" class="btn btn-primary  btn-sm">수정</button>
		<button type="button" id="btnDelete" class="btn btn-danger  btn-sm">삭제</button>

	</div>
	<br />
	<br />
	<script>
		var init = function() {
			$.ajax({
				type : "get",
				url : "/reply/commentList",
				data : {
					"bnum" : $("#num").val()
				}
			}).done(
					function(resp) {
						//alert(resp)
						var str = "";
						$.each(resp, function(key, val) {
							str += val.userid + " "
							str += val.content + " "
							str += val.regdate + " "
							str += "<a href='javascript:fdel(" + val.cnum
									+ ")'>삭제</a><br>"
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
				"bnum" : $("#num").val(),
				"content" : $("#msg").val()
			}
			$.ajax({
				type : "post",
				url : "/reply/commentInsert",
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(data)
			}).done(function() {
				alert("댓글 추가 성공")
				init()
			}).fail(function() {
				alert("댓글 추가 실패")
			})
		})
		$("#btnUpdate").click(function() {
			if (!confirm('정말 수정할까요?'))
				return false;
			location.href = "/update/${board.num}"
		})
		$("#btnDelete").click(function() {
			if (!confirm('정말 삭제할까요?'))
				return false;
			$.ajax({
				type : "delete",
				url : "/delete/${board.num}",
				success : function(resp) {
					if (resp == "success") {
						alert("삭제성공");
						location.href = "/list";
					}//if
				}//success
			})//ajax
		}) //btnDelete
		/* 댓글 삭제  */
		function fdel(cnum) {
			//alert(cnum)
			$.ajax({
				type : "DELETE",
				url : "/reply/delete/" + cnum
			}).done(function(resp) {
				alert(resp + "번 글 삭제 완료")
				init()
			}).fail(function(e) {
				alert("댓글 삭제 실패")
			})
		} // fdel
		init();
	</script>

</body>
</html>