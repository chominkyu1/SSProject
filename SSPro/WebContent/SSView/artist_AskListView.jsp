<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta charset="utf-8">
<!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootsrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/confirmation2.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>::SECTION SHARE::</title>

</head>

<body>
	<!-- 세션 구분 -->
		<% session.setAttribute("sessiontype", "artistuser"); %>

	
	
 	<nav class="navbar navbar-default">
	<div>
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="navbar-brand" href="login.do?action=login&home=h&sessiontype=${sessiontype }"> <img
				src="/SSPro/img/logo-p.png"></a>
			
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">서비스소개</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">menu<span
						class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<c:if test="${spaceuser=='success' }">
							<li><a href="postupload1.do?action=upload&email=${spaceemail }">공간게시글
									등록하기</a></li>
						</c:if>

						<c:if test="${spaceuser=='success' }">
							<li><a
								href="mypagesp.do?action=mypagesp&email=${spaceemail }">내정보수정</a></li>
						</c:if>
						<c:if test="${artistuser=='success' }">
							<li><a
								href="mypageart.do?action=mypageart&email=${artistemail }">내정보수정</a></li>
						</c:if>

						<c:if test="${spaceuser=='success' }">
							<li><a
								href="asklist.do?action=spaceask&email=${spaceemail }">요청현황</a></li>
						</c:if>

						<c:if test="${artistuser=='success' }">
							<li><a
								href="asklist.do?action=artistask&email=${artistemail }">요청현황</a>
							</li>
						</c:if>

						<li><a href="#">서비스 정보</a></li>
						<li><a href="signin.do" onclick=<% session.removeAttribute("artistuser"); session.removeAttribute("spaceuser"); %>>로그아웃</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

   
	<!--780px미만으로 떨어지면 사라지고 햄버거버튼으로 바뀌게해야함-->
	<div class="row">
		<div class="col-md-4">	
			<div class="list-group" style="height: 800px; overflow: auto;">
				 					
					<c:forEach items="${artistask }" var="asklist">
						<a href="asklist.do?action=artistask&askid=${asklist.ask_id }&email=${email}"
					class="list-group-item list-group-item-action flex-column align-items-start">
					<p class="mb-1"> <b>${asklist.spacepost_shopname }</b></p>  
					<p class="mb-1">요청일 : ${spaceasklist.ask_startdate } / ${spaceasklist.ask_finishdate }</p>
					<h5 class="mb-1">현재 요청 <b>' ${asklist.ask_state } '</b> 상태입니다.  </h5>
					
					             
					<form action="asklist.do?action=artistask&email=${email}&askid=${asklist.ask_id }&askstate=askcancle" method="post"> 
              <button type="submit" class="btn btn-info">요청 취소</button>
              </form>
				</a>			
					
					</c:forEach>
                 
	</div>
		</div>


		<!--게시물-->

	 
		<div class="col-md-7" style="height: 800px; overflow: auto; -ms-overflow-style: none;">
				
				
				
				<h1 class="bodytxt-h">${spacespec.spacepost_shopname}</h1>
				<p class="bodytxt1">정보</p>
				<br> 
				<c:if test="${empty spacespec.spacepost_shopname}">
					<center>왼쪽눌러라</center>
				</c:if>
				
				<c:if test="${null ne spacespec.spacepost_shopname}">
				<img class="img-fluid d-block imgbig" src="${spacespec.spacepost_image1 }"
					width="100%" height="55%"> <br> <br>
					</c:if>
				<p class="bodytxt2">
					${spacespec.spacepost_address} <br>
				</p>
				<p class="bodytxt1">${spacespec.spacepost_memo }</p>
				<hr>
				<br>
				<div class="row">
					<div class="col-md-6">
						<p class="bodytxt2">
							${spacespec.spacepost_startdate } 
						</p>
					</div>
					<div class="col-lg-1">
						<p>
							<img alt="" class="slash text-center"
								src="https://a1.muscache.com/airbnb/rookery/dls/slash-7e6cd0c69def410f055ffd703c08e140.png">
						</p>
					</div>
					<div class="col-md-5 ">
						<p class="bodytxt2 text-right">
							${spacespec.spacepost_finishdate }
						</p>
					</div>
				</div>

				<hr>

				<div class="row">

					<div class="col-md-12">
						<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">내가 보낸 포트폴리오
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


	<br>
	<br>
 <footer id="footer">
         <div class="lower-footer">
      <div class="container-footer">
        <div class="wrapper left-wrapper">
          <div class="header">
            <img class="logo" src="/SSPro/img/logo-w.png" alt="/SSPro/img/logo-w.png"> </div>
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