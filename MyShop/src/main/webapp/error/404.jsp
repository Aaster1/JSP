<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 에러</title>
</head>
<body>

	<h1>404 에러 페이지</h1>
	<h3>페이지를 찾을 수 없습니다.</h3>
	<h5>요청 경로를 확인해주세요.</h5>
	<a href="<%=request.getContextPath() %>/main.jsp">메인페이지</a>
		<!-- 경로이동을 통해서 온 경우에도 request.get~의 내용이 담겨있다. -->

</body>
</html>