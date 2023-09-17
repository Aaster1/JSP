<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="org.apache.tomcat.util.http.fileupload.MultipartStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//클라이언트에서 서버로 요청한 파일을 다루는 클래스
	//MultipartRequest(request, 저장경로, 파일 최대크기, 인코딩타입, 파일명 정책 객체)
	String filePath = "C:\\Users\\tj-bu\\Documents\\JSP\\Chap07\\src\\main\\webapp\\upload";
	int maxFileSize = 10*1024*1024;
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();		//중복 파일 이름 발생 시 처리해주는 기능 객체
// 	중요한 점은, 이 녀석은 배열이 아닌 단일 객체입니다.

	MultipartRequest multi = new MultipartRequest(request,filePath,maxFileSize,"UTF-8",policy);		//폼으로 전송된 파일들을 담아버리기
	
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	
	out.println("name : " + name + "<br>");
	out.println("title : " + title + "<br>");
	
// 	파일

	Enumeration files = multi.getFileNames();			//Enumeration에 이름들을 담아버리기! 복수의 객체들을 하나씩 불러와 뭉친 다음 배열로 반환하는 듯합니다.
	out.print(files);

	while(files.hasMoreElements()){
		String file = (String)files.nextElement();		//요소 하나씩 file이란 변수에 저장하기
		
		String fileName = multi.getFilesystemName(file);		//file이름에 대한, 저장 후 이름 가져오기 = 업로드된 파일명
		String original = multi.getOriginalFileName(file);		//file이름에 대한, 원본 이름	= 클라이언트측에서 업로드한 파일명
		String type = multi.getContentType(file);				//file이름에 대한, 파일 타입
		File f = multi.getFile(file);						// file이름에 해당하는 file자체를 불러와 f로 지칭.
		
		out.println("요청 파라미터 이름 : " + file+ "<br>");
		out.println("저장 파일 이름 : " + fileName + "<br>");
		out.println("실제 파일 이름 : " + original + "<br>");
		out.println("파일 타입 이름 : " + type + "<br>");
		out.println("저장 경로 : "+f.getPath()+"<br>");
		
		if(f != null){				//file이 비어있지 않으면, 파일의 크기를 읊으시오.
		out.println("파일 크기 : " + file.length() + "<br>");
			
		}
	}
%>