<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 내역</title>
<style>
#nav {
	list-style: none;
	margin: 10px 0 0 0;
	padding: 10px;
	width: 100%;
	background-color: yellow;
	width: 100%;
}

#nav li {
	display: inline;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<body style="background-color:yellow">
	<c:forEach items="${Payment}" var="Payment">
		<c:if test="${Payment.REGION == 1 }">
			<c:set var="REGION1" value="1구역"></c:set>

			<c:set var="AMOUNT1" value="${Payment.AMOUNT}"></c:set>
			<c:set var="CARNUMBER1" value="${Payment.CARNUMBER }"></c:set>

			<ul id="nav">
				<li>${AMOUNT1}원,차량번호:${CARNUMBER1}</li>
			</ul>

		</c:if>
		
		<c:if test="${Payment.REGION == 2 }">
			<c:set var="REGION1" value="2구역"></c:set>

			<c:set var="AMOUNT2" value="${Payment.AMOUNT}"></c:set>
			<c:set var="CARNUMBER2" value="${Payment.CARNUMBER }"></c:set>

			<ul id="nav">
				<li>${AMOUNT2}원,차량번호:${CARNUMBER2}</li>
			</ul>

		</c:if>
		
		
	</c:forEach>




</body>
</html>