<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
  <!-- Bootsrap CDN -->       
  <link rel="stylesheet" type="text/css" href="/SSPro/css/SpacePostView.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="/SSPro/css/SpacePostView.js"></script>
  <title>안녕하세요 title입니다.</title>
  <script></script>
</head>

<body>
  <nav class="navbar navbar-fixed-top" id="top_navbar">
    <div class="container">
      <div class="navbar-header">
        <a href="" class="navbar-brand">
          <img src="img/logo_white.png" alt="Section Share"> </a>
      </div>
      <!-- 메뉴 모음 -->
      <ul class="nav navbar-nav navbar-right" id="top_navbar-nav">
        <!-- <li class="active"><a href="#">Main</a></li> -->
        <li>
          <input type="checkbox" id="drawer-toggle" name="drawer-toggle"> <label for="drawer-toggle" id="drawer-toggle-label"></label>
          <nav id="drawer">
            <ul>
              <li>
                <a href="#">내정보수정</a>
              </li>
              <li>
                <a href="#">요청 현황</a>
              </li>
              <li>
                <a href="#">서비스 정보</a>
              </li>
              <li>
                <a href="#">로그아웃</a>
              </li>
            </ul>
          </nav>
        </li>
      </ul>
    </div>
  </nav>
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="/SSPro/img/cafe3.jpg" alt="...">
        <div class="carousel-caption"> </div>
      </div>
      <div class="item">
        <img src="/SSPro/img/cafe2.jpg" alt="...">
        <div class="carousel-caption"> </div>
      </div>
      <div class="item">
        <img src="/SSPro/img/cafe2.jpg" alt="...">
        <div class="carousel-caption"> </div>
      </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <br>
          <h1 class="display-4">Restaurant "서초동 밸리"</h1>
          <div class="col-md-12">
            <p class="lead">레스토랑 · 서울시 강남구 도곡동&nbsp;
              <br>대여자 : Hadoobidoop </p>
            <p class="lead"> We are friendly, fun, hardworking people happy to share our beautiful piece of paradise with you. We are writers, photographers, gardeners/farmers, divers, entrepreneurs, animal lovers, artistic, creative people dedicated to living peaceful,
              drama-free lives. We have been togethe…
              <br><br>
            </p>
            <hr>
            <h1 class="lead2">공간 주소 및 전화번호</h1><br>
            <p class="lead">서울시 강남구 도곡동 193-21 2층 갤러리 레스토랑"서초동 밸리" </p>
            <p class="lead">02-9384-2938 </p>
            <hr>
            <h1 class="lead2">해시태그</h1><br><br>
            <p class="lead">#도곡동#레스토랑#아트레스토랑#아트갤러리</p>
            <hr><br>
            <h1 class="lead2">후기 197개</h1>
            <br><br><br>
            <h1 class="lead2">작성자 : 2호선기관사님</h1>
            <p class="lead">We are friendly, fun, hardworking people happy to share our beautiful piece of paradise with you. We are writers, photographers, gardeners/farmers, divers, entrepreneurs, animal lovers, artistic, creative people dedicated to living peaceful,
              drama-free lives. We have been togethe… </p><br>
                 <h1 class="lead2">작성자 : 3호선기관사님</h1>
            <p class="lead">We are friendly, fun, hardworking people happy to share our beautiful piece of paradise with you. We are writers, photographers, gardeners/farmers, divers, entrepreneurs, animal lovers, artistic, creative people dedicated to living peaceful,
              drama-free lives. We have been togethe… </p><br>
                 <h1 class="lead2">작성자 : 4호선기관사님</h1>
            <p class="lead">We are friendly, fun, hardworking people happy to share our beautiful piece of paradise with you. We are writers, photographers, gardeners/farmers, divers, entrepreneurs, animal lovers, artistic, creative people dedicated to living peaceful,
              drama-free lives. We have been togethe… </p><br>
          </div>
        </div>
        <div class="col-md-4">
          <div class="reservations">
            <h1>Reservations:</h1>
            <p>Number Of Sections : </p>
            <input id="slider" type="range" name="rangeInput" min="1" max="10" value="1" onchange="updateTextInput(this.value);">
            <input type="text" id="textInput" value="1">
            <p>Start Date : </p>
            <input type="date" id="Start" class="floatLabel" name="start" value="<?php echo date('Y-m-d'); ?>">
            <p>End Date: </p>
            <input type="date" id="End" class="floatLabel" name="end" value="<?php echo date('Y-m-d'); ?>">
            <button>Submit</button>
          </div>
          <div class="thankyou"> <i class="fa fa-check-square-o"></i>
            <h1>Thank you!</h1>
            <p>The restaurant has been notified of your arrival and a confirmation email has been sent to you.</p>
          </div>
        </div>
      </div><br><br>
      <div class="row"> </div>
    </div>
  </div>
   <footer id="footer">
  <div class="lower-footer">
    <div class="container-footer">
      <div class="wrapper left-wrapper">
        <div class="header">
          <img class="logo" src="img/section share-logo.png" alt="img/section share-logo.png" />

         <!-- <div class="menu-btn-list">
            <a class="menu-btn a2" href="/about#tab:introduce">회사소개</a>
            <a class="menu-btn a2" href="/about#tab:recruit">채용</a>
            <a class="menu-btn a2" href="/host#tab:apply">운영문의</a>
            <a class="menu-btn a2" href="/privacy" target="_blank">개인정보정책</a>
          </div>-->
        </div>

        <div class="content">
          © 2014-2016 · SectionShare(주), All Rights Reserved<br>
          대표자 : 서초동벨리 사업자 등록번호 : 107 - 87 - 79911<br>
          서울시 강남구 봉은사로 213 센트럴타워 14층<br>
          대표번호 : 02-2018-3700<br>
		  입주 문의 : 02-2018-3703<br>
		  임대/투자 문의 : 02-2018-3712<br>
		  홍보/제휴 문의 : 02-2018-3715<br>
        </div>
      </div>

      <div class="wrapper right-wrapper">
        <div class="sns-btn-list">
          <a class="sns-btn facebook-btn" href="https://www.facebook.com/welcomewoozoo/" target="_blank"></a>
          <a class="sns-btn instagram-btn" href="https://www.instagram.com/imwoozooin/" target="_blank"></a>
          <a class="sns-btn blog-btn" href="http://blog.woozoo.kr/" target="_blank"></a>
        </div>
      </div>
    </div>
  </div>
</footer>
    
</body>

</html>