<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta charset="utf-8">
  <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
  <!-- Bootsrap CDN -->
  <link rel="stylesheet" type="text/css" href="/SSPro/css/register.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="/SSPro/js/resgister.js"></script>
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
        <div class="col-md-6">
          <h1 class="bodytxt2 hanguel">현지님 안녕하세요! 회원님의
            <br>공간 등록을 도와드리겠습니다.</h1>
            <form action="spacepost/upload?action=upload1" method="post"><!--정숙 : action 경로 수정필요 -->
          <br> <strong>1단계</strong>
          <br> <span>회원님의 공간 유형은 무엇인가요?</span>
          <br>
          <br>
          <div class="row">
            <div class="col-md-4 pad">
            <select name="area" id="area">
               <option selected="">====선택====</option>
               <option value="강남구">강남구</option>
               <option value="강동구">강동구</option>
               <option value="강북구">강북구</option>
               <option value="강서구">강서구</option>
               <option value="관악구">관악구</option>
               <option value="광진구">광진구</option>
               <option value="구로구">구로구</option>
               <option value="금천구">금천구</option>
               <option value="노원구">노원구</option>
               <option value="도봉구">도봉구</option>
               <option value="동대문구">동대문구</option>
               <option value="동작구">동작구</option>
               <option value="마포구">마포구</option>
               <option value="서대문구">서대문구</option>
               <option value="서초구">서초구</option>
               <option value="성동구">성동구</option>
               <option value="성북구">성북구</option>
               <option value="송파구">송파구</option>
               <option value="양천구">양천구</option>
               <option value="영등포구">영등포구</option>
               <option value="용산구">용산구</option>
               <option value="은평구">은평구</option>
               <option value="종로구">종로구</option>
               <option value="중구">중구</option>
               <option value="중랑구">중랑구</option>  
            </select></div>
            <div class="col-md-4 pad">
            <select name="space_sort" id="space_sort">
               <option value="공간 전체" selected="">공간 전체</option>
               <option value="카페">카페</option>
               <option value="레스토랑">레스토랑</option>
               <option value="사무실">사무실</option>
               <option value="병원">병원</option>
               <option value="공공기관">공공기관</option>
               <option value="기타">기타</option>
            </select> </div>
          </div>
          <div class="row">
            <div class="col-md-8 pad"> <select name="section" id="section">
               <option value="최대 1섹션 대여가능">최대 1섹션 대여가능</option>
               <option value="최대 2섹션 대여가능">최대 2섹션 대여가능</option>
               <option value="최대 3섹션 대여가능">최대 3섹션 대여가능</option>
               <option selected="" value="최대 4섹션 대여가능">최대 4섹션 대여가능</option>
               <option value="최대 5섹션 대여가능">최대 5섹션 대여가능</option>
               <option value="최대 6섹션 대여가능">최대 6섹션 대여가능</option>
               <option value="최대 7섹션 대여가능">최대 7섹션 대여가능</option>
               <option value="최대 8섹션 대여가능">최대 8섹션 대여가능</option>
               <option value="최대 9섹션 대여가능">최대 9섹션 대여가능</option>
               <option value="최대 10섹션 대여가능">최대 10섹션 대여가능</option>
            </select><br>
              <button class="button" style="vertical-align: middle;"><span class="span">계속</span></button>
            </div>
          </div>
          <div class="row"> </div>
        </div>
        </form>
        <div class="col-md-6">
          <img src="/SSPro/img/flower.PNG" id="img"> </div>
      </div>
    </div>
  </div>
  
  
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
    </div>
  </div>
</footer>


</body>

</html>