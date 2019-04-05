<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<form role="form" method="post" autocomplete="off" action="loginCheck">

		<p>
			<label for="ID">아이디</label> <input type="text" id="ID" name="ID" />

		</p>

		<p>
			<label for="PW">패스워드</label> <input type="password" id="PW" name="PW" />
		</p>
		<p><button type="submit">로그인</button>
		
		<p><a href="">회원가입</a>


	</form>
</body>
</html>