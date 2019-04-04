<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta http-equiv="refresh" content="59">

<meta charset="UTF-8">
<title>주차요금 확인</title>

<script>
	var id;
	$(document).ready(function() {
		$('body').click(function(e) {
			id = e.target.getAttribute('id');
			if (id == 'Area1')
				alert(document.getElementById('textAmount1').innerHTML);
			if (id == 'Area2')
				alert(document.getElementById('textAmount2').innerHTML);
			if (id == 'Area3')
				alert(document.getElementById('textAmount3').innerHTML);
			if (id == 'Area4')
				alert(document.getElementById('textAmount4').innerHTML);
			if (id == 'Area5')
				alert(document.getElementById('textAmount5').innerHTML);
			if (id == 'Area6')
				alert(document.getElementById('textAmount6').innerHTML);

		});
	});
</script>
<style>
.Wrapper1 {
	width: 100%
}

.Wrapper2 {
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
			<c:set var="CARNUMBER1" value="${AmountList.CARNUMBER }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==2}">
			<c:set var="AREA2" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT2" value="${AmountList.AMOUNT }"></c:set>
			<c:set var="CARNUMBER2" value="${AmountList.CARNUMBER }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==3}">
			<c:set var="AREA3" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT3" value="${AmountList.AMOUNT }"></c:set>
			<c:set var="CARNUMBER3" value="${AmountList.CARNUMBER }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==4}">
			<c:set var="AREA4" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT4" value="${AmountList.AMOUNT }"></c:set>
			<c:set var="CARNUMBER4" value="${AmountList.CARNUMBER }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==5}">
			<c:set var="AREA5" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT5" value="${AmountList.AMOUNT }"></c:set>
			<c:set var="CARNUMBER5" value="${AmountList.CARNUMBER }"></c:set>
		</c:if>
		<c:if test="${AmountList.AREA ==6}">
			<c:set var="AREA6" value="${AmountList.AREA}"></c:set>
			<c:set var="AMOUNT6" value="${AmountList.AMOUNT }"></c:set>
			<c:set var="CARNUMBER6" value="${AmountList.CARNUMBER }"></c:set>
		</c:if>




	</c:forEach>


	<div class="Wrapper1">
		<div id="Area1">
			<c:if test="${AREA1 != null && CARNUMBER1 != null}">
				<p>
					<span id="textArea1" style="font-size: 25pt; font-weight: bold">${AREA1}구역</span><br>
					<br> <span id="textAmount1"
						style="font-size: 20pt; font-weight: bold">${AMOUNT1}원</span><br>
					<br> <span id="textCarNumber1"
						style="font-size: 20pt; font-weight: bold">${CARNUMBER1}</span>
				</p>
			</c:if>
			<c:if test="${AREA1 == null || CARNUMBER1 == null}">
				<p>
					<span id="textArea1" style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span id="textAmount1"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area2">

			<c:if test="${AREA2 != null && CARNUMBER2 != null}">
				<p>
					<span id="textArea2" style="font-size: 25pt; font-weight: bold">${AREA2}구역</span><br>
					<br> <span id="textAmount2"
						style="font-size: 20pt; font-weight: bold">${AMOUNT2}원</span><br>
					<br> <span id="textCarNumber2"
						style="font-size: 20pt; font-weight: bold">${CARNUMBER2}</span>
				</p>
			</c:if>
			<c:if test="${AREA2 == null || CARNUMBER2 == null}">
				<p>
					<span id="textArea2" style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span id="textAmount2"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>
		<div id="Area3">
			<c:if test="${AREA3 != null && CARNUMBER3 != null}">
				<p>
					<span id="textArea3" style="font-size: 25pt; font-weight: bold">${AREA3}구역</span><br>
					<br> <span id="textAmount3"
						style="font-size: 20pt; font-weight: bold">${AMOUNT3}원</span><br>
					<br> <span id="textCarNumber3"
						style="font-size: 20pt; font-weight: bold">${CARNUMBER3}</span>
				</p>
			</c:if>
			<c:if test="${AREA3 == null || CARNUMBER3 == null}">
				<p>
					<span id="textArea3" style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span id="textAmount3"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>


	</div>

	<div class="Wrapper2">

		<div id="Area4">


			<c:if test="${AREA4 != null && CARNUMBER4 != null}">
				<p>
					<span id="textArea4" style="font-size: 25pt; font-weight: bold">${AREA4}구역</span><br>
					<br> <span id="textAmount4"
						style="font-size: 20pt; font-weight: bold">${AMOUNT4}원</span><br>
					<br> <span id="textCarNumber4"
						style="font-size: 20pt; font-weight: bold">${CARNUMBER4}</span>
				</p>
			</c:if>
			<c:if test="${AREA4 == null || CARNUMBER4 == null}">
				<p>
					<span id="textArea4" style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span id="textAmount4"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area5">

			<c:if test="${AREA5 != null && CARNUMBER5 != null}">
				<p>
					<span id="textArea5" style="font-size: 25pt; font-weight: bold">${AREA5}구역</span><br>
					<br> <span id="textAmount5"
						style="font-size: 20pt; font-weight: bold">${AMOUNT5}원</span><br>
					<br> <span id="textCarNumber5"
						style="font-size: 20pt; font-weight: bold">${CARNUMBER5}</span>
				</p>
			</c:if>
			<c:if test="${AREA5 == null || CARNUMBER5 == null}">
				<p>
					<span id="textArea5" style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span id="textAmount5"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area6">
			<c:if test="${AREA6 != null && CARNUMBER6 != null}">
				<p>
					<span id="textArea6" style="font-size: 25pt; font-weight: bold">${AREA6}구역</span><br>
					<br>
					<span id="textAmount6" style="font-size: 20pt; font-weight: bold">${AMOUNT6}원</span><br>
					<br>
					<span id="textCarNumber6"
						style="font-size: 20pt; font-weight: bold">${CARNUMBER6}</span>
				</p>
			</c:if>
			<c:if test="${AREA6 == null || CARNUMBER6 == null}">
				<p>
					<span id="textArea6" style="font-size: 25pt; font-weight: bold">비어있음</span><br>
					<br> <span id="textAmount6"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

	</div>

	<form role="form" method="post" action="carNumberCheck">
	<p>
	<label for="AREA">주차 구역</label>
	<input type="text" id="AREA" name="AREA"/>
	</p>
	<p>
	<label for="CARNUMBER">차량 번호</label>
	<input type="text" id="CARNUMBER" name="CARNUMBER"/>
	
	</p>
	
	<p>
	<button type="submit">주차</button>
	</p>
	
	</form>



</body>



</html>