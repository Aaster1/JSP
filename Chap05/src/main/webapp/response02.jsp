<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>5초마다 새로고침</h3>

	<%
		response.setIntHeader("Refresh", 1);		//<--초 단위
	%>
	
	<h5><%= new java.util.Date() %></h5>

</body>
</html>