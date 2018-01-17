<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/userinfo.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/drawer.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" id="top_navbar">
	<div class="container">
		<div class="navbar-header">
			<a href="" class="navbar-brand"> <img src="/SSPro/img/logo-p.png"
				alt="Section Share">
			</a>
		</div>

		<ul class="nav navbar-nav navbar-right" id="top_navbar-nav">
			<!-- <li class="active"><a href="#">Main</a></li> -->
			<li><input type="checkbox" id="drawer-toggle"
				name="drawer-toggle" /> <label for="drawer-toggle"
				id="drawer-toggle-label"></label> <nav id="drawer">
				<ul>
					<li><a href="#">내정보수정</a></li>
					<li><a href="#">요청 현황</a></li>
					<li><a href="#">서비스 정보</a></li>
					<li><a href="#">로그아웃</a></li>
				</ul>
				</nav></li>
		</ul>
	</div>
	</nav>


	<div class="cont_principal">

		<div class="cont_centrar">
			<div class="cont_login">
				<form action="">
					<div class="cont_tabs_login">
						<ul class='ul_tabs'>
							<li class="active"><a href="#">아티스트 정보</a> <span class="linea_bajo_nom"></span></li>
						</ul>
					</div>
					<div class="cont_text_inputs">
						<input type="text" class="input_form_sign d_block active_inp" placeholder="이메일" name="email" /> 
						<input type="password" class="input_form_sign d_block active_inp" placeholder="비밀번호" name="password" /> 
						<input type="password" class="input_form_sign d_block active_inp" placeholder="비밀번호 확인" name="passwordconfirm" /> 
						<input type="text" class="input_form_sign d_block active_inp" placeholder="이름" name="emauil_us" /> 
						<input type="text" class="input_form_sign d_block active_inp" placeholder="핸드폰번호('-'제외)" name="emauil_us" /> 
						<input type="text" class="input_form_sign d_block  active_inp" placeholder="전공" name="pass_us" /> 
					</div>
					<div class="cont_btn">
						<button class="btn_sign">수정하기</button>

					</div>

				</form>
			</div>

		</div>


	</div>
</body>
</html>