<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q-PARK 회원가입</title>

</head>
<body>


	<div>
		<h1>
			<span style="color: yellow;">Q</span>-PARK 회원가입
		</h1>
	</div>
	<form action="ex15.html" method="get">
		<fieldset style="width: 80%;">
			<legend><span style="text-align:center; font-size:18px; font-weight:bold;">회원 정보</span></legend>
			<p>
				이름 : <input type="text" name="name" placeholder="이름 입력" />
			</p>
			<p>
				나이 : <input type="number" name="age" placeholder="나이 입력" />
			</p>
			<p>
				전화 : <input type="tel" name="tel" placeholder="전화번호 입력" />
			</p>
			<p>
				비밀번호 : <input type="password" name="pwd" placeholder="비밀번호" />
			</p>
			<p>
				비밀번호 확인: <input type="password" name="pwd" placeholder="비밀번호" />
			</p>
			<p>
				성별 : <input type="radio" name="gender" value="남" />남자 <input
					type="radio" name="gender" value="여" />여자
			</p>
			<p>
				<button onclick="자바스크립트함수">회원 가입</button>
			</p>

		</fieldset>
	</form>


</body>
</html>


