<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		name과 value로 정의된 html의 키와 값을 받아올 때는 request.getParameter를 이용한다.

	<header>
		<h1>I'm header</h1>
		<ul>
			<li><a href="#"><%=menu1 %></a></li>
			<li><a href="#"><%=menu2 %></a></li>
			<li><a href="#"><%=menu3 %></a></li>
		</ul>
	</header>
</body>
</html>