<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootsrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">
<link rel="stylesheet" type="text/css"
	href="/SSPro/css/confirmation2.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
<!-- Bootsrap CDN -->

<title>안녕하세요 title입니다.</title>

</head>

<body>

	<!-- 세션 구분 -->
	<c:if test="${spaceuser=='success' }">
		<% session.setAttribute("sessiontype", "spaceuser"); %>
	</c:if>
	
	<c:if test="${artistuser=='success' }">
		<% session.setAttribute("sessiontype", "artistuser"); %>
	</c:if>


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

			<a class="navbar-brand" href="login.do?action=login&home=h&email=${email }"> <img
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
							<li><a href="postupload1.do?action=upload&email=${email }">공간게시글
									등록하기</a></li>
						</c:if>

						<c:if test="${spaceuser=='success' }">
							<li><a
								href="mypagesp.do?action=mypagesp&email=${email }">내정보수정</a></li>
						</c:if>
						<c:if test="${artistuser=='success' }">
							<li><a
								href="mypageart.do?action=mypageart&email=${email }">내정보수정</a></li>
						</c:if>

						<c:if test="${spaceuser=='success' }">
							<li><a
								href="asklist.do?action=spaceask&email=${email }">요청현황</a></li>
						</c:if>

						<c:if test="${artistuser=='success' }">
							<li><a
								href="asklist.do?action=artistask&email=${email }">요청현황</a>
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


	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<br>
				<br>
				<input type="hidden" value="${spacepost_id }" name="spacepost_id">
				<input type="hidden" value="${smember_id }" name="smember_id">
				<input type="hidden" value="${email }" name="email">
				
				<h1 class="bodytxt-h">${amem_name }님의 예약이 확인되었습니다.</h1>
				<p class="bodytxt1">${amem_name }님의 작품이 ${spacepostvo.spacepost_shopname }에 게시되게됩니다. </p>
				<br> <img class="img-fluid d-block imgbig" src="${askvo.ask_image1 } "
					width="100%" ; height="55%"> <br> <br>
				<p class="bodytxt2">
					공간게시자님에게 남기는 메세지입니다. <br>
				</p>
				<p class="bodytxt1">${askvo.ask_memo }</p>
				<hr>
				<br>
				<div class="row">
					<div class="col-md-6">
						<p class="bodytxt2">
							<br>${askvo.ask_startdate }&nbsp; <br>
						</p>
						<p class="bodytxt1"></p>
					</div>
					<div class="col-lg-1">
						<p>
							<img alt="" class="slash text-center"
								src="https://a1.muscache.com/airbnb/rookery/dls/slash-7e6cd0c69def410f055ffd703c08e140.png">
						</p>
					</div>
					<div class="col-md-5 ">
						<p class="bodytxt2 text-right">
							<br>${askvo.ask_finishdate }&nbsp; <br>
						</p>
						<p class="bodytxt1 text-right"></p>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="row">
					<div class="col-md-12">
						<a href="/SSPro/sectionshare/PostDetail.do?action=spost&smember_id=${smember_id }&spacepost_id=${spacepost_id }&email=${email }"
							class="btn-primary btn-lg btn-rausch"
							style="font-family: 'Circular', Helvetica, Arial, sans-serif; font-weight: normal; margin: 0; text-align: left; line-height: 1.3; color: #2199e8; text-decoration: none; background-color: #ff5a5f; -webkit-border-radius: 3px; border-radius: 4px; padding: 19px 24px 19px 24px; display: block">
							<p class="text-center"
								style="font-weight: normal; padding: 0; margin: 0; text-align: center; color: white; font-family: &amp; quot; Circular &amp;quot; , &amp; quot; Helvetica &amp;quot; , Helvetica , Arial, sans-serif; font-size: 24px; line-height: 32px; margin-bottom: 0px !important">예약한
								공간 자세히 보기</p>
						</a>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<h1 class="bodytxt2 hanguel">주소 및 전화번호</h1>
				<br>
				<p class="bodytxt1">
					${spacepostvo.spacepost_address }"${spacepostvo.spacepost_shopname}" <br>${spacepostvo.spacepost_phone }
				</p>
				<br>
				<hr>
				<br>
				<div class="row">
					<div class="col-md-6">
						<p class="bodytxt2">예약 코드</p>
					</div>
					<div class="col-md-2">
						<img alt="" class="slash "
							src="https://a1.muscache.com/airbnb/rookery/dls/slash-7e6cd0c69def410f055ffd703c08e140.png">
					</div>
					<div class="col-md-4">
						<p class="bodytxt2 text-right">${askvo.ask_id }</p>
					</div>
				</div>
				<hr>
				<div class="row">
					<br>
					<div class="col-md-10">
						<p class="bodytxt2">${memberspacevo.smember_name }&nbsp;</p>
						<p class="bodytxt1">도착시간 조정을 위해 연락주시기바랍니다.</p>
						<br>
						<p id="contactcolor">${memberspacevo.smember_phone }</p>
					</div>
					<div class="col-md-2">
						<center>
							<img class="img-fluid d-block" src="/SSPro/img/iu.PNG"
								width="100" height="100"> <br> <img alt=""
								src="https://a1.muscache.com/airbnb/rookery/dls/5.0_stars-8b3a9b9fe0d1aa014b1f97859cd599b1.png">
						</center>
						<br>
					</div>
				</div>
				<hr>
				<div class="row">
					<br>
					<div class="col-md-12"
						style="color: #0a0a0a; font-family: 'Circular', Helvetica, Arial, sans-serif; font-weight: normal; padding: 0; margin: 0; text-align: left; font-size: 16px; line-height: 1.3; padding-left: 16px; padding-right: 16px">
						<a href="/SSPro/sectionshare/login.do?home=h&email=${email }" class="btn-secondary btn-lg"
							style="font-family: 'Circular', Helvetica, Arial, sans-serif; font-weight: normal; margin: 0; text-align: left; line-height: 1.3; color: #2199e8; text-decoration: none; border: 2px solid #dbdbdb; -webkit-border-radius: 3px; border-radius: 4px; padding: 19px 24px 19px 24px; display: block; width: auto !important">
							<p class="text-center"
								style="font-weight: normal; padding: 0; margin: 0; text-align: center; color: #484848; font-family: &amp; quot; Circular &amp;quot; , &amp; quot; Helvetica &amp;quot; , Helvetica , Arial, sans-serif; font-size: 24px; line-height: 32px; margin-bottom: 0px !important">더
								많은 공간대여 프로젝트를 찾아보기</p>
						</a>
					</div>
				</div>
				<br> <br> <br>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	<footer id="footer">
	<div class="lower-footer">
		<div class="container-footer">
			<div class="wrapper left-wrapper">
				<div class="header">
					<img class="logo" src="/SSPro/img/logo-w.png"
						alt="/SSPro/img/logo-w.png" />
				</div>

				<div class="content">
					© 2014-2016 · SectionShare(주), All Rights Reserved<br> 대표자 :
					서초동벨리 사업자 등록번호 : 107 - 87 - 79911<br> 서울시 강남구 봉은사로 213 센트럴타워
					14층<br> 대표번호 : 02-2018-3700<br> 입주 문의 : 02-2018-3703<br>
					임대/투자 문의 : 02-2018-3712<br> 홍보/제휴 문의 : 02-2018-3715<br>
				</div>
			</div>

		</div>
	</div>
	</footer>
</body>

</html>