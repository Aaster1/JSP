<%
	session.invalidate();		//<--다른 세션 초기화
	session.setAttribute("adminId", "koogc0724");
	session.setAttribute("adminPw", "0724");
	
	response.sendRedirect("products.jsp");

%>