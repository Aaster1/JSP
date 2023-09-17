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
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("passwd");
	String remember_id = request.getParameter("rememberId"); //아이디 저장 여부

	//아이디 저장 체크 시, 쿠키 생성
	out.println("rememberId" + remember_id);

	if (user_id.equals("admin") && user_pw.equals("1234")) {
		if (remember_id!=null) {
		out.println("쿠키 생성이 성공했습니다<br>");
		out.println(user_id + "님 환영합니다");
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie reId = new Cookie("reId", remember_id);
			response.addCookie(cookie_id);							//요청을 준 페이지로 쿠키 추가를 응답합니다.
			response.addCookie(reId);

		}else{
			Cookie cookie_id = new Cookie("userID","");
			Cookie reId = new Cookie("reId","");
			cookie_id.setMaxAge(0); 		//유효시간을 제로로 만들어버립니다!!
			reId.setMaxAge(0); 		//유효시간을 제로로 만들어버립니다!!
			response.addCookie(cookie_id);
			response.addCookie(reId);
			
		}
	} else {
		out.println("쿠키 생성이 실패했습니다");
	}
	%>

</body>
</html>