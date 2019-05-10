<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%><%@page import="java.util.Calendar"%>




<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta http-equiv="refresh" content="59">

	<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#in").click(function() {
		var form_data = {
			AREA: document.getElementById("AREA").value,
			CARNUMBER: document.getElementById("CARNUMBER").value,
			PARKINGCHECK:'0'
			
		};
		
		console.log(form_data);
		$.ajax({
			type: "POST",
			url: "http://203.255.92.139:8080/ParkingAPI/rest/SystemAPI/accessTime",
			dataType: 'json',
			data: form_data,
			success: function(result) {
				console.log(result+"   is result");
				//var RESULT =JSON.parse(result);
				var HEAD = result.HEAD;
				console.log(HEAD);				
				var STATUS_CODE = HEAD.STATUS_CODE;
				if(STATUS_CODE == 100) {
					alert("success");
					//$("#message").html("<p style='color:green;font-weight:bold'>로그인 성공!</p>");
					//$("#form1").slideUp('slow');
				}
				else {
					console.log("????");

					//$("#message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");	
				}
			}
		});
		return false;
	});
});
</script>


<script type="text/javascript">
$(document).ready(function() {
	$("#out").click(function() {
		var form_data = {
			AREA: document.getElementById("AREA").value,
			PARKINGCHECK:'1'
			
		};
		
		console.log(form_data);
		$.ajax({
			type: "POST",
			url: "http://203.255.92.139:8080/ParkingAPI/rest/SystemAPI/accessTime",
			dataType: 'json',
			data: form_data,
			success: function(result) {
				console.log(result+"   is result");
				//var RESULT =JSON.parse(result);
				var HEAD = result.HEAD;
				console.log(HEAD);
				
				var STATUS_CODE = HEAD.STATUS_CODE;
				if(STATUS_CODE == 100) {
					alert("success");
					//$("#message").html("<p style='color:green;font-weight:bold'>로그인 성공!</p>");
					//$("#form1").slideUp('slow');
				}
				else {
					console.log("????");

					//$("#message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");	
				}
			}
		});
		return false;
	});
});
</script>

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

#pWrapper {
	
}
</style>



