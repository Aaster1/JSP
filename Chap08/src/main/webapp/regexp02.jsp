<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function checkForm() {
		let form = document.form;

		//아이디패턴 : 영문자,한글
		let regExpId = /^[a-z|A-Z|가-힣]/

		//이름 패턴 : 한글
		let regExpName = /^[가-힣]*$/			//첫글자가 한글로 시작해도 그만, 안해도 그만.

		//전화번호 패턴 : [3자리 숫자 - 3~4자리숫자 - 4자리 숫자]
		let regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/
		//이메일 패턴 : [숫자, 영문자]@[숫자,영문자]~.[영문자2~3자리]
		let regExpEmail = /^[a-z0-9A-Z]([-_\.]?[0-9a-zA-z])*@([-_\.]?[0-9a-zA-z])*\.[a-zA-Z]{2,3}$/i //정규표현식 ?는 , 그 밖의 경우는 그 자리에 올 수 없게 만들기 위한 용도로 보입니다. ()로 묶인 것이 아닌건 복수의 글자를 의미합니다.

		//(1) : ^[0-9a-zA-z]([-_\.]?[0-9a-zA-Z])*
		//(2) : @
		//(3) : [0-9a-zA-z]([-_\.]?[0-9a-zA-Z])*
		//(4) : .
		//(5) : [a-zA-Z]{2,3}

		let phone = form.phone1.value + "-" + form.phone2.value + "-"
				+ form.phone3.value
		let email = form.email.value

		let id = form.id.value

		let name = form.name.value

		if (!regExpPhone.test(phone)) {
			alert("전화번호 형식에 맞게 입력해주세요")

			return false
		}
		if (!regExpEmail.test(email)) {
			form.email.select()
			return false

		}
		if (!regExpId.test(id)) {
			form.id.select()
			return false

		}
		if (!regExpName.test(name)) {
			form.name.select()
			return false

		}

		return true

	}
</script>

</head>
<body>

	<form name="form" onsubmit="return checkForm()">
		<!-- return이 없으면 onsubmit이 반환값을 반환을 못한다. -->

		<p>
			제목 : <input type="text" name="title">
		</p>

		<p>
			아이디 : <input type="text" name="id">
		</p>

		<p>
			이름 : <input type="text" name="name">
		</p>

		<p>
			전화번호 : <select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		</p>
		<p>
			이메일 : <input type="text" name="email">
		</p>

		<p>
			<input type="submit" value="등록">
		</p>

	</form>

</body>
</html>