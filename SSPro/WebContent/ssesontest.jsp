<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
    String id = "홍길동" ;
    String addr = "서울" ;
 
 
    // 세션 생성
    session.setAttribute("name", id) ;
    session.setAttribute("addr", addr) ;
 
 
    // 세션 유지시간 설정(예 : 1시간)
    session.setMaxInactiveInterval(60*60);
 
    // 세션값 가져오기
    out.println(session.getAttribute("name"));
    out.println(session.getAttribute("addr"));
 
 
    // 세션값 삭제
    session.removeAttribute("addr");
 
 
    // 세션값 가져오기
    out.println(session.getAttribute("name"));
 
    // 세션을 삭제했으므로 addr은 안나옴
    out.println(session.getAttribute("addr"));
 
 
 
    // 세션 전체 무효화(로그아웃시 주로 사용)
    session.invalidate();
 
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>