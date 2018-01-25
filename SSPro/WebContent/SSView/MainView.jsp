<%@page import="sspro.vo.SpacePostVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <%    
   String email = request.getParameter("email");
   session.setAttribute("email", email);
   //out.print(session.getAttribute("email"));
   //out.print("세션저장");
   session.setMaxInactiveInterval(60*60);
%> --%>
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

<link rel="stylesheet" type="text/css" href="/SSPro/css/main.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>::SECTION SHARE::</title>

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

			<a class="navbar-brand" href="login.do?action=login&home=h"> <img
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


	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel" style="margin-top:-20px;">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="/SSPro/img/1.png" alt="...">
				<div class="carousel-caption">
					<!--Search-->
					<%
						request.setCharacterEncoding("UTF-8");
					%>
					<form class="search" action="searchhash.do?action=searchhash"
						method="post">
						<input type="search" placeholder="원하는 해시태그명을 입력하세요!" required
							name="hash">
						<button type="submit">Search</button>
					</form>
				</div>
			</div>
			<div class="item">
				<img src="/SSPro/img/2.png" alt="...">
				<div class="carousel-caption">
					<!--Search-->
					<%
						request.setCharacterEncoding("UTF-8");
					%>
					<form class="search" action="searchhash.do?action=searchhash"
						method="post">
						<input type="search" placeholder="원하는 해시태그명을 입력하세요!" required
							name="hash">
						<button type="submit">Search</button>
					</form>
				</div>
			</div>
			<div class="item">
				<img src="/SSPro/img/3.png" alt="...">
				<div class="carousel-caption">
					<!--Search-->
					<%
						request.setCharacterEncoding("UTF-8");
					%>
					<form class="search" action="searchhash.do?action=searchhash"
						method="post">
						<input type="search" placeholder="원하는 해시태그명을 입력하세요!" required
							name="hash">
						<button type="submit">Search</button>
					</form>
				</div>
			</div>

		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>



	<!--hashtag-->

	<div class="recomm_wrap" style="background-color: #ff8080;">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<ul class="recomm_list textlocation">
				<li class="recomm_item hash">#작업실</li>
				<li class="recomm_item hash">#독립오피스</li>
				<li class="recomm_item hash">#회의실</li>
				<li class="recomm_item hash">#분위기 좋은 카페</li>
				<li class="recomm_item hash">#공동 작업실</li>
			</ul>
		</div>
		<div class="col-md-2"></div>
	</div>


	<div class="py-5 bg-light text-dark">
		<div class="container">
			<br>
			<div class="row"><br>
				<div class="col-md-1" style="margin-right: -20px;">
					<img src="/SSPro/img/trophy.png" style="width: 50px;">
				</div>
				<div class="col-md-10">
					<span class="h3">별 5개 만점에 4.7개 이상</span>
					<h5>높은 이용후기 평점을 받은 공간을 대여해보세요!</h5>
				</div>
			</div>
			<br>
			<div class="row">

				<c:forEach items="${spacepostlist }" end="5" var="post"
					varStatus="stat">
					<form action="/SSPro/sectionshare/PostDetail.do?action=spost&sessiontype=${sessiontype }"
						method="post" id="frm${stat.count }">
						<input type="hidden" value="${artistemail }" name="email">
						<div class="col-lg-4 portfolio-item">
							<div class="card h-100">
							
								<input type="hidden" value="${post.spacepost_id }"
									name="spacepost_id"> <input type="hidden"
									value="${post.smember_id }" name="smember_id"> <input
									type="image" src="${post.spacepost_image1 }" width="348" height="289">

								<!-- <a href="#"><img class="card-img-top" src="/SSPro/img/11.jpg" alt=""></a> -->
								<div class="card-body">
									<h4 class="card-title">
										<a href="#" name="shopname"
											onclick="document.getElementById('frm${stat.count }').submit();">${post.spacepost_shopname }</a>
									</h4>

									<p class="card-text">${post.spacepost_memo }</p>

								</div>
							</div>
						</div>
					</form>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="py-5 text-center opaque-overlay"
		style="background-image: url('/SSPro/img/05.jpeg');">
		<div class="container py-5">
			<div class="row">
				<div class="col-md-12 text-white" style="color: white;">
					<br><br><h1 class="display-3 mb-4">
						숨겨뒀던 회원님의 멋진 작품을&nbsp; <br>전시해보세요!
					</h1>
					<p class="lead mb-5">
						Section Share에서는 회원님이 딱! 필요한 만큼의 공간을 무료로 &nbsp;대여할 수 있습니다.&nbsp; 
						<br>상단의 검색창에서 원하는 공간을 찾아보세요!
					</p><br><br>
				</div>
			</div>
		</div>
	</div>

	<!-- Team Members Row -->
	<div class="py-5 bg-light text-dark">

		<div class="container">
			<div class="row">
				<br><br>
				<div class="col-md-1" style="margin-right: -20px;">
					<img src="/SSPro/img/review.png" style="width: 50px;">
				</div>
				<div class="col-md-10">
					<span class="h3">이용 후기</span>
					<h5>실제 SectonShare 사용자의 이용후기 입니다!</h5>
				</div>
			</div>
			<br><br>
			<div class="row">
				<c:forEach items="${spacereviewlist }" var="review">
					<div class="col-lg-3 col-sm-6 text-center mb-4">
						<img class="rounded-circle img-fluid d-block mx-auto imground"
							src="/SSPro/img/angryCat.gif" alt="">
						<h3>${review.amember_name }
							<small>${review.amember_major }</small>
						</h3>
						<p>${review.rspace_memo }</p>
					</div>

				</c:forEach>
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