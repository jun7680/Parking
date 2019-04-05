<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q-Park</title>
<style>
#nav {
	list-style: none;
	margin: 10px 0 0 0;
	padding: 10px;
	width: 100%;
	text-align: center;
	background-color: yellow;
	text-align: center;
	width: 100%;
}

#nav li {
	display: inline;
	font-size: 20px;
	font-weight: bold;
}

#nav a {
	display: inline-block;
	padding: 10px;
	text-decoration: none;
	color: black;
	margin-right: 50px;
}

#div_title {
	width: 100%;
	height: 100px;
	text-align: center;
}

#div_main {
	
}
</style>

</head>

<body>


	<div id="div_title">
		<div>
			<h1>
				<span style="color: yellow;">Q</span>-PARK
			</h1>
		</div>
		<div style="width: 100%">
			<c:if test="${member!= null}">

				<div>
					<input type="button" value="로그아웃" onclick="location.href='logout'"
						style="float: right; cursor: pointer; font-size: 18px; font-weight: bold; border: 0; outline: 0; background-color: white">
				</div>
				<div
					style="float: right; cursor: pointer; font-size: 18px; font-weight: bold; border: 0; outline: 0; background-color: white">
					<span>${member.NAME }님</span>
				</div>
			</c:if>

		</div>

		<c:if test="${member== null}">

			<form>
				<input type="button" value="회원가입" onclick="location.href='step1'"
					style="float: right; cursor: pointer; font-size: 18px; font-weight: bold; border: 0; outline: 0; background-color: white">
				<input type="button" value="로그인" onclick="location.href='login'"
					style="float: right; cursor: pointer; font-size: 18px; font-weight: bold; border: 0; outline: 0; background-color: white">
			</form>
		</c:if>

	</div>



	<div id="div_menu">
		<ul id="nav">
			<li><a href="">주차</a></li>
			<li><a href="">이용방법</a></li>
			<li><a href="">주차장찾기</a></li>
			<li><a href="check">주차요금 확인</a></li>
			<li><a href="">회사소개</a></li>
			<li><a href="">Q&A</a></li>
			<li><a href="">고객센터</a></li>
			<c:if test="${member.AUTH==0 }">
				<li><a href="">주차내역</a></li>
			</c:if>
		</ul>
	</div>

	<div id="div_main" align="center">
		<img
			src="http://ldb.phinf.naver.net/20180717_38/15318014619476PxGe_JPEG/7ux2xHvlpecdJOQdrgb2TMEM.jpg">


	</div>




</body>
</html>