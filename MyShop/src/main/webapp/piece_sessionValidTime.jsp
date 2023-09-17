<%
long last_time = session.getLastAccessedTime();

long start_time = session.getCreationTime();

long used_time = (last_time - start_time);

long max_time = session.getMaxInactiveInterval();

long valid_time = (max_time - used_time)/1000/60;

out.print(valid_time);

// 	또는, out.print() 한 줄 대신 아래의 방법 이용할 수 있습니다.

// 	sessionValidTime.jsp로 경로 요청 후, 

// response.setContentType("text/html");

// response.getWriter().write(Long.toString(valid_time));

// 	이후, 요청한 페이지에서 response.getWriter().toString()메소드를 사용하여 html형태로 찍어낼 수 있습니다.



%>