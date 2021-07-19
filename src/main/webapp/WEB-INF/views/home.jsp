<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<style>
    #back {
		background:url(images/back01.jpg) no-repeat;
		width:100%;
     		height:1080px;
		background-attachment:fixed                  /* 배경이미지 고정*/
    }
    #back2 {
		background:url(images/back02-2.jpg) repeat-y;
		width:960px;
		height:3800px;     		
		margin-left:25%;
		margin-top:-25px;
		Opacity:.8;
    }
    #title h1 {
	position: absolute;
	background:url(images/title11.png) no-repeat;	
	width:850px;
    height:173px;
	float:left;
	position:relative;
	top: 50px;
	left: 20%;
	z-index:100;
    }
	#title h1 a:link{
		
		text-decoration:none;
	}
    /*  topMenu  */	
	#topMenu {
			z-index: 100;
		    	float:right;			/* 어울림형태로 요소 오른쪽에 배치 */
			position:relative;		/* 현재 삽입된 위치들 기준으로 상대좌표방식으로 위치지정 */
			top:-180px;				/* position:relative 의 속성 */
			left:120px;
			margin:10px;			/* 바깥여백설정 */
			margin-right:20%		/* 오른쪽바깥여백 설정*/
			
			
		  }
	#topMenu a {
			color:#333;				/* a의 글자색상설정 */
			text-decoration:none;			/* a의 링크밑줄 없앰 */
			font-weight:bold;			/* 글자굵기를 굵게설정 */
			font-family:"Arial Black",arial;	/* 글자체를 설정 */
	 	    }
	#topMenu a:hover{
				color:#00D8FF;			/* 마우스오버했을때 글자색상설정 */
		         }
	#topMenu li {
			list-style:none;
			font:12px "맑은 고딕", 돋움, arial; 	/* 글자크기,글자체설정 */
			float:left; 				/* 어울림형태로 요소왼쪽에 배치 */
		     }	
	#topMenu li.liStyle:after {
					content: "  l  ";	/* li의 liStyle클래스이후 컨텐트내용을 표시 */	
					white-space:pre;	/* 소스를입력한 그대로 줄바꿈과 공백이 적용 */
				   }
	/*-------------------------------------------------------- */
    
    a, a:hover {
      text-decoration: none;
    }
        
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
	z-index:100;
	position: relative;
	float:left;
	top: -5px;
	width: 100%;
	text-align: center;
	font:12px "맑은 고딕", 돋움, arial; 	/* 글자크기,글자체설정 */
	
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
		Opacity:1;
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
		box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	}
	.dropdown-content a {
		
		color: black;
		padding: 12px 16px;
		text-decoration: none;
		display: block;
	}
	.dropdown-content a:hover {background-color: #f1f1f1}
	.dropdown:hover .dropdown-content {
		display: block;
	}
	.dropdown:hover .dropbtn {
		background-color: #3e8e41;
	}
	/* 드랍 다운 버튼 끝 */
.img {
	position: relative;
	
}
    
	/*  이미지 슬라이드 시작 */
	/* Slideshow container */
	.slideshow-container {
	  top: 10px;
	  max-width: 1000px;
	  position: relative;
	  margin: auto;
	}
	/* Next & previous buttons */
	.prev, .next {
	  cursor: pointer;
	  position: absolute;
	  top: 0;
	  top: 63%;
	  width: auto;
	  margin-top: -22px;
	  padding: 16px;
	  color: white;
	  font-weight: bold;
	  font-size: 18px;
	  transition: 0.6s ease;
	  border-radius: 0 3px 3px 0;
	}
	/* Position the "next button" to the right */
	.next {
	  right: 0;
	  border-radius: 3px 0 0 3px;
	}
	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
	  background-color: rgba(0,0,0,0.8);
	}
	/* Caption text */
	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 30%;
	}
	/* The dots/bullets/indicators */
	/*.dot {
	  cursor:pointer;
	  height: 13px;
	  width: 13px;
	  margin-top: 5px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	} */
	.active, .dot:hover {
	  background-color: #717171;
	}
	/* Fading animation */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	}
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	/*  이미지 슬라이드 끝 */
	/*-------------------------------------------------------- */
		       
	#rigtmenu {
			font:16px "맑은 고딕", 돋움, arial; 	/* 글자크기,글자체설정 */
			width: 140px;				/* 넓이설정 */
	      		border: 1px solid #666;			/* 테두리크기,스타일,색상 설정 (실선) */
	      		background-color: #FFFFFF;		/* 배경색상설정 */
	      		padding : 15px;				/* 안쪽여백설정 */
	      		position : fixed;			/* 스크롤바이동에 상관없이 고정좌표형식으로 지정 */
	     		top : 20%;				/* position : fixed 속성 */
	      		right : 0px;				/* position : fixed 속성 */
			border-radius: 20px;
	     	   }
	#rigtmenu a {
			color:#000000;				/* 글자색상설정 */
			text-decoration:none;			/* a링크 밑줄을 없앰 */
			/* text-shadow:-1px 2px 2px #000;		글자 그림자설정 */
		    }	
	
	/*-------------------------------------------------------- */
    
  </style>
