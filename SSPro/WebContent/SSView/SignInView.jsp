<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <meta charset="utf-8">
        <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
        <!-- Bootsrap CDN -->
        <link rel="stylesheet" type="text/css" href="/SSPro/css/signin.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>::SECTION SHARE::</title>
    <script></script>
</head>
    
<body>
    <div class="form-wrapper">
  <h1>로그인</h1>
  <form action="login.do?action=login" method="post">
    <div class="form-item">
      <label for="email"></label>
      <input type="email" name="email" required="required" placeholder="email" required>
    </div>
    <div class="form-item">
      <label for="password"></label>
      <input type="password" name="password" required="required" placeholder="password" required>
    </div>
    <div class="button-panel">
      <input type="submit" class="button" title="Sign In" value="로그인">
    </div>
  </form>
  <div class="form-footer">
    <p><a href="/SSPro/sectionshare/signup.do">새로운 계정 만들기</a></p>
    <p><a href="#">비밀번호 찾기</a></p>
  </div>
</div>


</body>
</html>
