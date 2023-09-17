<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	선언문 		:	변수선언 O, 메소드 정의 O -->
<!-- 						_jspService() 외부에 변수 선언 = 광범위 변수 -->
<!-- 	스크립틀릿		:	변수선언 O, 메소드 정의 X -->
<!-- 						_jspService() 외부에 변수 선언 = 지역 변수 -->
<!-- 							범위는 스크립틀릿과 표현문까지다. -->
	<%!
		int a = 100;
	%>
	
	
	<%
		int a = 10;
		int b = 20;
		int c = 30;
	%>
	
<!-- 	out.println()의 괄호 안이라는 느낌!!!!! -->
	<%= a+b+c%>
<!-- 	따라서, 표현문의 결과는 60이 된다. -->
</body>
</html>