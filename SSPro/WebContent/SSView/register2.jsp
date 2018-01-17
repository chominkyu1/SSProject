<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
  <!-- Bootsrap CDN -->
  <link rel="stylesheet" type="text/css" href="/SSPro/css/register2.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
  <header>
    <div class="navbar">
      <ul class="nav">
        <li class="item">
          <a href="#">Home</a>
        </li>
      </ul>
      <div class="logo">
        <img src="/SSPro/img/logo-p.png"> </div>
    </div>
  </header>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-6 bor">
          <h1 class="bodytxt2 hanguel">현지님 안녕하세요! 회원님의
            <br>공간 등록을 도와드리겠습니다.</h1>
          <br> <strong>2단계</strong>
          <br> <span>회원님의 공간 유형은 무엇인가요?</span>
          <br>
          <br>
          <form class="form-horizontal">
            <div class="col-xs-9">
              <div class="form-group"> <label class="form-label" for="subject">주소</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="주소" tabindex="3"> </div>
              <div class="form-group"> <label class="form-label" for="subject">공간 사이즈</label>
                <input type="text" class="form-control" id="size" name="size" placeholder="공간 사이즈" tabindex="3"> </div>
              <div class="form-group"> <label class="form-label" for="subject">매장번호</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="매장번호" tabindex="3"> </div>
              <div class="form-group"> <label class="form-label" for="subject">대여 시작일</label>
                <input type="text" class="form-control" id="startdatepick" name="subject" placeholder="대여 시작일" tabindex="3"> </div>
              <div class="form-group"> <label class="form-label" for="subject">대여 마감일</label>
                <input type="text" class="form-control" id="finishdatepick" name="subject" placeholder="대여 마감일" tabindex="3"> </div>
            </div>
          </form>
          <div class="row"> </div>
         <br> <button class="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><span class="span">계속</span></button>
        </div>
     <div class="col-md-6 collapse" id="collapseExample">
         <div>          <br> <strong>3단계</strong><br>
         <span>대표 이미지 사진을 선택해주세요.</span><br><br>
          <!-- Upload  -->
          <form id="file-upload-form" class="uploader">
            <input id="file-upload" type="file" name="fileUpload" accept="image/*"> <label for="file-upload" id="file-drag">
    <img id="file-image" src="#" alt="Preview" class="hidden">
    <div id="start">
      <i class="fa fa-download" aria-hidden="true"></i>
      <div>Select a file or drag here</div>
      <div id="notimage" class="hidden">Please select an image</div>
      <span id="file-upload-btn" class="btn btn-info">Select a file</span>
    </div>
    <div id="response" class="hidden">
      <div id="messages"></div>
      <progress class="progress" id="file-progress" value="0">
        <span>0</span>%
      </progress>
    </div>
  </label> </form>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
          <script src="/SSPro/js/index.js"></script>
        </div><div class="row"> </div>
         <br> <button class="button" type="button" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap" ><span class="span">등록</span></button>
      </div>
    </div>
      </div></div>
  <br>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">Congreturations!</h4>
      </div>
      <div class="modal-body">
        축하합니다! 등록이 완료되었습니다!
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Home</button>
        <button type="button" class="btn btn-primary">내 게시글 보러가기</button>
      </div>
    </div>
  </div>
</div>
  <footer id="footer">
    <div class="lower-footer">
      <div class="container-footer">
        <div class="wrapper left-wrapper">
          <div class="header">
            <img class="logo" src="/SSPro/img/section share-logo.png" alt="/SSPro/img/section share-logo.png">
            <div class="menu-btn-list">
              <a class="menu-btn a2" href="/about#tab:introduce">회사소개</a>
              <a class="menu-btn a2" href="/about#tab:recruit">채용</a>
              <a class="menu-btn a2" href="/host#tab:apply">운영문의</a>
              <a class="menu-btn a2" href="/privacy" target="_blank">개인정보정책</a>
            </div>
          </div>
          <div class="content"> © 2014-2016 · SectionShare(주), All Rights Reserved
            <br> 대표자 : 서초동벨리 사업자 등록번호 : 107 - 87 - 79911
            <br> 서울시 강남구 봉은사로 213 센트럴타워 14층
            <br> 대표번호 : 02-2018-3700
            <br> 입주 문의 : 02-2018-3703
            <br> 임대/투자 문의 : 02-2018-3712
            <br> 홍보/제휴 문의 : 02-2018-3715
            <br> </div>
        </div>
      </div>
    </div>
  </footer>
</body>

</html>