</head>
<body>

	<c:forEach items="${AmountList}" var="AmountList">
		<c:if test="${AmountList.REGION == 1}">
			<c:if test="${AmountList.AREA ==1}">
				<c:set var="AREA1" value="${AmountList.AREA}"></c:set>

				<c:set var="CARNUMBER1" value="${AmountList.CARNUMBER }"></c:set>
				<c:set var="OSTARTTIME" value="${AmountList.STARTTIME}"></c:set>
				<c:set var="STARTDATE" value="${AmountList.STARTDATE}"></c:set>
				<script>
					
				<%String reqDateStr = (String) pageContext.getAttribute("STARTDATE") + " "
								+ (String) pageContext.getAttribute("OSTARTTIME");
						//현재시간 Date
						String subDate = reqDateStr.replace("-", "");
						String subDate2 = subDate.replace(":", "");
						String subDate3 = subDate2.replaceAll(" ", "");
						System.out.println("요청시간111111111 : " + subDate3);
						Date curDate = new Date();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
						//요청시간을 Date로 parsing 후 time가져오기
						Date reqDate = new Date();
						long reqDateTime = 0;
						try {
							reqDate = dateFormat.parse(subDate3);
							reqDateTime = reqDate.getTime();
							//현재시간을 요청시간의 형태로 format 후 time 가져오기
							curDate = dateFormat.parse(dateFormat.format(curDate));
						} catch (Exception e) {
							e.printStackTrace();
						}

						long curDateTime = curDate.getTime();
						//분으로 표현
						long minute = 0;
						if (curDateTime < reqDateTime)
							minute = (reqDateTime - curDateTime) / 60000;
						else if (curDateTime > reqDateTime)
							minute = (curDateTime - reqDateTime) / 60000;

						System.out.println("요청시간 : " + reqDate);
						System.out.println("현재시간 : " + curDate);
						System.out.println(minute + "분 차이");

						long sum1 = minute / 10 * 500;
						System.out.println("dyrmadms ->" + sum1);
						pageContext.setAttribute("AMOUNT1", sum1);%>
					
				</script>

				<c:set var="AMOUNT1" value="${AMOUNT1}"></c:set>
			</c:if>
			<c:if test="${AmountList.AREA ==2}">
				<c:set var="AREA2" value="${AmountList.AREA}"></c:set>
				<c:set var="STARTDATE" value="${AmountList.STARTDATE}"></c:set>
				<c:set var="CARNUMBER2" value="${AmountList.CARNUMBER }"></c:set>
				<c:set var="OSTARTTIME" value="${AmountList.STARTTIME }"></c:set>


				<script>
					
				<%String reqDateStr = (String) pageContext.getAttribute("STARTDATE") + " "
								+ (String) pageContext.getAttribute("OSTARTTIME");
						//현재시간 Date
						String subDate = reqDateStr.replace("-", "");
						String subDate2 = subDate.replace(":", "");
						String subDate3 = subDate2.replaceAll(" ", "");
						System.out.println("요청시간111111111 : " + subDate3);
						Date curDate = new Date();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
						//요청시간을 Date로 parsing 후 time가져오기
						Date reqDate = new Date();
						long reqDateTime = 0;
						try {
							reqDate = dateFormat.parse(subDate3);
							reqDateTime = reqDate.getTime();
							//현재시간을 요청시간의 형태로 format 후 time 가져오기
							curDate = dateFormat.parse(dateFormat.format(curDate));
						} catch (Exception e) {
							e.printStackTrace();
						}

						long curDateTime = curDate.getTime();
						//분으로 표현
						long minute = 0;
						if (curDateTime < reqDateTime)
							minute = (reqDateTime - curDateTime) / 60000;
						else if (curDateTime > reqDateTime)
							minute = (curDateTime - reqDateTime) / 60000;

						System.out.println("요청시간 : " + reqDate);
						System.out.println("현재시간 : " + curDate);
						System.out.println(minute + "분 차이");

						long sum1 = minute / 10 * 500;
						System.out.println("dyrmadms ->" + sum1);
						pageContext.setAttribute("AMOUNT2", sum1);%>
					
				</script>

				<c:set var="AMOUNT2" value="${AMOUNT2}"></c:set>
			</c:if>

			<c:if test="${AmountList.AREA ==3}">
				<c:set var="AREA3" value="${AmountList.AREA}"></c:set>
				<c:set var="CARNUMBER3" value="${AmountList.CARNUMBER }"></c:set>
				<c:set var="OSTARTTIME" value="${AmountList.STARTTIME }"></c:set>
				<c:set var="STARTDATE" value="${AmountList.STARTDATE}"></c:set>


				<script>
					
				<%String reqDateStr = (String) pageContext.getAttribute("STARTDATE") + " "
								+ (String) pageContext.getAttribute("OSTARTTIME");
						//현재시간 Date
						String subDate = reqDateStr.replace("-", "");
						String subDate2 = subDate.replace(":", "");
						String subDate3 = subDate2.replaceAll(" ", "");
						System.out.println("요청시간111111111 : " + subDate3);
						Date curDate = new Date();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
						//요청시간을 Date로 parsing 후 time가져오기
						Date reqDate = new Date();
						long reqDateTime = 0;
						try {
							reqDate = dateFormat.parse(subDate3);
							reqDateTime = reqDate.getTime();
							//현재시간을 요청시간의 형태로 format 후 time 가져오기
							curDate = dateFormat.parse(dateFormat.format(curDate));
						} catch (Exception e) {
							e.printStackTrace();
						}

						long curDateTime = curDate.getTime();
						//분으로 표현
						long minute = 0;
						if (curDateTime < reqDateTime)
							minute = (reqDateTime - curDateTime) / 60000;
						else if (curDateTime > reqDateTime)
							minute = (curDateTime - reqDateTime) / 60000;

						System.out.println("요청시간 : " + reqDate);
						System.out.println("현재시간 : " + curDate);
						System.out.println(minute + "분 차이");

						long sum1 = minute / 10 * 500;
						System.out.println("dyrmadms ->" + sum1);
						pageContext.setAttribute("AMOUNT3", sum1);%>
					
				</script>

				<c:set var="AMOUNT3" value="${AMOUNT3}"></c:set>
			</c:if>
			<c:if test="${AmountList.AREA ==4}">
				<c:set var="AREA4" value="${AmountList.AREA}"></c:set>
				<c:set var="CARNUMBER4" value="${AmountList.CARNUMBER }"></c:set>
				<c:set var="OSTARTTIME" value="${AmountList.STARTTIME }"></c:set>
				<c:set var="STARTDATE" value="${AmountList.STARTDATE}"></c:set>


				<script>
					
				<%String reqDateStr = (String) pageContext.getAttribute("STARTDATE") + " "
								+ (String) pageContext.getAttribute("OSTARTTIME");
						//현재시간 Date
						String subDate = reqDateStr.replace("-", "");
						String subDate2 = subDate.replace(":", "");
						String subDate3 = subDate2.replaceAll(" ", "");
						System.out.println("요청시간111111111 : " + subDate3);
						Date curDate = new Date();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
						//요청시간을 Date로 parsing 후 time가져오기
						Date reqDate = new Date();
						long reqDateTime = 0;
						try {
							reqDate = dateFormat.parse(subDate3);
							reqDateTime = reqDate.getTime();
							//현재시간을 요청시간의 형태로 format 후 time 가져오기
							curDate = dateFormat.parse(dateFormat.format(curDate));
						} catch (Exception e) {
							e.printStackTrace();
						}

						long curDateTime = curDate.getTime();
						//분으로 표현
						long minute = 0;
						if (curDateTime < reqDateTime)
							minute = (reqDateTime - curDateTime) / 60000;
						else if (curDateTime > reqDateTime)
							minute = (curDateTime - reqDateTime) / 60000;

						System.out.println("요청시간 : " + reqDate);
						System.out.println("현재시간 : " + curDate);
						System.out.println(minute + "분 차이");

						long sum1 = minute / 10 * 500;
						System.out.println("dyrmadms ->" + sum1);
						pageContext.setAttribute("AMOUNT4", sum1);%>
					
				</script>

				<c:set var="AMOUNT4" value="${AMOUNT4}"></c:set>
			</c:if>
			<c:if test="${AmountList.AREA ==5}">
				<c:set var="AREA5" value="${AmountList.AREA}"></c:set>
				<c:set var="CARNUMBER5" value="${AmountList.CARNUMBER }"></c:set>
				<c:set var="OSTARTTIME" value="${AmountList.STARTTIME }"></c:set>

				<c:set var="STARTDATE" value="${AmountList.STARTDATE}"></c:set>
				<script>
					
				<%String reqDateStr = (String) pageContext.getAttribute("STARTDATE") + " "
								+ (String) pageContext.getAttribute("OSTARTTIME");
						//현재시간 Date
						String subDate = reqDateStr.replace("-", "");
						String subDate2 = subDate.replace(":", "");
						String subDate3 = subDate2.replaceAll(" ", "");
						System.out.println("요청시간111111111 : " + subDate3);
						Date curDate = new Date();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
						//요청시간을 Date로 parsing 후 time가져오기
						Date reqDate = new Date();
						long reqDateTime = 0;
						try {
							reqDate = dateFormat.parse(subDate3);
							reqDateTime = reqDate.getTime();
							//현재시간을 요청시간의 형태로 format 후 time 가져오기
							curDate = dateFormat.parse(dateFormat.format(curDate));
						} catch (Exception e) {
							e.printStackTrace();
						}

						long curDateTime = curDate.getTime();
						//분으로 표현
						long minute = 0;
						if (curDateTime < reqDateTime)
							minute = (reqDateTime - curDateTime) / 60000;
						else if (curDateTime > reqDateTime)
							minute = (curDateTime - reqDateTime) / 60000;

						System.out.println("요청시간 : " + reqDate);
						System.out.println("현재시간 : " + curDate);
						System.out.println(minute + "분 차이");

						long sum1 = minute / 10 * 500;
						System.out.println("dyrmadms ->" + sum1);
						pageContext.setAttribute("AMOUNT5", sum1);%>
					
				</script>

				<c:set var="AMOUNT5" value="${AMOUNT5}"></c:set>
			</c:if>
			<c:if test="${AmountList.AREA ==6}">
				<c:set var="AREA6" value="${AmountList.AREA}"></c:set>
				<c:set var="CARNUMBER6" value="${AmountList.CARNUMBER }"></c:set>
				<c:set var="OSTARTTIME" value="${AmountList.STARTTIME }"></c:set>
				<c:set var="STARTDATE" value = "${AmountList.STARTDATE}"></c:set>


				<script>
					
				<%String reqDateStr = (String) pageContext.getAttribute("STARTDATE") + " "
								+ (String) pageContext.getAttribute("OSTARTTIME");
						//현재시간 Date
						String subDate = reqDateStr.replace("-", "");
						String subDate2 = subDate.replace(":", "");
						String subDate3 = subDate2.replaceAll(" ", "");
						System.out.println("요청시간111111111 : " + subDate3);
						Date curDate = new Date();
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.KOREA);
						//요청시간을 Date로 parsing 후 time가져오기
						Date reqDate = new Date();
						long reqDateTime = 0;
						try {
							reqDate = dateFormat.parse(subDate3);
							reqDateTime = reqDate.getTime();
							//현재시간을 요청시간의 형태로 format 후 time 가져오기
							curDate = dateFormat.parse(dateFormat.format(curDate));
						} catch (Exception e) {
							e.printStackTrace();
						}

						long curDateTime = curDate.getTime();
						//분으로 표현
						long minute = 0;
						if (curDateTime < reqDateTime)
							minute = (reqDateTime - curDateTime) / 60000;
						else if (curDateTime > reqDateTime)
							minute = (curDateTime - reqDateTime) / 60000;

						System.out.println("요청시간 : " + reqDate);
						System.out.println("현재시간 : " + curDate);
						System.out.println(minute + "분 차이");

						long sum1 = minute / 10 * 500;
						System.out.println("dyrmadms ->" + sum1);
						pageContext.setAttribute("AMOUNT6", sum1);%>
					
				</script>

				<c:set var="AMOUNT6" value="${AMOUNT6}"></c:set>
			</c:if>

		</c:if>



	</c:forEach>


	<div class="Wrapper1">
		<div id="Area1">
			<c:if test="${AREA1 != null}">
				<p>
					<span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: red">${AREA1}구역</span>
					<br> <br> <br> <span id="textAmount1"
						style="font-size: 20pt; font-weight: bold">${AMOUNT1}원</span><br>
					<br>
					<c:if test="${CARNUMBER1 != null }">
						<span id="textCarNumber1"
							style="font-size: 20pt; font-weight: bold">${CARNUMBER1}</span>
						<br>
					</c:if>

					<c:if test="${CARNUMBER1 == null }">
						<span id="textCarNumber1"
							style="font-size: 20pt; font-weight: bold">차량 번호 입력 요망</span>
						<br>
					</c:if>
				</p>
			</c:if>
			<c:if test="${AREA1 == null || CARNUMBER1 == null}">
				<p>
					<span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: green">1구역</span><br>
					<br> <br> <span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: green">비어있음</span><br>
					<br> <span id="textAmount1"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area2">

			<c:if test="${AREA2 != null}">
				<p id="full">
					<span id="textArea2"
						style="font-size: 25pt; font-weight: bold; color: red">${AREA2}구역</span><br>
					<br> <br> <span id="textAmount2"
						style="font-size: 20pt; font-weight: bold">${AMOUNT2}원</span><br>
					<br>
					<c:if test="${CARNUMBER2 != null }">
						<span id="textCarNumber2"
							style="font-size: 20pt; font-weight: bold">${CARNUMBER2}</span>
					</c:if>
					<c:if test="${CARNUMBER2 == null }">
						<span id="textCarNumber2"
							style="font-size: 20pt; font-weight: bold">차량 번호 입력 요망</span>
						<br>
					</c:if>
				</p>
			</c:if>
			<c:if test="${AREA2 == null}">
				<p id="empty">
					<span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: green">2구역</span><br>
					<br> <br> <span id="textArea2"
						style="font-size: 25pt; font-weight: bold; color: green">비어있음</span><br>
					<br> <span id="textAmount2"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>
		<div id="Area3">
			<c:if test="${AREA3 != null}">
				<p>
					<span id="textArea3"
						style="font-size: 25pt; font-weight: bold; color: red">${AREA3}구역</span><br>
					<br> <br> <span id="textAmount3"
						style="font-size: 20pt; font-weight: bold">${AMOUNT3}원</span><br>
					<br>
					<c:if test="${CARNUMBER3 != null }">
						<span id="textCarNumber3"
							style="font-size: 20pt; font-weight: bold">${CARNUMBER3}</span>
					</c:if>
					<c:if test="${CARNUMBER3 == null }">
						<span id="textCarNumber3"
							style="font-size: 20pt; font-weight: bold">차량 번호 입력 요망</span>
						<br>
					</c:if>
				</p>
			</c:if>
			<c:if test="${AREA3 == null}">
				<p>
					<span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: green">3구역</span><br>
					<br> <br> <span id="textArea3"
						style="font-size: 25pt; font-weight: bold; color: green">비어있음</span><br>
					<br> <span id="textAmount3"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>


	</div>

	<div class="Wrapper2">

		<div id="Area4">


			<c:if test="${AREA4 != null}">
				<p>
					<span id="textArea4"
						style="font-size: 25pt; font-weight: bold; color: red">${AREA4}구역</span><br>
					<br> <br> <span id="textAmount4"
						style="font-size: 20pt; font-weight: bold">${AMOUNT4}원</span><br>
					<br>
					<c:if test="${CARNUMBER4 != null }">
						<span id="textCarNumber4"
							style="font-size: 20pt; font-weight: bold">${CARNUMBER4}</span>
					</c:if>
					<c:if test="${CARNUMBER4 == null }">
						<span id="textCarNumber4"
							style="font-size: 20pt; font-weight: bold">차량 번호 입력 요망</span>
						<br>
					</c:if>
				</p>
			</c:if>
			<c:if test="${AREA4 == null}">
				<p>
					<span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: green">4구역</span><br>
					<br> <br> <span id="textArea4"
						style="font-size: 25pt; font-weight: bold; color: green">비어있음</span><br>
					<br> <span id="textAmount4"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area5">

			<c:if test="${AREA5 != null}">
				<p>
					<span id="textArea5"
						style="font-size: 25pt; font-weight: bold; color: red">${AREA5}구역</span><br>
					<br> <br> <br> <span id="textAmount5"
						style="font-size: 20pt; font-weight: bold">${AMOUNT5}원</span><br>
					<br>
					<c:if test="${CARNUMBER5 != null }">
						<span id="textCarNumber5"
							style="font-size: 20pt; font-weight: bold">${CARNUMBER5}</span>
					</c:if>
					<c:if test="${CARNUMBER5 == null }">
						<span id="textCarNumber5"
							style="font-size: 20pt; font-weight: bold">차량 번호 입력 요망</span>
						<br>
					</c:if>
				</p>
			</c:if>
			<c:if test="${AREA5 == null}">
				<p>
					<span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: green">5구역</span><br>
					<br> <br> <span id="textArea5"
						style="font-size: 25pt; font-weight: bold; color: green">비어있음</span><br>
					<br> <span id="textAmount5"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

		<div id="Area6">
			<c:if test="${AREA6 != null}">
				<p>
					<span id="textArea6"
						style="font-size: 25pt; font-weight: bold; color: red">${AREA6}구역</span><br>
					<br> <br> <br> <span id="textAmount6"
						style="font-size: 20pt; font-weight: bold">${AMOUNT6}원</span><br>
					<br>
					<c:if test="${CARNUMBER6 != null }">
						<span id="textCarNumber6"
							style="font-size: 20pt; font-weight: bold">${CARNUMBER6}</span>
					</c:if>
					<c:if test="${CARNUMBER6 == null }">
						<span id="textCarNumber6"
							style="font-size: 20pt; font-weight: bold">차량 번호 입력 요망</span>
						<br>
					</c:if>
				</p>
			</c:if>
			<c:if test="${AREA6 == null}">
				<p>
					<span id="textArea1"
						style="font-size: 25pt; font-weight: bold; color: green">6구역</span><br>
					<br> <br> <span id="textArea6"
						style="font-size: 25pt; font-weight: bold; color: green">비어있음</span><br>
					<br> <span id="textAmount6"
						style="font-size: 20pt; font-weight: bold">0원</span>
				</p>
			</c:if>
		</div>

	</div>

	<div style="text-align: center">
		<p>
			<span style="color: red">비어있는 구역에 주차를 한후 구역과 차량번호를 입력해주세요</span>
		</p>

	</div>

	<div id="pWrapper">

		<div id="pLayout">

			<form role="form" method="post" action="carNumberCheck1" id="">
				<p>
					<label for="AREA">주차 구역</label> <input type="text" id="AREA"
						name="AREA" />
				</p>
				<p>
					<label for="CARNUMBER">차량 번호</label> <input type="text"
						id="CARNUMBER" name="CARNUMBER" />

				</p>
				<p>
					<button  type="submit">주차</button>
				</p>

			</form>

		</div>

		<div id="poutLayout">
			<form role="form" method="post" action="parkingout1" id="">
				<p>
					<label for="AREA">주차 구역</label> <input type="text" id="AREA"
						name="AREA" />
				</p>

				<p>
					<button type="submit">출차</button>
				</p>

			</form>
		</div>

	</div>




</body>



</html>