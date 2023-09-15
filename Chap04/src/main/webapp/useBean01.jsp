<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="cal" class="beans.Calculator">		<!-- 패키지명이 beans일 필요는 없음. 한 패키지 안에 묶여야하는 규칙일 뿐임 -->
	
	</jsp:useBean>

	<%
		int a = 10, b=20;
		int sum = cal.sum(a,b);
	%>
	
	<h1>sum=<%=sum %></h1>

</body>
</html>