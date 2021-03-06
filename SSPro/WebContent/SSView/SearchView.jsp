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
<link rel="stylesheet" type="text/css" href="/SSPro/css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/datePicker.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>:: SECTION SHARE ::</title>
<script type="text/javascript">
	var startcount = 0;
	var finishcount = 0;

	$(function() {
		$("#startdatepick").datepicker();
		startcount++;
	});

	$(function() {
		$("#finishdatepick").datepicker();
		finishcount++;
	});

	$(function() {
		var x = 0;
		$('.form-control').focusout(function() {
			var inputValue = $(this).val();

			if (startcount == 0 && finishcount == 0) {
				$(this).removeClass("has-value");
			} else {
				$(this).addClass("has-value");
			}
		});
		$(window).scroll(function() {
			var scrollvalue = $(window).scrollTop();
			console.log(scrollvalue);
			console.log($('.form-group').offset().top);
			if (scrollvalue < $('.form-group').offset().top) {
				$('.top-bar').addClass("make-transparent");
			} else {
				$('.top-bar').removeClass("make-transparent");
			}
		})
	});
</script>


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


	<!-- Search List -->
	<h6 class="separator" id="searchbar"></h6>

	<div class="row selectcolor">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<h3>공간정보</h3>
			<hr>
			<form action="searchhash.do?action=search" method="post">
				<div class="form-group">

					<div class="col-md-2">
						<select class="form-control option_style" id="sort" name="sort">
							<option>전체분류</option>
							<option>레스토랑</option>
							<option>카페</option>
							<option>미술관</option>
						</select> <label class="control-label">종류</label>
					</div>

					<div class="col-md-2">
						<input type="text" class="form-control" name="startdate"
							id="startdatepick" required><label class="control-label">시작일</label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control" name="finishdate"
							id="finishdatepick" required><label class="control-label">마감일</label>
					</div>

					<div class="col-md-2">
						<select class="form-control option_style" id="location"
							name="location">
							<option>지역전체</option>
							<option>강남구</option>
							<option>강동구</option>
							<option>강북구</option>
							<option>강서구</option>
							<option>관악구</option>
							<option>광진구</option>
							<option>구로구</option>
							<option>금천구</option>
							<option>노원구</option>
							<option>도봉구</option>
							<option>동대문구</option>
							<option>서대문구</option>
							<option>영등포구</option>
							<option>중구</option>
							<option>동작구</option>
							<option>마포구</option>
							<option>서초구</option>
							<option>성동구</option>
							<option>성북구</option>
							<option>송파구</option>
							<option>양천구</option>
							<option>용산구</option>
							<option>은평구</option>
							<option>종로구</option>
							<option>중랑구</option>
						</select> <label class="control-label">위치</label>
					</div>

				</div>

				<div class="col-md-4">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="상호명"
							name="shopname">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-2"></div>
	</div>



    <div class="container">

		<!-- Page Heading -->
		<h1 class="my-4"></h1>

		<!-- Project One -->

		<c:forEach items="${spacelist}" var="post">
			<form action="/SSPro/sectionshare/PostDetail.do?action=spost"
				method="post">
				<div class="row">
					<div class="col-md-7">
						<!-- <a href="#"> <img
					class="bg-small img-fluid rounded mb-3 mb-md-0"
					src="/SSPro/img/bg/photo-1512443072854-2e4a9a533617.jpg" alt="">
				</a> -->
						<input type="hidden" value="${post.spacepost_id }"
							name="spacepost_id"> <input type="hidden"
							value="${post.smember_id }" name="smember_id"> <input
							type="image"
							src="${post.spacepost_image1 }" width="550" height="260">
					</div>
					<div class="textlocation col-md-5">
						<h3>${post.spacepost_shopname }</h3><br>
						<p>${post.spacepost_memo }</p>
						<!-- <a class="btn btn-primary" href="#">View Project</a> -->
						<input type="submit" value="View Project">
					</div>
				</div>
				<!-- /.row -->

				<hr>
			</form>
		</c:forEach>
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

