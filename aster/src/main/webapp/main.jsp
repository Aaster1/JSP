<%@page import="java.util.List"%>
<%@page import="aster.DTO.Board"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="boardDAO" class="aster.DAO.BoardDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	
	<div class="container">
		<div class="row">
		<%
		List<Board> boardList = boardDAO.selectList();
		
			for(int i = 0; i<boardList.size();i++){
				Board board = boardList.get(i);
		%>
			<div class="col-md-4" style="border:3px dashed gray;">
			<h3><%= board.getTitle()%></h3>
			<p><%= board.getWriter()%></p>
			<p><%= board.getContent()%></p>
			<a class="btn btn-primary" href="./read.jsp?boardNo=<%=board.getBoardNo()%>">조회</a>

		
		<%
			}
		
		%>
		
			
			
			</div>
			
		</div>
	</div>






<jsp:include page="./packages.jsp"></jsp:include>
</body>
</html>