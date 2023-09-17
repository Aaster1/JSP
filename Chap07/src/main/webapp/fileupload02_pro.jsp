<%@page import="java.util.UUID"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.*"%>		<!-- 뒤에 아스타 붙이면 모든 것을 선택하여 가져올 수도있습니다. 이곳에서도 사용이 가능합니다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String fileUploadPath = "C:\\Users\\tj-bu\\Documents\\JSP\\Chap07\\src\\main\\webapp\\upload";


	// commons-fileupload에서 파일업로드를 기능을 가진 객체 DiskFileUpload 생성
	DiskFileUpload upload = new DiskFileUpload();
	
	
	// parseRequest(request) : 매개변수 내부의 객체를 분석하여, multipart/form-data 로 읽어들인 데이터의 요소를 반환. 
	List items = upload.parseRequest(request);		//파일 파라미터 목록
	
	Iterator params = items.iterator();		//이터레이터화
	
	
	
	while(params.hasNext()){
		FileItem fileItem = (FileItem) params.next();		//파일 요쏘
		
		
// 		isFormField() : 요청 파라미터가 일반 데이터인지 확인(일반:true,파일: false)
// 		파일인지 확인
		if(!fileItem.isFormField()){
			String fileName = UUID.randomUUID()+"_"+fileItem.getName();
			
			File file = new File(fileUploadPath+"/"+fileName);	//~\\upload\\경로로 파일 객체 생성
			fileItem.write(file);		//저장해버리기 작업
			response.sendRedirect("fileupload02.jsp");
		}
	}
%>