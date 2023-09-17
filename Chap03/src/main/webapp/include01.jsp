<%@page import="java.util.Date"%>		<!--  import를 page 디렉터리를 이용해 사용한다-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int a = 10; %>
	<%@ include file="include01_header.jsp" %>
	<div class="container">
		<h1>컨텐츠 영역</h1>
		<h3><%=new Date() %></h3>
	</div>
	<%@ include file="include01_footer.jsp" %>
</body>
</html>