</head>
<body>

<body id="back">
  <div id="back2">
  <div id="banner"></div>
  <div id="banner2"></div>
	<div id="title">
    
    	<a href="/"><h1></h1></a>

  	</div>

	<nav>
		<ul id="topMenu">                
			<c:choose>
                <c:when test="${ memberVO.auth eq 3 }"><br/>               	
                	<li class="liStyle"><a href="/member/logout">로그아웃</a></li>
                	<li class="liStyle"><a href="/boarduser/insert">유저글쓰기</a><li>
				</c:when>
				<c:when test="${ memberVO.auth eq 2 }"><br/>               						
                	<li class="liStyle"><a href="/boardadmin/insert">admin글쓰기</a><li>
                	<li class="liStyle"><a href="/member/list">회원 목록 보기</a></li>
                </c:when>
                <c:otherwise>
					<li class="liStyle"><a href="/join">회원가입</a></li>
					<li class="liStyle"><a href="/login">로그인</a></li>
                </c:otherwise>
             </c:choose>
			
        </ul>

	</nav>
  
<!-- 드랍다운 버튼 시작 -->
	<div class="nav">
		
		<div class="dropdown">
			<button class="dropbtn" href="/boarduser/list">게시판</button>
			<div class="dropdown-content">
				
			 </div>
		</div>
		
		<div class="dropdown" href="#">
			<button class="dropbtn">산책</button>
			<div class="dropdown-content">
				
			 </div>
		</div>
		
		<div class="dropdown" href="/boardadmin/list">
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
		
<!-- 드랍다운 버튼 끝 -->

<!--  이미지 슬라이드 시작-->

	<div class="slideshow-container">
	  <div class="mySlides fade">
		<div class="numbertext"><!-- 1 / 4 --></div>
		<img src="images/img100.png" style="width:100%">
		<div class="text">	</div>
	  </div>

	  <div class="mySlides fade">
		<div class="numbertext"><!-- 2 / 4 --></div>
		<img src="images/img200.png" style="width:100%">
		<div class="text">	</div>
	  </div>

	  <div class="mySlides fade">
		<div class="numbertext"><!-- 3 / 4 --></div>
		<img src="images/img300.png" style="width:100%">
		<div class="text">	</div>
	  </div>

	  <div class="mySlides fade">
		<div class="numbertext"><!-- 4 / 4 --></div>
		<img src="images/img400.png" style="width:100%">
		<div class="text">	</div>
	  </div>

	  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	  <a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>
	<br>

	<div style="text-align:center">
		<span class="dot" onclick="currentSlide(1)"></span> 
		<span class="dot" onclick="currentSlide(2)"></span> 
		<span class="dot" onclick="currentSlide(3)"></span> 
		<span class="dot" onclick="currentSlide(4)"></span> 
	</div>
<!-- 이미지 슬라이드 끝 -->

<div class="mainimg">
<img src="images/main/main1.png" style="width:100%">
<img src="images/main/main2.png" style="width:100%">
<img src="images/main/main3.png" style="width:100%">
<img src="images/main/main4.png" style="width:100%">
</div>



  
  </div>
<!-- 중앙배경 끝 -->

<script src="js/Slideshow.js"></script>
	
	이메일은 ${memberVO.email } 입니다.
	회원권한은 ${memberVO.auth } 입니다.
	회원정보보기는 <a href="/member/list">회원 목록 보기</a>


    <li><a href="/boarduser/list">게시판</a></li>
    <li><a href="/boarduser/best">베스트 게시판</a></li>
    <li class="liStyle"><a href="/boardadmin/insert">admin글쓰기</a><li>
	
</body>
</html>