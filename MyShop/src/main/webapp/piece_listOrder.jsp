<jsp:useBean id="productDAO" class="shop.dao.ProductRepository"></jsp:useBean>

<%

	if(request.getParameter("orderName")==null){
		if(request.getParameter("search")!=null){
			productDAO.getProductList(request.getParameter("search"));
		}else{
			productDAO.getProductList();
		}
	}else{
		productDAO.getProductList(request.getParameter("orderName"),request.getParameter("isDESC"));
	}

// 	products 페이지를 처음 로딩 할때의 조건으로 위 조건을 넣었습니다.
// 	DAO리스트 조회 매개변수가 없을 시엔 일반 조회,
// 		//		매개변수가 하나일 시엔 search로 조회
// 		//		매개변수가 두 개일 시엔 정렬 조회
// 	orderName 속성명이 없을 경우엔 디폴트로 조회하도록 되어있으며, orderName의 속성이 존재할 경우엔 해당 속성값, 그리고 그와 같이 넘어올 isDESC의 값을 조회하여 DAO정렬리스트의 매개변수로 넘겨줍니다.
// 	따라서, products페이지 내부의 정렬기준, 정렬 형태(ex. 상품명 / 오름차순)의 값을 설정할 select / option태그들의 폼을 구축하고 해당 폼이 products페이지로 요청하는 기반이 마련되어야합니다.
// 	요약. 새 폼에 select태그로 상품명이랑 오름차순 선택하고 재로딩하는 버튼을 만들어야합니다. 


// 	nav의 검색 버튼은 검색입력란의 값을 가지고 해당 페이지 경로를 다시 찾아드는 식으로 이루어집니다.
%>