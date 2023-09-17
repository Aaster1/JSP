<%@page import="shop.dto.Product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");

	String path = "C:\\Users\\tj-bu\\Documents\\JSP\\Chap07\\src\\main\\webapp\\upload";
	
	DiskFileUpload upload = new DiskFileUpload();
	
	upload.setSizeMax(10*1024*1024);
	upload.setSizeThreshold(4*1024);
	upload.setRepositoryPath(path);
	
	List<FileItem> items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	Product product = new Product();
	while(params.hasNext()){
		FileItem item = (FileItem) params.next();
		
		String value = item.getString("utf-8");
		if(item.isFormField()){
			switch(item.getFieldName()){
			case "productId" : product.setProductId(value);break;
			case "name" : product.setProductId(value);break;
			case "unitPrice" : product.setProductId(value);break;
			case "manufacturer" : product.setProductId(value);break;
			case "category" : product.setProductId(value);break;
			case "unitsInStock" : product.setProductId(value);break;
			case "condition" : product.setProductId(value);break;
			}
		}else{
			
		}
		
	}
	
%>

</body>
</html>