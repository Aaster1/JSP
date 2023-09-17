<%@page import="shop.dto.Cart"%>
<%@page import="java.util.List"%>
<jsp:useBean id="cartDAO" class="shop.dao.CartDAO"></jsp:useBean>

<%
// 	유저별 카트 DB 리스트 조회
	String user_id = (String) session.getAttribute("user_id");
	
	List<Cart> cartList = cartDAO.getCart(user_id);
	
// 	카트리스트를 이용한 html작성


	
%>