<jsp:useBean id="cartDAO" class="shop.dao.CartDAO"></jsp:useBean>

<%

	int cartId = Integer.parseInt(request.getParameter("cartId"));
	int result = cartDAO.delProduct(cartId);
	if(result ==1){
		response.getWriter().write("해당 품목을 삭제했습니다.");
	}else{
		response.getWriter().write("삭제에 실패했습니다(?)");
	}
%>