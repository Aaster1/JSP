<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	//로그인 유효성 검사
	function checkJoin() {
		let form = document.joinForm;		//joinForm이란 name을 가진 폼 요소를 가져옴
		
		//입력 여부 검증
		if(form.id.value =="")){			//폼 내부의 name을 .name을 통해 접근 가능하다
			
			alert(`아이디를 입력해주세요`)
			form.id.focus()
			return false					//해당 함수가 false를 반환하면?
		}
		if(form.id.value.length<6 || form.id.value.length>20){
			
			alert(`아이디는 6~20자 이내로 입력 가능합니다.`)
			form.id.select()
			return false
			
		}		
		
			
		if(form.pw.value==""){
			
			alert(`비밀번호를 입력해주세요`)
			form.pw.focus()
			return false
			
		}
		
		if(form.pw.value.length<6){
			
			alert(`비밀번호는 6자 이상으로 입력해야합니다.`)
			form.pw.select()
			return false
			
		}		
		
		if(form.name.value==""){
			alert(`이름을 입력해주세요`)
			form.name.focus()
			return false
		}
		
		//이름 검증 - 첫글자는 숫자로 사용불가
		
		if(!isNaN(form.name.value.substr(0,1))){
			alert(`이름은 숫자로 시작할 수 없습니다`)
			form.name.select()
			return false
		}
		
		for(int i =0; i<=form.name.value.length()){
			
		}
		
		
		//form.submit()		-	input type="button" onclick""에서 진행되는 방식. 이 내용 자체가 폼 안의 내용을 설정하고 제출한다는 의미이다.		이 때는 제출이 이루어지는셈입니다. focus같은건 벗겨집니다.
		return true			//- form 태그에 onsubmit 속성을 사용할 때
			
		
		
	}
	
	function checkNumber() {
		let form = document.joinForm
		let e = event.keyCode()		//이곳에서의 event는 win or doc 에서 작용하는 모든 키 이벤트를 말하는 모양이다.
		
		//숫자가 아닌 경우
		if(!(e>=48 &&e<=75)){
			alert(`숫자만 입력 가능합니다!`)
// 			event.returnValue = false		//입력반환값 여부
			form.age.value = ''
			return false
		}
		return true
	}
</script>
</head>
<body>

	<!-- 
	onsubmit = "return 여부"
		-	:	true-전송o || false-전송x
 -->



	<form action="./validation01_pro.jsp" name="joinForm"
		onsubmit="return checkJoin()">
		<!-- submit 진행 시 시행될 사항. false를 반환하면 제출 x, true면 제출 -->
		<p>
			아이디 : <input type="text" name="id" maxlength="20">
		</p>

		<p>
			비밀번호 : <input type="password" name="pw">
		</p>

		<p>
			이름 : <input type="text" name="name">
		</p>
		
		<p>
			나이 : <input type="text" name="age" onkeypress="return checkNumber()">			<!-- 키보드 키 입력 시 발생하는 이벤트 -->
		</p>

		<p>
			<input type="submit" value="로그인">
		</p>
	</form>

</body>
</html>