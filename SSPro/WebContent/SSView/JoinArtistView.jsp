<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/SSPro/css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>BootstrapTest</title>
</head>
<body background="/SSPro/img/giphy (1).gif">

	<%-- Top Navigation Bar --%>
	<nav class="navbar navbar-inverse navbar-fixed-top" id="top_navbar">
	<div class="container">
		<div class="navbar-header">
			<a href="" class="navbar-brand"> <img src="/SSPro/img/logo_white.png"
				alt="Section Share">
			</a>
		</div>
		<!-- 메뉴 모음 -->
		<ul class="nav navbar-nav navbar-right" id="top_navbar-nav">
			<!-- <li class="active"><a href="#">Main</a></li> -->
			<li><a href="">HOME</a></li>
			<li><a href="">ARTIST</a></li>
			<li><a href="">AREA</a></li>
			<li><a href="">Q&A</a></li>
			<li><a href="">ABOUT</a></li>
			<li><a href="">LOGIN</a></li>
		</ul>

	</div>
	</nav>

	<%-- Input Form --%>>
	<h1 class="separator" id="inputs"></h1>
	<h1 class="separator" id="inputs"></h1>
	
		<div class="img-center">
			<img src="/SSPro/img/section share-logo.png"><br>
		</div>

		<form action="artistjoin.do?action=join" method="post">
		<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-2">
			<div class="input-group" >					
				<input id="email" type="text" class="form-control" name="email" placeholder="Email">

			</div>	
		</div>			   
		<div class="col-md-5"></div>	
		</div>
		
		<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-2">
			<div class="input-group">
				<input id="password" type="password" class="form-control" name="password" placeholder="Password">
			</div>
	 	</div>
		<div class="col-md-5"></div>
		</div>
		
				<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-2">
			<div class="input-group">
				<input id="name" type="name" class="form-control" name="name" placeholder="Name">
			</div>
	 	</div>
		<div class="col-md-5"></div>
		</div>
		
				<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-2">
			<div class="input-group">
				<input id="phone" type="phone" class="form-control" name="phone" placeholder=" Phone">
			</div>
	 	</div>
		<div class="col-md-5"></div>
		</div>


				<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-2">
			<div class="input-group">
				<input id="phone" type="major" class="form-control" name="major" placeholder=" major">
			</div>
	 	</div>
		<div class="col-md-5"></div>
		</div>
		
		<br>
			<div class="row">
		<div class="col-md-5"></div>
		<div class="col-md-2">
		<button type="submit" class="btn btn-primary btn-block">회원가입</button>
		</div>
		<div class="col-md-5"></div>
		</div>
		
		
	</form>

</body>
</html>