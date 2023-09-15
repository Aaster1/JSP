<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<!-- 	p1 이름으로 Person 객체 생성 -->
	<jsp:useBean id="p1" class="beans.Person"/>
	
	<h3>아이디 : <%= p1.getName() %></h3>
	<h3>나이 : <%= p1.getAge() %></h3>
	
	 
	 
<!-- 	 p2 이름으로 Person 객체 생성 -->
	<jsp:useBean id="p2" class="beans.Person"></jsp:useBean>		<!-- 기본생성자를 통해 객체 생성. 이 형태에선 기본생성자만 사용가능 -->
	
	<%
		p2.setName("홍길듯");
		p2.setAge(20);
	%>
	
	<h3>아이디 : <%= p2.getName() %></h3>
	<h3>나이 : <%= p2.getAge() %></h3>
	
	

</body>
</html>