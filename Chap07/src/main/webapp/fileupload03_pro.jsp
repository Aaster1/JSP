<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 
 	String path = "C:\\Users\\tj-bu\\Documents\\JSP\\Chap07\\src\\main\\webapp\\upload";
 
 	DiskFileUpload upload = new DiskFileUpload();
 	
 	upload.setSizeMax(10*1024*1024);  		//10MB	-	파일 최대 크기
 	upload.setSizeThreshold(4*1024);		//4MB	-	메모리상의 최대크기
 	upload.setRepositoryPath(path);			//임시 저장 경로
 	
 	List items = upload.parseRequest(request);
 	Iterator params= items.iterator();
 	
 	while(params.hasNext()){
 		FileItem item = (FileItem) params.next();
 		if(item.isFormField()){		//클래스 자료형을 기준으로 판별하는 메소드가 아니다 = isFormField()
 			String name = item.getFieldName();
 			String value = item.getString("utf-8");
 			out.println(name+" : "+value + "<br>");
 		}else{
 			String fileFieldName = item.getFieldName();
 			String fileName = item.getName();
 			String contentType = item.getContentType();
 			
 			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
 			long fileSize = item.getSize();
 			File file = new File(path+"/" + fileName);
 			item.write(file);
 			
 			out.print("----------------------------------------------------------------------");
 			out.print("요청 파라미터 이름 : "+fileFieldName+"<br>");
 			out.print("저장 파일 이름 : "+fileName+"<br>");
 			out.print("파일 컨텐츠 이름 : "+contentType+"<br>");
 			out.print("파일 크기 : "+fileSize+"<br>");
 		}
 		
 	}
 	
 	
 
 %>