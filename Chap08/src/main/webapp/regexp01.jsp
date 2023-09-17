<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	function checkForm() {
		let regExp = /Java/i //Java 라는 문자열을 대소문자 구분없이 검색
		let str = document.form.title.value
		let result = regExp.exec(str) //정규 표현식에 부합한 문자열을 반환합니다. regExp라는 정규표현식으로 exec()괄호 안에 있는 내용을 검증하고 배열로 받습니다.
		console.log(result)
		//regExp.test()		:	정규 표현식에 부합한지에 대한 여부를 반환합니다
		if (regExp.test(str)) {
			alert(result[0])
		}

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
			전화번호 : <select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2"> - <input type="text" maxlength="4" size="4" name="phone3"> -
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