<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="shop.dao.ProductRepository"></jsp:useBean>

<%
	request.setCharacterEncoding("UTF-8");

	int productId = Integer.parseInt(request.getParameter("productId"));
	
	int result = productDAO.deleteProduct(productId);
	
	if(result==0){
		%>
		
		<%@ include file="./product.jsp"%>
		
		<hr>
		<h1>!!DELETE FAILED!!</h1>
		
		<%
		
		
	}else{
		response.sendRedirect("products.jsp");
	}

%>