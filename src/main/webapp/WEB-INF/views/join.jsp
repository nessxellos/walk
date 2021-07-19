<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>산책</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-onix-digital.css">
    <link rel="stylesheet" href="assets/css/animated.css">
    <link rel="stylesheet" href="assets/css/owl.css">
<!--

TemplateMo 565 Onix Digital

https://templatemo.com/tm-565-onix-digital

-->

<style>

input {
	border-radius: 20px;
}


button {
  width: 200px;
  color: white;
  font-size: 15px;
  background-color: #4CAF50;
  border-radius: 20px;
  margin-bottom: 10%;
}


table {
  border-collapse: separate;
  border-spacing: 0 30px;
}

</style>



  </head>

<body>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky wow slideInDown" data-wow-duration="0.75s" data-wow-delay="0s">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="/" class="logo">
              <img src="assets/images/banner20.png">
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">
              <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
              <li class="scroll-to-section"><a href="#services">사용방법</a></li>
              <li class="scroll-to-section"><a href="#about">관리자 게시판</a></li>
              <li class="scroll-to-section"><a href="#portfolio">유저 게시판</a></li>
              <li class="scroll-to-section"><a href="#video">BEST 인기글</a></li> 
              <li class="scroll-to-section"><a href="#contact">서비스 이용 약관</a></li> 
              <li class="scroll-to-section"><div class="main-red-button-hover"><a href="#contact">시작하기</a></div></li> 
            </ul>        
            <a class='menu-trigger'>
                <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

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
  
<center>
<div id="login">
<form action="join" method="post">
<table>


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
</center>






<div class="footer-dec">
    <img src="assets/images/footer-dec.png" alt="">
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