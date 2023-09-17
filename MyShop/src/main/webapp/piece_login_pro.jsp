    <jsp:useBean id="userManagementDAO" class="shop.dao.UserManagement"></jsp:useBean>

	<%
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		int result = userManagementDAO.login(id, pw);
		
		if(result ==1){
			session.invalidate();		//혹 기존 세션이 남아있는 경우의 수가 있을까 초기화
			session.setAttribute("user_id", id);
			session.setAttribute("user_pw", pw);
			response.sendRedirect("products.jsp");
		}else{
			response.getWriter().write("아디디 또는 비밀번호가 일치하지 않습니다.");
			
// 			login페이지에서 『response.getWriter()의 값이 없을 때』를 조건으로 자바스크립트의 response.getWriter().toString()메소드를 실행하여 alrer()안에 넣으면 될듯!!

		}
	%>