<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
  <!-- Bootsrap CDN -->
  <link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">
  <link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">
    <link rel="stylesheet" type="text/css" href="/SSPro/css/AskView.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  <script src="js/resgister.js"></script>-->
</head>
<%
	String comment= request.getParameter("comment");
	request.setAttribute("comment",comment);
%>

<body>
	
  <nav class="navbar navbar-fixed-top" id="top_navbar">
   <div class="container">
      <div class="navbar-header">
         <a href=""> <img src="/SSPro/img/logo-p.png"
            alt="Section Share">
         </a>
      </div>
      <!-- 메뉴 모음 -->
      <ul class="nav navbar-nav navbar-right" id="top_navbar-nav">
         <!-- <li class="active"><a href="#">Main</a></li> -->
         <li><input type="checkbox" id="drawer-toggle" name="drawer-toggle"/>
         <label for="drawer-toggle" id="drawer-toggle-label"></label>
   <nav id="drawer">
      <ul><li><a href="#">공간대여게시글 작성</a></li>
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
   

  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h1 class="bodytxt2 hanguel"><%= request.getParameter("amember_name") %>님 안녕하세요! 회원님의
            <br>공간대여 요청을 도와드리겠습니다.</h1>
          <br> <strong>2단계</strong>
          <br> <span>세부 내역을 입력하여주세요.</span>
          <br>
          <br>
            <form class="form-horizontal" name="ask" method="post">
            <div class="col-xs-9">
 <div class="form-group"> <label class="form-label" for="subject">요청메세지</label>
                <textarea class="form-control" rows="5" id="comment" name="comment"></textarea><br> <br> 
                <label class="form-label" for="subject">포트폴리오 이미지</label>
                <input type="file" name="img" multiple></div>    
            </div>

          <div class="row"> </div>
          <button class="button" type="button" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">
          <span class="span">등록</span></button>
          </form>
        </div>
        <div class="col-md-6">
          <img src="/SSPro/img/flower.PNG" id="img"> </div>
      </div>
    </div>
  </div>
  
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Congreturations!</h4>
      </div>
      <div class="modal-body">
        축하합니다! 요청이 완료되었습니다!
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='http://localhost/SSPro/sectionshare/main.do'">Home</button>
        <button type="button" class="btn btn-primary">내 요청현황 보러가기</button>
      </div>
    </div>
  </div>
</div>
    <footer id="footer">
  <div class="lower-footer">
    <div class="container-footer">
      <div class="wrapper left-wrapper">
        <div class="header">
          <img class="logo" src="/SSPro/img/logo-w.png" alt="/SSPro/img/logo-w.png" />
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

    </div>
  </div>
</footer>

</body>

</html>