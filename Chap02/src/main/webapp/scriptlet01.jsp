<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	int sum = 0;
%>
	<%
		for(int i = 0; i<=10; i++){
			out.println("<h3>"+i+"</h3>");
			sum += i;
		}
	%>
	<h3><%=
		sum
	%></h3>
	
	<hr>
	
	<%
		for(int i = 1; i<=10;i++){
			
		
	%>
	<h3><%= i %></h3>
	
	<%}%>

<!-- 	끊어질수도 있음 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ 이거 어차피 스크립틀릿 부분을 조합해서 하나의 구역으로 만드는거라 상관없습니다. -->

</body>
</html>