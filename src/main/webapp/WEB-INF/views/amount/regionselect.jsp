<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>

<html>

<head>
<title>지역 선택</title>
<meta http-equiv="refresh" content="180">

<script>
	window.onload = function() {

		var canvas1 = document.getElementById("1Area");

		var context1 = canvas1.getContext("2d");

		var y = 110;
		var ry = 50;
		context1.beginPath();

		context1.strokeStyle = "black"; //사각형 선 색

		context1.lineWidth = 3; //사각형 선 두께

		/**1지역**/
		context1.font = "20pt '맑은 고딕'"
		context1.fillText('청주지역', 25, y);
		context1.rect(20, ry, 120, 100);
		context1.stroke();

		context1.fillText('1구역', 185, y);
		context1.fillText('2구역', 265, y);
		context1.fillText('3구역', 345, y);
		context1.fillText('4구역', 425, y);
		context1.fillText('5구역', 505, y);
		context1.fillText('6구역', 585, y);
		//context1.fillText('7구역', 665, y);
		//context1.fillText('8구역', 745, y);
		context1.strokeRect(180, ry, 80, 100);
		context1.strokeRect(260, ry, 80, 100);
		context1.strokeRect(340, ry, 80, 100);
		context1.strokeRect(420, ry, 80, 100);
		context1.strokeRect(500, ry, 80, 100);
		context1.strokeRect(580, ry, 80, 100);
		//context1.strokeRect(660, ry, 80, 100);
		//context1.strokeRect(740, ry, 80, 100);

		var canvas2 = document.getElementById("2Area");
		var context2 = canvas2.getContext("2d");

		context2.beginPath();

		context2.strokeStyle = "black"; //사각형 선 색

		context2.lineWidth = 3; //사각형 선 두께

		context2.font = "20pt '맑은 고딕'"
		context2.fillText('오창지역', 25, y);
		context2.rect(20, ry, 120, 100);
		context2.stroke();

		context2.fillText('1구역', 185, y);
		context2.fillText('2구역', 265, y);
		context2.fillText('3구역', 345, y);
		context2.fillText('4구역', 425, y);
		context2.fillText('5구역', 505, y);
		context2.fillText('6구역', 585, y);
		//context2.fillText('7구역', 665, y);
		//context2.fillText('8구역', 745, y);
		context2.strokeRect(180, ry, 80, 100);
		context2.strokeRect(260, ry, 80, 100);
		context2.strokeRect(340, ry, 80, 100);
		context2.strokeRect(420, ry, 80, 100);
		context2.strokeRect(500, ry, 80, 100);
		context2.strokeRect(580, ry, 80, 100);
		//context2.strokeRect(660, ry, 80, 100);
		//context2.strokeRect(740, ry, 80, 100);

		/**
		var canvas3 = document.getElementById("3Area");
		var context3 = canvas3.getContext("2d");

		context3.beginPath();

		context3.strokeStyle = "black"; //사각형 선 색

		context3.lineWidth = 3; //사각형 선 두께

		context3.font = "20pt '맑은 고딕'"
		context3.fillText('3지역', 45, y);
		context3.rect(20, ry, 120, 100);
		context3.stroke();

		context3.fillText('1구역', 185, y);
		context3.fillText('2구역', 265, y);
		context3.fillText('3구역', 345, y);
		context3.fillText('4구역', 425, y);
		context3.fillText('5구역', 505, y);
		context3.fillText('6구역', 585, y);
		context3.fillText('7구역', 665, y);
		context3.fillText('8구역', 745, y);
		context3.strokeRect(180, ry, 80, 100);
		context3.strokeRect(260, ry, 80, 100);
		context3.strokeRect(340, ry, 80, 100);
		context3.strokeRect(420, ry, 80, 100);
		context3.strokeRect(500, ry, 80, 100);
		context3.strokeRect(580, ry, 80, 100);
		context3.strokeRect(660, ry, 80, 100);
		context3.strokeRect(740, ry, 80, 100);
		 **/

	};
</script>
</head>

<body>
	<c:set var='sum1' value='0' />
	<c:set var='sum2' value='0' />
	<c:forEach items="${AmountList}" var="AmountList">
		<c:if test="${AmountList.REGION eq '1' }">
			<c:set var='sum1' value="${sum1+1}" />
		</c:if>
		
		<c:if test="${AmountList.REGION eq '2' }">
			<c:set var='sum2' value="${sum2+1}" />
		</c:if>
	</c:forEach>
	
	
	<div style="height: auto; width: 900px; border: 1px solid black;"
		onclick="location.href='check1'">
		<canvas id="1Area" width="1000" height="200"></canvas>
		<p> ${6-sum1}자리 비어있습니다.</p>
	</div>
	<div style="height: auto; width: 900px; border: 1px solid black;"
		onclick="location.href='check2'">
		<canvas id="2Area" width="1000" height="200"></canvas>
		<p> ${6-sum2}자리 비어있습니다.</p>
	</div>

	<!-- 
	<div style="height: auto; width: 1000px; border:1px solid black;">
		<canvas id="3Area" width="1000" height="200" onclick="alert('3Area')"></canvas>
	</div> 
-->

</body>

</html>
