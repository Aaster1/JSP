<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="fileupload02_pro.jsp" method="POST" enctype="multipart/form-data">
		<p> 파일 : 
			<input type="file" name="file" multiple="multiple">
		</p>
		<p>
			<input type="submit" value="읍로드">
		</p>
	</form>

</body>
</html>