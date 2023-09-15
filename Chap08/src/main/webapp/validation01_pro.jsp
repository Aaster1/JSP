<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인에 성공했습니다!!</h1>

	<%
		request.setCharacterEncoding("UTF-8");		//넘겨받는 jsp 상단의 charset=의 값과 매칭되어야합니다.
		out.print(request.getContentType());		//넘겨받는 charset을 확인해봅시다!!
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
	%>
	<h2>아이디 : <%= id%></h2>
	<h2>비밀번호 : <%= pw %> </h2>

</body>
</html>