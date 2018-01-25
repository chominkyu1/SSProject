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

<link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/userinfo.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="/SSPro/js/phonenum.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
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
	
	
<form class="form-horizontal"  action="mypagesp.do?action=updatesp" method="post">
  <div class="form-group"><div class="col-md-4"></div>
    <div class="col-md-4">
<input type="hidden" name="smember_id" value="${memberspacevo.smember_id }">
    </div>
  </div>
  <div class="form-group"><div class="col-md-2"></div>
    <label for="inputEmail3" class="col-sm-2 control-label">이메일</label>
    <div class="col-md-4">
      <input type="email" class="form-control" placeholder="이메일" 
						name="amember_email" disabled value="${memberartistvo.amember_email}" readonly>
    </div>
  </div>
    <div class="form-group"><div class="col-md-2"></div>
    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-md-4">
      <input type="password" class="form-control"placeholder="비밀번호" 
						name="amember_pass" value="${memberartistvo.amember_pass}" r>
    </div>
  </div>
    <div class="form-group"><div class="col-md-2"></div>
    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호확인</label>
     <div class="col-md-4">
      <input type="password" class="form-control" placeholder="비밀번호 확인"
						name="passwordconfirm" value="${memberartistvo.amember_pass}">
    </div>
  </div>
  <div class="form-group"><div class="col-md-2"></div>
    <label for="inputEmail3" class="col-sm-2 control-label">이름</label>
    <div class="col-md-4">
      <input type="text" class="form-control"  placeholder="이름"
							name="amember_name" disabled value="${memberartistvo.amember_name}" readonly/>
    </div>
  </div>
  <div class="form-group"><div class="col-md-2"></div>
    <label for="inputPhone3" class="col-sm-2 control-label">핸드폰번호</label>
    <div class="col-md-4">
      <input type="number" class="form-control"  placeholder="핸드폰번호('-'제외)" name="amember_phone" value="${memberartistvo.amember_phone}" onKeyPress="return numkeyCheck(event)" required>
    </div>
  </div>
  <div class="form-group"><div class="col-md-2"></div>
    <label for="inputPhone3" class="col-sm-2 control-label">전공</label>
    <div class="col-md-4">
      <input type="text" class="form-control" placeholder="전공" name="amember_major" value="${memberartistvo.amember_major}" required>
    </div>
  </div>

  <div class="form-group">
    <div class="col-md-offset-2 col-sm-10">
     <div class="col-md-3"></div><button type="submit" class="btn_sign">수정하기</button>
    </div>
  </div>
</form>
	

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