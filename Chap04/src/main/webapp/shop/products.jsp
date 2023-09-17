<%@page import="javax.swing.plaf.metal.MetalBorders.Flush3DBorder"%>
<%@page import="shop.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="shop.dao.ProductRepository"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap lib -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
</head>
<body>

	<jsp:include page="header.jsp" />

	<div class="px-4 py-5 my-5 text-center">
		<img class="d-block mx-auto mb-4"
			src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="" width="72"
			height="57">
		<h1 class="display-5 fw-bold text-body-emphasis">Centered hero</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Quickly design and customize responsive
				mobile-first sites with Bootstrap, the world’s most popular
				front-end open source toolkit, featuring Sass variables and mixins,
				responsive grid system, extensive prebuilt components, and powerful
				JavaScript plugins.</p>
			<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
				<button type="button" class="btn btn-primary btn-lg px-4 gap-3">Primary
					button</button>
				<button type="button" class="btn btn-outline-secondary btn-lg px-4">Secondary</button>
			</div>
		</div>
	</div>

	<%
	List<Product> productList = productDAO.list();
	%>

	<div class="container">
		<div class="row">
			<%
			for (int i = 0; i < productList.size(); i++) {
				Product product = productList.get(i);
			%>

			<div class="col-md-4">
				<h3><%=product.getName()%></h3>
				<p><%=product.getDescription()%></p>
				<p><%=product.getUnitPrice()%></p>
			</div>

			<%
			}
			%>
		</div>
	</div>

	<jsp:include page="footer.jsp" />


</body>
</html>