<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">



<style>
body{
margin-top: 120px;


}

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
h2{
font-family: poppins;
color: #ff695f;
}
</style>



</head>

<body>

   <center>
      <div id="input-wrap">
         <br/><br/>
<div align="center">
<span style=" font: italic bold 1.5em/1em Georgia, serif ;">
<br/>로그인
</span>
</div><br/><br/>
         <form action="login" method="post">
            <table>
      <br/>
               <tr>
                  <td><h3>Name :</h3></td>
                  <td><input type="text" name="username"></td>
               </tr>
   
               <tr>
                  <td><h3>Password :</h3></td>
                  <td><input type="password" name="password"></td>
               </tr>


            </table>
            <br>
            <div id="bt">
               <button>로그인</button>
            </div>
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