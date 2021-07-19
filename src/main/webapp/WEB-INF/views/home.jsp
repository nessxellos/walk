<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>


  <div class="main-banner" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 align-self-center">
              <div class="owl-carousel owl-banner">
                <div class="item header-text">
                  <h6>산책을 하러가실까요?</h6>
                  <h2>강아지랑 산책 <em>친구들과 산책</em> 또는 <span>혼자 산책</span></h2>
                  <p>음하하하</p>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#contact">강아지랑 산책</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-11</a>
                    </div>
                  </div>
                </div>
                <div class="item header-text">
                  <h6>산책을 하러가실까요?</h6>
                  <h2>강아지랑 산책 <em>친구들과 산책</em> 또는 <span>혼자 산책</span></h2>
                  <p>음하하하</p>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#services">친구들과 산책</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-22</a>
                    </div>
                  </div>
                </div>
                <div class="item header-text">
                  <h6>산책을 하러가실까요?</h6>
                  <h2>강아지랑 산책 <em>친구들과 산책</em> 또는 <span>혼자 산책</span></h2>
                  <p>음하하하</p>
                  <div class="down-buttons">
                    <div class="main-blue-button-hover">
                      <a href="#video">혼자산책</a>
                    </div>
                    <div class="call-button">
                      <a href="#"><i class="fa fa-phone"></i> 010-33</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  

  


  <!-- Scripts -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/animation.js"></script>
  <script src="assets/js/imagesloaded.js"></script>
  <script src="assets/js/custom.js"></script>

  <script>
  // Acc
    $(document).on("click", ".naccs .menu div", function() {
      var numberIndex = $(this).index();

      if (!$(this).is("active")) {
          $(".naccs .menu div").removeClass("active");
          $(".naccs ul li").removeClass("active");

          $(this).addClass("active");
          $(".naccs ul").find("li:eq(" + numberIndex + ")").addClass("active");

          var listItemHeight = $(".naccs ul")
            .find("li:eq(" + numberIndex + ")")
            .innerHeight();
          $(".naccs ul").height(listItemHeight + "px");
        }
    });
  </script>

	<div class="container100">

	이메일은 ${memberVO.email } 입니다?
                <c:choose>
                	<c:when test="${ not empty memberVO }">
                	<br/>
                	${memberVO.username } 님 환영합니다.
                	
                		<li><a href="/member/logout">로그아웃</a></li>
                		<li><a href="/member/info">회원정보확인</a></li>
                		<li><a href="/member/modify">회원정보수정</a></li>
                		<li><a href="/member/remove">회원탈퇴</a></li><br/><br/>
                		<li><a href="/boarduser/insert">유저글쓰기</a><li>
                		<li><a href="/boardadmin/insert">admin글쓰기</a><li>
                		<li><a href="/member/list">회원 목록 보기</a></li>
                	</c:when>
                	<c:otherwise>
                		<li><a href="/join">회원가입</a></li>
                		<li><a href="/login">로그인</a></li>
                		<li><a href="/boarduser/list">게시판</a></li>
                	</c:otherwise>
                </c:choose>

    </div>
    
    <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          <div class="about footer-item">
            <div class="logo">
              <a href="#"><img src="assets/images/banner20.png" alt="Onix Digital TemplateMo"></a>
            </div>
            <a href="#">soulno@naver.com</a>
            <ul>
              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a href="#"><i class="fa fa-behance"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="services footer-item">
            <h4>서비스</h4>
            <ul>
              <li><a href="#">개발</a></li>
              <li><a href="#">성장</a></li>
              <li><a href="#">소셜 미디어 관리</a></li>
              <li><a href="#">웹 사이트 최적화</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="community footer-item">
            <h4>이용 약관</h4>
            <ul>
              <li><a href="#">사용방법</a></li>
              <li><a href="#">공지사항</a></li>
              <li><a href="#">Q & A</a></li>
              <li><a href="#">소개</a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="subscribe-newsletters footer-item">
            <h4>구독</h4>
            <p>자신의 아이디어를 메일로 보내주세요.</p>
            <form action="#" method="get">
              <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="이메일을 입력하세요." required="">
              <button type="submit" id="form-submit" class="main-button "><i class="fa fa-paper-plane-o"></i></button>
            </form>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="copyright">
            <p>2021 walk-Project. 
            <br>
            <a rel="nofollow" href="https://templatemo.com" title="free CSS templates"></a>Thanks you<br>
            
          </p>
          </div>
        </div>

      </div>
    </div>
  </footer>
</body>
</html>