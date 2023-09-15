<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


		<!-- 폼 태그로 넘겨주는 텍스트 및 정보들은 기본적으로 인코딩 및 압축이 되어 전송되기에, 파일을 전송할 땐 '인코딩을 풀어야한다'..  enctype="application/x-www-form-urlencoded" -->
		
		<!-- 
			enctype	:	폼 데이터가 서버로 전송될 때, 데이터를 인코딩하는 방법을 지정하는 속성
				*method = "post" 일 때만 사용가능
					- application/x-www-form-urlencoded	:	서버로 보내기 전에 인코딩
					- multipart/form-data				:	모든 문자를 인코딩하지 않음
															*	파일, 이미지 전송할 때 사용
					- text/plain						:	공백만 +로 변환, 나머지는 인코딩하지 않음
					
		 -->
		
	<form action="fileupload01_pro.jsp" method="POST" enctype="multipart/form-data">		
		<p>이 름 : <input type="text" name="name"> </p>
		<p>제 목 : <input type="text" name="title"> </p>
		<p><input type="file" name="file"> </p>			<!--  multibple = "multiple"로 정의하면 여러 개 선택이 가능해집니다!!!!!!!!!!!!!!! -->
		<p><input type="file" name="file2"> </p>
		<p><input type="file" name="file3"> </p>
		<p>
			<input type="submit" value="업로드">
		</p>
		
	</form>

</body>
</html>