<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- style -->
<style>
#back {
	background: url(images/back01.jpg) no-repeat;
	width: 100%;
	height: 1080px;
	background-attachment: fixed /* 배경이미지 고정*/
}
#back2 {
	background: url(images/back02-2.jpg) repeat-y;
	width: 960px;
	height: 1200px;
	margin-left: 25%;
	margin-top: -25px;
	Opacity: .8;
}
#title h1 {
	position: absolute;
	background: url(images/title11.png) no-repeat;
	width: 811px;
	height: 173px;
	float: left;
	position: relative;
	top: 50px;
	left: 20%;
}
/*  topMenu  */
#topMenu {
	float: right; /* 어울림형태로 요소 오른쪽에 배치 */
	position: relative; /* 현재 삽입된 위치들 기준으로 상대좌표방식으로 위치지정 */
	top: -185px; /* position:relative 의 속성 */
	left: 120px;
	margin: 10px; /* 바깥여백설정 */
	margin-right: 20% /* 오른쪽바깥여백 설정*/
}
#topMenu a {
	color: #333; /* a의 글자색상설정 */
	text-decoration: none; /* a의 링크밑줄 없앰 */
	font-weight: bold; /* 글자굵기를 굵게설정 */
	font-family: "Arial Black", arial; /* 글자체를 설정 */
}
#topMenu a:hover {
	color: #00D8FF; /* 마우스오버했을때 글자색상설정 */
}
#topMenu li {
	list-style: none;
	font: 12px "맑은 고딕", 돋움, arial; /* 글자크기,글자체설정 */
	float: left; /* 어울림형태로 요소왼쪽에 배치 */
}
#topMenu li.liStyle:after {
	content: "  l  "; /* li의 liStyle클래스이후 컨텐트내용을 표시 */
	white-space: pre; /* 소스를입력한 그대로 줄바꿈과 공백이 적용 */
}
/*-------------------------------------------------------- */
a, a:hover {
	text-decoration: none;
}
/**********/
#menu {
	margin-top: 100px;
	margin-left: 12%;
	border: 0px black solid;
	border-radius: 0px;
	clear: both;
	height: 4em;
}
/* 드랍 다운 버튼 시작 */
.nav {
	z-index: 100;
	position: relative;
	float: left;
	top: -15px;
	width: 100%;
	text-align: center;
	font: 12px "맑은 고딕", 돋움, arial; /* 글자크기,글자체설정 */
	/* 	border-top: solid 1px rgba(192, 192, 192, 0.35); 윗 줄 만들기
	border-bottom: solid 1px rgba(192, 192, 192, 0.35); 아랫 줄 만들기 */
}
.dropbtn {
	background-color: #FFFFFF;
	color: black;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
	Opacity: 1;
}
.dropdown {
	position: relative;
	display: inline-block;
}
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}
.dropdown-content a:hover {
	background-color: #f1f1f1
}
.dropdown:hover .dropdown-content {
	display: block;
}
.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
/* 드랍 다운 버튼 끝 */
/*-------------------------------------------------------- */
/*-------------------------------------------------------- */
/* 회원가입 */
#login {
	float: left;
	position: relative;
	top: 30px;
	line-height: 60px;
	left: 350px;
	border-radius:30px;
	border: 1px solid #444444;
}
#bt {
	margin-left: 90px;
	border-radius:30px;
}
/* 회원가입 끝 */
    #banner {
	background:url(images/banner10.png) no-repeat;
	width:90px;
	height:79px;
	position: absolute;
	margin-left: 40px;
	margin-top: 220px;
    }
    #banner2 {
	background:url(images/banner20.png) no-repeat;
	width:200px;
	height:80px;
	position: absolute;
	margin-left: 750px;
	margin-top: 220px;
    }
</style>
<title>Insert title here</title>
</head>
<body id="back">
  <div id="back2">
  <div id="banner"></div>
  <div id="banner2"></div>
	<div id="title">
    
    	<a href="main.html"><h1></h1></a>

  	</div>

	<nav>
		<ul id="topMenu">
			<li class="liStyle"><a href="login1_1.html">로그인</a></li>
			<li class="liStyle"><a href="mypage.jsp">마이페이지</a></li>
			<li class="liStyle"><a href="listCart.jsp">장바구니</a></li>
			
        </ul>

	</nav>
  
<!-- 드랍다운 버튼 시작 -->
	<div class="nav">
		
		<div class="dropdown">
			<button class="dropbtn" href="#">게시판</button>
			<div class="dropdown-content">
				
			 </div>
		</div>
		
		<div class="dropdown" href="#">
			<button class="dropbtn">산책</button>
			<div class="dropdown-content">
				
			 </div>
		</div>
		
		<div class="dropdown" href="#">
			<button class="dropbtn">추천</button>
			<div class="dropdown-content">
				
			 </div>
		</div>

		<div class="dropdown" href="#">
			<button class="dropbtn">잡담</button>
			<div class="dropdown-content">
				
			 </div>
		</div>

		<div class="dropdown" href="#">
			<button class="dropbtn">고객센터</button>
			<div class="dropdown-content">
				<a href="sub05_1.html">공지사항</a>
				<a href="sub05_2.html">후기게시판</a>
				<a href="sub05_3.html">자유게시판</a>
				<a href="sub05_4.html">질문과 답변</a>
			</div>
		</div>


		<div class="dropdown" href="#">
			<button class="dropbtn">경품추천</button>
			<div class="dropdown-content">
				<a href="index.html">룰렛</a>
			</div>
		</div>
		
</div>

<div id="login">
<form action="join" method="post">
<table>
<caption>
	<h1>회원 가입</h1>
</caption>

<tr>
<td>Name :  </td>
<td><input type="text" name="username"><br/></td>
</tr>

<tr>
<td>Password : </td>
<td><input type="password" name="password"><br/></td>
</tr>

<tr>
<td>email : </td>
<td><input type="email" name="email"><br/></td>
</tr>

<tr>
<td>addr : </td>
<td><input type="text" name="addr"><br/></td>
</tr>

</table>

<button>회원가입</button>
</form>
</div>
</div>
</body>
</html>