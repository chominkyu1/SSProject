<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta charset="utf-8">
        <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootsrap CDN -->
        <link rel="stylesheet" type="text/css" href="/SSPro/css/main2.css">
        <link rel="stylesheet" type="text/css" href="/SSPro/css/drawer.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>::SECTION SHARE::</title>
</head>
<body>
   <nav class="navbar navbar-inverse navbar-fixed-top" id="top_navbar">
   <div class="container">
      <div class="navbar-header">
         <a href="" class="navbar-brand"> <img src="/SSPro/img/logo_white.png"
            alt="Section Share">
         </a>
      </div>
      <!-- 메뉴 모음 -->
      <ul class="nav navbar-nav navbar-right" id="top_navbar-nav">
         <!-- <li class="active"><a href="#">Main</a></li> -->
         <li><input type="checkbox" id="drawer-toggle" name="drawer-toggle"/>
         <label for="drawer-toggle" id="drawer-toggle-label"></label>
   <nav id="drawer">
      <ul>
         <li><a href="#">내정보수정</a></li>
         <li><a href="#">요청 현황</a></li>
         <li><a href="#">서비스 정보</a></li>
         <li><a href="#">로그아웃</a></li>
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
      <img src="/SSPro/img/1.png" alt="...">
      <div class="carousel-caption">
       당신의 작품을 걸어보세요!
      </div>
    </div>
    <div class="item">
      <img src="/SSPro/img/2.png" alt="...">
      <div class="carousel-caption">
       SectionShare는 당신이 필요한, <br>딱! 적절한 공간을 제공합니다
      </div>
    </div>
    <div class="item">
      <img src="/SSPro/img/3.png" alt="...">
      <div class="carousel-caption">
        Don' worry, Just Wall it!<br>
        걱정하지 말고 일단 벽면에 걸어보세요!
      </div>
    </div>
 
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!--Search-->
<form class="search" action="login.do?action=searchhash" method="post">
  <input name="hash" type="search" placeholder="어떤 공간이 필요하세요?" required name="search">
  <button type="submit">Search</button>
</form>
<!--hashtag-->
    
      <div class="recomm_wrap">
         <ul class="recomm_list">
            <li class="recomm_item"><a class="hash" href="">#작업실</a></li>
            <li class="recomm_item"><a class="hash" href="">#독립오피스</a></li>
            <li class="recomm_item"><a class="hash" href="">#회의실</a></li>
            <li class="recomm_item"><a class="hash" href="">#분위기 좋은 카페</a></li>
            <li class="recomm_item"><a class="hash" href="">#공동 작업실</a></li>
            <li class="recomm_item"><a class="hash" href="">#파티룸</a></li>
         </ul>
      </div>

     
<div class="container2">

     <!-- Services -->
      <h1 class="my-4">Page Heading
        <small>Secondary Text</small>
      </h1>

      <div class="row">
     
      <c:forEach items="${spacepostlist }" end="5" var="post">
		 <div class="col-lg-4 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="/SSPro/img/11.jpg" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">${post.spacepost_shopname }</a>
              </h4>
              <p class="card-text">${post.spacepost_memo }</p>
            </div>
          </div>
        </div>
		 
      </c:forEach>
      </div>
      </div>
      
    <hr>

  
   
   <!-- Team Members Row -->
<div class="container3 background">
      <div class="row">
     
        <div class="col-lg-12" >
          <h2 class="my-4">Our Team</h2>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img class="rounded-circle img-fluid d-block mx-auto imground" src="/SSPro/img/angryCat.gif" alt="">
          <h3>박민수
            <small>행위예술가</small>
          </h3>
          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img class="rounded-circle img-fluid d-block mx-auto imground" src="/SSPro/img/angryCat.gif" alt="">
          <h3>한정숙
            <small>국가대표 변호사</small>
          </h3>
          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img class="rounded-circle img-fluid d-block mx-auto imground" src="/SSPro/img/angryCat.gif" alt="">
          <h3>전량원
            <small>2호선 매력폭발기관사</small>
          </h3>
          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img class="rounded-circle img-fluid d-block mx-auto imground" src="/SSPro/img/angryCat.gif" alt="">
          <h3>조민규
            <small>소아병동간호사</small>
          </h3>
          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img class="rounded-circle img-fluid d-block mx-auto imground" src="/SSPro/img/angryCat.gif" alt="">
          <h3>정현지
            <small>JYP아이돌연습생</small>
          </h3>
          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <img class="rounded-circle img-fluid d-block mx-auto imground" src="/SSPro/img/angryCat.gif" alt="">
          <h3>윤예원
            <small>중국방랑자</small>
          </h3>
          <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>
        </div>
      </div>
    </div>
</div>

    <!-- /.container -->
    <!--footer-->

    <footer id="footer">
  <div class="lower-footer">
    <div class="container-footer">
      <div class="wrapper left-wrapper">
        <div class="header">
          <img class="logo" src="/SSPro/img/section share-logo.png" alt="/SSPro/img/section share-logo.png" />

          <div class="menu-btn-list">
            <a class="menu-btn a2" href="/about#tab:introduce">회사소개</a>
            <a class="menu-btn a2" href="/about#tab:recruit">채용</a>
            <a class="menu-btn a2" href="/host#tab:apply">운영문의</a>
            <a class="menu-btn a2" href="/privacy" target="_blank">개인정보정책</a>
          </div>
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
          <a class="signup-btn a3" href="/users/sign_up">SectionShare 가입하기</a>

        <div class="sns-btn-list">
          <a class="sns-btn facebook-btn" href="https://www.facebook.com/welcomewoozoo/" target="_blank"></a>
          <a class="sns-btn instagram-btn" href="https://www.instagram.com/imwoozooin/" target="_blank"></a>
          <a class="sns-btn blog-btn" href="http://blog.woozoo.kr/" target="_blank"></a>
        </div>
      </div>
    </div>
  </div>
</footer>
    
    <hr><br>
    </div>
    

    </body></html>