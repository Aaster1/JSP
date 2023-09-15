<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="shop.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="shop.dao.ProductRepository"></jsp:useBean>
<%
		request.setCharacterEncoding("UTF-8");
	
		//[NEW] -파일 업로드 추가
		String path = "C:\\Users\\tj-bu\\Documents\\JSP\\Chap07\\src\\main\\webapp\\upload";
	 
 		DiskFileUpload upload = new DiskFileUpload();
 	
 		upload.setSizeMax(10*1024*1024);  		//10MB	-	파일 최대 크기
 		upload.setSizeThreshold(4*1024);		//4MB	-	메모리상의 최대크기
 		upload.setRepositoryPath(path);			//임시 저장 경로
 	
 		List items = upload.parseRequest(request);
 		Iterator params= items.iterator();
 	
 		Product product = new Product();
 		String file = "";
 		while(params.hasNext()){
 		FileItem item = (FileItem) params.next();
 		
//  		FileItem
//	  			.getFieldName()	:	요청 파라미터 이름 - productId
//  			.getString('인코딩형태')	:	요청 파라미터 값 - P1001
 		
 		
 		String value = item.getString("utf-8");
 		if(item.isFormField()){
 			switch(item.getFieldName()){
 			case "productId" : product.setProductId(value);
 			case "name" : product.setName(value);
 			case "unitPrice" : product.setUnitPrice(value.isEmpty()?0:Integer.parseInt(value));
 			case "description" : product.setDescription(value);
 			case "manufacturer" : product.setManufacturer(value);
 			case "category" : product.setCategory(value);
 			case "unitsInStock" : product.setUnitsInStock(value.isEmpty()?0:Long.parseLong(value));
 			case "condition" : product.setCondition(value);
 			}
 		
 		
 		
 		
 		
 		}else{
 			if(item.getName()==null) continue;		//값을 건네받지 못한 요소는 스킵
 				String fileName = item.getName();
 				File fileObj = new File(path +"/" + fileName);
 				item.write(fileObj);
 				file=fileObj.getPath();
 				product.setFile(file);
 			}
 		}
		int result = productDAO.insert(product);		//상품 데이터 등록 후 result 값으로 변경결과(0 or 1)을 반환받아옵니다.
		if(result==0){
			
		}else{
		response.sendRedirect("./products.jsp");		//상품 목록으로 이동			
		}
	%>