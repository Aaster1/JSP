<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	WEB-INF > lib : jstl-xxx-impl.jar 라이브러리 추가 -->

	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value = "${k}"/>
	</c:forEach>

<!-- 	로직과 표현을 쉽게 사용할 수 있도록 도와주는 JSTL -->
<%-- 		${ }은 표현언어 = EL --%>
</body>
</html>