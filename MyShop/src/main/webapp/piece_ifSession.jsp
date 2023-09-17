<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	
	

	Enumeration en = session.getAttributeNames();
	int i = 0;

	while (en.hasMoreElements()) {
		
		if(en.nextElement()==null){
			
// 			세션 비활성화 페이지

// 			아래는 로그인이 필요한 세션의 경우

			%>
			<jsp:include page="./login.jsp"></jsp:include>		<!-- login.jsp페이지 내부에서 세션 생성 성공 시 main페이지로 이동 -->
			
			
<%
		} else{
			
// 			세션 활성화 페이지 

		}
	}
	%>

</body>
</html>