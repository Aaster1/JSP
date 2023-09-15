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
		<h1 class="display-5 fw-bold text-body-emphasis">상품등록</h1>
		<div class="col-lg-6 mx-auto">
			<p class="lead mb-4">Shop 쇼핑몰입니다.</p>
		</div>
	</div>

	<!--   [NEW] 상품 등록 입력 화면 -->

	<div class="container">
		<!-- [NEW]enctype 추가 -->
		<form action="./add_pro.jsp" method="POST" enctype="multipart/form-data">
		
		
		
			<!-- [NEW] 파일 입력 추가 -->
			<div class="input-group mb-3 row">
				<label class="input-group-text col-md-2">상품 이미지</label> <input
					type="file" class="form-control col-md-10" name="file">
			</div>
			<div class="input-group mb-3 row">
				<label class="input-group-text col-md-2">상품 코드</label> <input
					type="text" class="form-control col-md-10" name="productId">
			</div>
			<div class="input-group mb-3 row">
				<span class="input-group-text col-md-2">상품명</span> <input
					type="text" class="form-control col-md-10" name="name">
			</div>
			<div class="input-group mb-3 row">
				<span class="input-group-text col-md-2">가격</span> <input type="text"
					class="form-control col-md-10" name="unitPrice">
			</div>
			<div class="input-group mb-3 row">
				<span class="input-group-text col-md-12">상세 정보</span>
				<textarea style="height: 200px;" class="form-control col-md-12"
					name="description"></textarea>

			</div>
			<div class="input-group mb-3 row">
				<span class="input-group-text col-md-2">제조사</span> <input
					type="text" class="form-control col-md-10" name="manufacturer">
			</div>
			<div class="input-group mb-3 row">
				<span class="input-group-text col-md-2">분류</span> <input type="text"
					class="form-control col-md-10" name="category">
			</div>
			<div class="input-group mb-3 row">
				<span class="input-group-text col-md-2">재고</span> <input
					type="number" class="form-control col-md-10" name="unitsInStock">
			</div>
			<div class="input-group mb-3 row">
				<span class="input-group-text col-md-2">상태</span>
				<div class="col-md-10 row">
					<div class="form-check col-md-2">
						<input type="radio" class="form-check-input" name="condition"
							value="NEW" id="condition-new"> <label
							for="condition-new">신규제품</label>
					</div>
					<div class="form-check col-md-2">
						<input type="radio" class="form-check-input" name="condition"
							value="OLD" id="condition-old"> <label
							for="condition-old">중고 제품</label>
					</div>
					<div class="form-check col-md-2">
						<input type="radio" class="form-check-input" name="condition"
							value="RE" id="condition-re"> <label for="condition-re">재생
							제품</label>
					</div>
					<div class="col-md-6"></div>
				</div>
			</div>
			
			<div class="d-flex justify-content-between mt-5 mb-5">
				<a href="./products.jsp" class="btn btn-lg btn-secondary">목록</a>
				<input type="submit" class="btn btn-lg btn-primary" value="등록">			<!-- submit타입의 input 의 value는 submit버튼 내부의 글자를 의미하는듯하다. -->
			</div>
		</form>
	</div>

	<jsp:include page="footer.jsp" />


</body>
</html>