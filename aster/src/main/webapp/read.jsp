<%@page import="aster.DTO.Board"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="boardDAO" class="aster.DAO.BoardDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String boardNoStr = request.getParameter("baordNo");
		if (boardNoStr == null) {
			Board board = new Board();
		} else {
			int boardNo = Integer.parseInt(boardNoStr);
			Board board = boardDAO.select(boardNo);
		}
	%>

	<div class="container">
		<div class="row">

			<div class="col-md-4">게시글번호</div>
			<div class="col-md-8 form-floating">
				<textarea class="form-control"><%if(boardNoStr!=null)out.print(board.getBoardNo());%></textarea>
			</div>
			<div class="col-md-4">제목</div>
			<div class="col-md-8 form-floating">
				<textarea class="form-control"><%=board.getTitle()%></textarea>
			</div>
			<div class="col-md-4">작성자</div>
			<div class="col-md-8 form-floating">
				<textarea class="form-control"><%=board.getWriter()%></textarea>
			</div>
			<div class="col-md-4">내용</div>
			<div class="col-md-8 form-floating">
				<textarea class="form-control"><%=board.getContent()%></textarea>
			</div>
			<div class="col-md-4">작성일자</div>
			<div class="col-md-8 form-floating">
				<textarea class="form-control"><% if(boardNoStr!=null) out.print(board.getRegDate());%></textarea>
			</div>
			<div class="col-md-4">수정일자</div>
			<div class="col-md-8 form-floating">
				<textarea class="form-control"><%if(boardNoStr!=null) out.print(board.getUpdDate());%></textarea>
			</div>
			<div class="col-md-12"></div>
			<%
			if (boardNoStr == null) {
			%>
			<div class="col-md-8"></div>
			<div class="col-md-2 btn btn-secondary"
				onclick="location.href='./main.jsp'">초기화면</div>
			<div class="col-md-2 btn btn-primary">글쓰기</div>
			<%
			} else {
			%>
			<div class="col-md-6"></div>
			<div class="col-md-2 btn btn-secondary"
				onclick="location.href='./main.jsp'">초기화면</div>
			<div class="col-md-2 btn btn-info" onclick="alert(boardDAO.update())">수정</div>
			<div class="col-md-2 btn btn-danger"
				onclick="alert(boardDAO.delete())">삭제</div>
			<%
			}
			%>
		</div>
	</div>
	<%

	%>


	<jsp:include page="./packages.jsp"></jsp:include>
</body>
</html>