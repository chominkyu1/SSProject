<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- 모바일 최적화: 부트스트랩은 한번의 개발로 PC, 타블렛, 스마트폰 등
        다양한 기기에서 작동할수 있도록 만들어진 툴-->
  <!-- Bootsrap CDN -->       
  
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootsrap CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" type="text/css" href="/SSPro/css/SpacePostView.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/nav2.css">
<link rel="stylesheet" type="text/css" href="/SSPro/css/font.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="/SSPro/js/SpacePostView.js"></script>
  

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
        <img src="${spacepostvo.spacepost_image1 }" alt="...">
        <div class="carousel-caption"> </div>
      </div>
      <div class="item">
        <img src="${spacepostvo.spacepost_image2 }" alt="...">
        <div class="carousel-caption"> </div>
      </div>
      <div class="item">
        <img src="${spacepostvo.spacepost_image3 }" alt="...">
        <div class="carousel-caption"> </div>
      </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <br>
          <h1 class="display-4">${spacepostvo.spacepost_shopname }</h1>
          <div class="col-md-12">
            <p class="lead">${spacepostvo.spacepost_sort } · ${spacepostvo.spacepost_area }&nbsp;
              <br>대여자 : ${memberspacevo.smember_name } </p>
            <p class="lead"> ${spacepostvo.spacepost_memo }
              <br><br>
            </p>
            <hr>
            <h1 class="lead2">공간 주소 및 전화번호</h1><br>
            <p class="lead">${spacepostvo.spacepost_address } </p>
            <p class="lead">${spacepostvo.spacepost_phone } </p>
            <hr>
            <h1 class="lead2">해시태그</h1><br><br>
            <c:forEach items="${hashList }" var="hash">
            #${hash.hashtag_name } 
            </c:forEach>            
            <hr><br>
            <h1 class="lead2">후기 ${count }개</h1>
            <br><br><br>
          <%--   <c:forEach items="${spaceReviewList }" var="repost"> --%>
            <%List spaceReviewList=(List)request.getAttribute("spaceReviewList");
            Map map=null;
            for(int i=0; i<spaceReviewList.size();i++){
            map=(Map)spaceReviewList.get(i);
            %><h1 class="lead2">작성자 :<%=map.get("AMEMBER_NAME") %><%="  ("+map.get("RSPACE_SCORE")+"/5.0)" %></h1><% %>
            <p class="lead"><%= map.get("RSPACE_MEMO")%></p><br><%
           } %>
          </div> </div>
          <form action="/SSPro/sectionshare/ask.do" method="post" id="form2">
        <input type="hidden" value="${memberartistvo.amember_name }" name="amember_name">
        <input type="hidden" value="${memberartistvo.amember_id }" name="amember_id">
        <input type="hidden" value="${spacepostvo.spacepost_id }"name="spacepost_id">
        <input type="hidden" value="${spacepostvo.smember_id }"name="smember_id">
        <input type="hidden" value="${email }"name="email">
        <div class="col-md-4">
          <div class="reservations">
            <h1>Reservations:</h1>
            <p>Number Of Sections : </p>
          <input id="slider" type="range" name="rangeInput" min="1" max="10" value="1" onchange="updateTextInput(this.value);">
            <input type="text" id="textInput" value="1">
            <p>Start Date : </p>
            <input type="date" id="Start" class="floatLabel" name="start" value="<?php echo date('Y-m-d'); ?>" required>
            <p>End Date: </p>
            <input type="date" id="End" class="floatLabel" name="end" value="<?php echo date('Y-m-d'); ?>"required >
            <button type="button" onclick="date()">submit</button>
          </div>
          <div class="thankyou"> <i class="fa fa-check-square-o"></i>
            <h1>Thank you!</h1>
            <p>The restaurant has been notified of your arrival and a confirmation email has been sent to you.</p>
          </div>
        </div>
          </form>
      </div><br><br>
      <div class="row"> </div>
    </div>
  </div>
  <div class="modal fade" id="modal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">확인해주세요!</h4>
      </div>
      <div class="modal-body">
        <p>대여 시작일은 대여 종료일 보다 더 빨라야 합니다!</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-dismiss="modal">확인</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<footer id="footer">
  <div class="lower-footer">
    <div class="container-footer">
      <div class="wrapper left-wrapper">
        <div class="header">
          <img class="logo" src="/SSPro/img/logo-w.png" alt="/SSPro/img/logo-w.png" />
        </div>

        <div class="content">
          © 2014-2016 · SectionShare(주), All Rights Reserved<br>
          대표자 : 서초동벨리 사업자 등록번호 : 107 - 87 - 79911<br>
          서울시 강남구 봉은사로 213 센트럴타워 14층<br>
          대표번호 : 02-2018-3700<br>
		  입주 문의 : 02-2018-3703<br>
		  임대/투자 문의 : 02-2018-3712<br>
		  홍보/제휴 문의 : 02-2018-3715<br>
        </div>
      </div>

    </div>
  </div>
</footer>
    
</body>

</html>