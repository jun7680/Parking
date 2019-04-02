<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="59">

<meta charset="UTF-8">
<title>주차요금 확인</title>

<script>


</script>
<style>
#Wrapper1 {
	width: 100%
}

#Wrapper2 {
	width: 100%
}

#Area1 {
	border: 1px solid;
	float: left;
	width: 33%;
	height: 400px;
	line-height: 1em;
	position: relative;
}

#Area1 p {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	margin-top: -0.5em;
	margin-left: -50%;
	text-align: center;
}

#Area2 {
	border: 1px solid;
	float: left;
	width: 33%;
	height: 400px;
	line-height: 1em;
	position: relative;
}

#Area2 p {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	margin-top: -0.5em;
	margin-left: -50%;
	text-align: center;
}

#Area3 {
	border: 1px solid;
	float: left;
	width: 33%;
	height: 400px;
	line-height: 1em;
	position: relative;
}

#Area3 p {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	margin-top: -0.5em;
	margin-left: -50%;
	text-align: center;
}

#Area4 {
	border: 1px solid;
	float: left;
	width: 33%;
	height: 400px;
	line-height: 1em;
	position: relative;
}

#Area4 p {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	margin-top: -0.5em;
	margin-left: -50%;
	text-align: center;
}

#Area5 {
	border: 1px solid;
	float: left;
	width: 33%;
	height: 400px;
	line-height: 1em;
	position: relative;
}

#Area5 p {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	margin-top: -0.5em;
	margin-left: -50%;
	text-align: center;
}

#Area6 {
	border: 1px solid;
	float: left;
	width: 33%;
	height: 400px;
	line-height: 1em;
	position: relative;
}

#Area6 p {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 100%;
	margin-top: -0.5em;
	margin-left: -50%;
	text-align: center;
}
</style>



</head>
<body>
	<c:forEach items="${AmountList}" var="AmountList">

		<c:if test="${AmountList.AREA ==1}">
			<c:set var="AREA1" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT1" value="${AmountList.AMOUNT }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==2}">
			<c:set var="AREA2" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT2" value="${AmountList.AMOUNT }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==3}">
			<c:set var="AREA3" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT3" value="${AmountList.AMOUNT }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==4}">
			<c:set var="AREA4" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT4" value="${AmountList.AMOUNT }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==5}">
			<c:set var="AREA5" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT5" value="${AmountList.AMOUNT }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==6}">
			<c:set var="AREA6" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT6" value="${AmountList.AMOUNT }"></c:set>
		</c:if>

		<c:if test="${AmountList.AREA ==null}">
			<c:set var="AREA" value="비어있음"></c:set>
			<c:set var="AMOUNT" value="0"></c:set>
		</c:if>


	</c:forEach>


	<div id="Wrapper1">
		<div id="Area1" onclick="alert(${AMOUNT1})">
			<c:if test="${AREA1 != null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">${AREA1}구역</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">${AMOUNT1}원</span>
				</p>
			</c:if>
			<c:if test="${AREA1 == null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area2">

			<c:if test="${AREA2 != null}">
			<p>
					<span style="font-size: 25pt; font-weight: bold">${AREA2}구역</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">${AMOUNT2}원</span>
				</p>
			</c:if>
			<c:if test="${AREA2 == null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>
		<div id="Area3">
			<c:if test="${AREA3 != null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">${AREA3}구역</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">${AMOUNT3}원</span>
				</p>
			</c:if>
			<c:if test="${AREA3 == null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>


	</div>

	<div id="Wrapper2">

		<div id="Area4">


			<c:if test="${AREA4 != null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">${AREA4}구역</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">${AMOUNT4}원</span>
				</p>
			</c:if>
			<c:if test="${AREA4 == null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area5">

			<c:if test="${AREA5 != null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">${AREA5}구역</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">${AMOUNT5}원</span>
				</p>
			</c:if>
			<c:if test="${AREA5 == null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area6">
			<c:if test="${AREA6 != null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">${AREA6}구역</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">${AMOUNT6}원</span>
				</p>
			</c:if>
			<c:if test="${AREA6 == null}">
				<p>
					<span style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

	</div>
	<!-- 
	
	
	 -->

</body>



</html>