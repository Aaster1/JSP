<%@page import="shop.dto.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="shop.dto.Product"%>
<jsp:useBean id="productDAO" class="shop.dao.ProductRepository"></jsp:useBean>>
<jsp:useBean id="cartDAO" class="shop.dao.CartDAO"></jsp:useBean>


<%
	
	List<Product> productList = new ArrayList<Product>();
	List<Cart> cartList = new ArrayList<Cart>();

// 	단일 품목 결제 양식과 장바구니 결제 양식을 하나의 리스트형으로 뭉쳐보려 했으나 도무지 방법이 떠오르지 않습니다.   
// 	따라서, 일단 productId를 가져오는 단일품목 구매 버튼을 통해 buy.jsp에 도달했을 때의 로직과 그게 아닌(장바구니경로) 형태로 양식을 복사해야할 듯 합니다.
	
	if(request.getParameter("productId")!=null){
		
	Product product = productDAO.getProduct(request.getParameter("productId"));
	productList.add(product);
	
// 	여기서부터는 product 단일 항목을 가지고 양식 작성의 경우. 
	
	
	}else{
		cartList.addAll(cartDAO.getCart( (String) session.getAttribute("user_id")));
		
// 	여기서부터는 cartDB의 리스트를 가지고 양식 작성의 경우.
		
		
	}
	



%>