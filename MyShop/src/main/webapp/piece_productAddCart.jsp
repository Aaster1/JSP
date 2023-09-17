<%@page import="shop.dto.Product"%>
<jsp:useBean id="cartDAO" class="shop.dao.CartDAO"></jsp:useBean>
<jsp:useBean id="productDAO" class="shop.dao.ProductRepository"></jsp:useBean>
<%


	String user_id = (String) session.getAttribute("user_id");
	String productId = request.getParameter("productId");
	
	Product product = productDAO.getProduct(productId);
	
	int result = cartDAO.addProduct(user_id,product);
	if(result==1){
		response.getWriter().write("장바구니에 담았습니다.");
	}else{
		response.getWriter().write("장바구니에 담지 못했습니다(?)");
	}
	
// 	응답할 페이지(product.jsp)에서 response.getWriter().toString();
%>