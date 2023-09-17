<%@page import="shop.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="shop.dao.ProductRepository"></jsp:useBean>

	<%
		request.setCharacterEncoding("UTF-8");
	
		String productId = request.getParameter("productId");
		String name= request.getParameter("name");
// 		DTO에 담기 위한 형변환을 진행합니다.
		int unitPrice;
		try{
			unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
		}catch(Exception e){
			unitPrice = 0;
			e.printStackTrace();
		}
		String description = request.getParameter("description");
		String manufacturer= request.getParameter("manufacturer");
		String category= request.getParameter("category");
// 		DTO에 담기 위한 형변환을 진행합니다.
		Long unitsInStock = request.getParameter("unitsInStock").isEmpty()?0:Long.parseLong(request.getParameter("unitsInStock"));
		String condition= request.getParameter("condition");
		
		
		
		Product product = new Product();
		
		
		
		
		product.setProductId(productId);
		product.setName(name);
		product.setUnitPrice(unitPrice);
		product.setDescription(description);
		product.setManufacturer(manufacturer);
		product.setCategory(category);
		product.setUnitsInStock(unitsInStock);
		product.setCondition(condition);
		
		int result = productDAO.insert(product);		//상품 데이터 등록 후 result 값으로 변경결과(0 or 1)을 반환받아옵니다.
		if(result==0){
			
		}else{
		response.sendRedirect("./products.jsp");		//상품 목록으로 이동			
		}
	%>