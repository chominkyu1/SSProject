<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta charset="utf-8">
        <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
        <!-- Bootsrap CDN -->
        <link rel="stylesheet" type="text/css" href="/SSPro/css/signup.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="/SSPro/js/signup.js"></script>
        <title>::SECTION SHARE::</title>
    <script></script>
</head>

<body><div class="form-wrap">
		<div class="tabs">
			<h3 class="signup-tab"><a class="active" href="#signup-tab-content">공간대여회원</a></h3>
			<h3 class="login-tab"><a href="#login-tab-content">ARTIST회원</a></h3>
		</div><!--.tabs-->

		<div class="tabs-content">
			<div id="signup-tab-content" class="active">
				<form class="signup-form" action="" method="post">
					<input type="email" class="input" id="user_email" autocomplete="off" placeholder="Email">
					<input type="text" class="input" id="user_name" autocomplete="off" placeholder="name">
					<input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password">
                    <input type="password" class="input" placeholder="Confirm Password"  id="user_pass" autocomplete="off" >
                    	<input type="text" class="input" id="phone" autocomplete="off" placeholder="phone">
					<input type="submit" class="button" value="sign in">
				</form><!--.login-form-->
				<div class="help-text">
					<p><a href="#">Terms of service</a></p>
				</div><!--.help-text-->
			</div><!--.signup-tab-content-->

			<div id="login-tab-content">
				<form class="login-form" action="" method="post">

					<input type="email" class="input" id="user_email" autocomplete="off" placeholder="Email">
					<input type="text" class="input" id="user_name" autocomplete="off" placeholder="name">
					<input type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password">
                    <input type="password" class="input" placeholder="Confirm Password"  id="user_pass" autocomplete="off" >
                    	<input type="text" class="input" id="phone" autocomplete="off" placeholder="phone">
                    	<input type="text" class="input" id="major" autocomplete="off" placeholder="major">

					<input type="submit" class="button" value="sign in">
				</form><!--.login-form-->
<div class="help-text">
					<p><a href="#">Terms of service</a></p>
				</div><!--.help-text-->
			</div><!--.login-tab-content-->
		</div><!--.tabs-content-->
	</div><!--.form-wrap-->

</body>

</html>
