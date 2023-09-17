<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int sum(int a, int b) {
		return a + b;
	}%>

<!-- 	표현문에서 sum(2,3)의 리턴값은 보이지 않는다. 따라서 아래와 같이 out를 사용할 필요가 있다. -->
	<%
	out.println("a+b = " + sum(2, 3)); //out : JSP에서 출력을 담당하는 객체
								//서블릿에서 출력하는 javaax.servlet.jsp.JspWriter 객체가 내장되어 있어서
								//생성치 않고 바로 사용할 수 있다.
								//스크립틀릿에서 html 출력할 때 사용.
	%>

</body>
</html>