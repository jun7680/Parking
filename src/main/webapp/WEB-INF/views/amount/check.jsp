<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주차요금 확인</title>



</head>
<body>
	<h1>Hello world!</h1>

	<table>
		<thead>
			<tr>
				<th>구역</th>
				<th>요금</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${AmountList}" var="AmountList">
				<script>
					var AREA = "${AmountList.AREA}"
					var AMOUNT = "${AmountList.AMOUNT}"
					if (AMOUNT == "")
						AMOUNT = "0" + "won"
					else
						AMOUNT = AMOUNT + "won"
					console.log(AREA + ":" + AMOUNT);
				</script>


				<tr>
					<td>${AmountList.AREA}</td>
					<td>${AmountList.AMOUNT}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>


</body>



</html>