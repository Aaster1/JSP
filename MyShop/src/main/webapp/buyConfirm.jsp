
	<jsp:useBean id="cartDAO" class="shop.dao.CartDAO"></jsp:useBean>

<%

	String user_id = (String) session.getAttribute("user_id");
	
// 	구매 후 로직은 미구현.


// 	장바구니 초기화
	cartDAO.delAll(user_id);


	


%>