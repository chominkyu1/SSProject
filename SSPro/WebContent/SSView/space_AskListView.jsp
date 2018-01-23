<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
<!-- Bootsrap CDN -->
<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/confirmation2.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>안녕하세요 title입니다.</title>
</head>

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
	<!--780px미만으로 떨어지면 사라지고 햄버거버튼으로 바뀌게해야함-->
	<div class="row">
		<div class="col-md-4">	
			<div class="list-group" style="height: 800px; overflow: auto;">
				<a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start active">
					<h5 class="mb-1">List group</h5> <small>3 days ago</small>
					<p class="mb-1">회원님의 CAFE "ladna Alicja" 에 아티스트 ewlina가 보낸 요청</p> <small>요청
						대기중입니다유</small>                    
<input type="checkbox" name="chk_info" value="">
				</a>			
                <a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<h5 class="mb-1">List group</h5> <small>3 days ago</small>
					<p class="mb-1">회원님의 CAFE "ladna Alicja" 에 아티스트 Tomek이 보낸 요청</p> <small>요청
						대기중입니다유</small>                    
<input type="checkbox" name="chk_info" value="">
				
				</a>
  
                  <a href="#"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<h5 class="mb-1">List group</h5> <small>3 days ago</small>
					<p class="mb-1">회원님의 CAFE "ladna Alicja" 에 아티스트 ewlina가 보낸 요청</p> <small>요청
						대기중입니다유</small>                    
<input type="checkbox" name="chk_info" value="">
				
				</a>
                <div class="btn-group  btn-sm" role="group" aria-label="..." >
						<button type="button" class="btn btn-default btn-sm">요청수락</button>
						<button type="button" class="btn btn-default btn-sm">요청거절</button>
						<button type="button" class="btn btn-default btn-sm">요청삭제</button>
					</div>
                 
	</div>
		</div>


		<!--게시물-->


		<div class="col-md-7" style="height: 800px; overflow: auto; -ms-overflow-style: none;">
		<br>
				<h1 class="bodytxt-h">Ewelina send a request to you</h1>
                <span style="float:right">
                    
                
                <button type="button" class="btn btn-info" data-toggle="modal" data-target=".bs-example-modal-lg">후기 쓰기</button>

                
                </span>
				<p class="bodytxt1">Ewelina wants to display her works in
					your Restaurant "ladna Alicja"</p>
				<br> <img class="img-fluid d-block imgbig" src="/SSPro/img/cafe.jpg"
					width="100%" ;="" height="55%"> <br> <br>
				<p class="bodytxt2">
					CAFE "ladna Alicja". 3 Sections. No fees. <br>
				</p>
				<p class="bodytxt1">Request 3 sections</p>
				<hr>
				<br>
				<div class="row">
					<div class="col-md-6">
						<p class="bodytxt2">
							Tuesday, <br>Oct 24, 2017&nbsp; <br>
						</p>
						<p class="bodytxt1">Start display Anytime after 3pm</p>
					</div>
					<div class="col-lg-1">
						<p>
							<img alt="" class="slash text-center"
								src="https://a1.muscache.com/airbnb/rookery/dls/slash-7e6cd0c69def410f055ffd703c08e140.png">
						</p>
					</div>
					<div class="col-md-5 ">
						<p class="bodytxt2 text-right">
							Tuesday, <br>Oct 24, 2017&nbsp; <br>
						</p>
						<p class="bodytxt1 text-right">Start display Anytime after 3pm</p>
					</div>
				</div>

				<hr>

				<div class="row">

					<div class="col-md-12">
						<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">아티스트가 보낸 포트폴리오
							사진보기</button>
					</div>
                    
				</div>
                <br>
                	<div class="row collapse" id="collapseExample">
             
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
        <img src="/SSPro/img/cafe2.jpg" alt="...">
        <div class="carousel-caption"> </div>
      </div>
      <div class="item">
        <img src="/SSPro/img/cafe.jpg" alt="...">
        <div class="carousel-caption"> </div>
      </div>
      <div class="item">
        <img src="/SSPro/img/cafe.jpg" alt="...">
        <div class="carousel-caption"> </div>
      </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
  </div></div>
			</div>
		</div>
    

    
   <!-- 후기 모달-->
   <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
   <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">후기 작성하기</h4>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="control-label">평점 (5점 만점):</label>
            <input type="text">
          </div>
          <div class="form-group">
            <label for="message-text" class="control-label">후기쓰기:</label>
            <textarea class="form-control" id="message-text"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">작성 완료</button>
      </div>
    </div>
  </div>
  </div>
</div>
    
	<br>
	<br>
	<footer id="footer">
		<div class="lower-footer">
			<div class="container-footer">
				<div class="wrapper left-wrapper">
					<div class="header">
						<img class="logo" src="/SSPro/img/logo-w.png" alt="/SSPro/img/logo-w.png">
					</div>
					<div class="content">
						© 2014-2016 · SectionShare(주), All Rights Reserved <br> 대표자 :
						서초동벨리 사업자 등록번호 : 107 - 87 - 79911 <br> 서울시 강남구 봉은사로 213 센트럴타워
						14층 <br> 대표번호 : 02-2018-3700 <br> 입주 문의 : 02-2018-3703 <br>
						임대/투자 문의 : 02-2018-3712 <br> 홍보/제휴 문의 : 02-2018-3715 <br>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>

</html>