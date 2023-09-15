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
	try{
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int a = Integer.parseInt(num1);
		int b = Integer.parseInt(num2);
		
		int c = a/b;
		
		
	} catch(NumberFormatException a){
		RequestDispatcher dispatcher = request.getRequestDispatcher("/error/exception-A.jsp");		//req의 경로를 받아 디스패쳐에 저장
		dispatcher.forward(request, response);				//해당 경로를 가진 디스패쳐를 포워드 실행. 요청값과 응답값.
		a.printStackTrace();
		
	} catch(ArithmeticException b){
		RequestDispatcher dispatcher = request.getRequestDispatcher("/error/exception-B.jsp");
		b.printStackTrace();
		
	} catch(Exception e){
		e.printStackTrace();
		RequestDispatcher dispatcher = request.getRequestDispatcher("/error/exception.jsp");
	}
%>

</body>
</html>