<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="person" class="beans.Person">
	</jsp:useBean>
	
<!-- 	getter 없이 생성된 객체에 접근하는 jsp:getProperty -->
	
	<h3> 이름 :
	<jsp:getProperty property="name" name="person" />
	</h3>
	
	<hr>
	
	<h3> 나이 :
	<jsp:getProperty property="age" name="person" />
	</h3>
	
	<hr>
	<hr>
	
<!-- 	setter 없이 생성된 객체에 접근하는 jsp:setProperty -->
	<jsp:useBean id="person2" class="beans.Person"></jsp:useBean>
	
	<jsp:setProperty property="name" name="person2" value="20"/>		
	<!--↑↑↑ 이미 가져오는 단계에선 자료형 구분이 없다. 그대로 hmtl텍스트형으로 사용할 수 있게끔매핑함 -->
	<jsp:setProperty property="age" name="person2" value="20"/>
	<h3> 이름 :
	<jsp:getProperty property="name" name="person2" />
	</h3>
	
	<hr>
	
	<h3> 나이 :
	<jsp:getProperty property="age" name="person2" />
	</h3>



</body>
</html>