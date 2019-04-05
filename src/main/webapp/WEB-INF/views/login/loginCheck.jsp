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
<script type="text/javascript">
console.log("${member.NAME}");
		alert("${member.NAME}님 환영합니다.");
		document.location.href = "/Parking";
	</script>
</body>
</html>