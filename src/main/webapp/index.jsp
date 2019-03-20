<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
</style>

</head>

<Script>
	function test() {
		alert("lick");
	}
</Script>

<body>


	<div id="div_title">
		<h1>
			<span style="color: yellow;">Q</span>-PARK
		</h1>
		<form>
			 <input type="button" value="회원가입" onclick="location.href='step1'" style="float:right; cursor:pointer; font-size:18px; font-weight:bold; border:0; outline:0; background-color:white">
			 <input type="button" value="로그인" onclick="location.href='login'" style="float:right; cursor:pointer;font-size:18px; font-weight:bold; border:0; outline:0; background-color:white">
		</form>
	</div>

	<ul id="nav">
		<li><a href="">주차</a></li>
		<li><a href="">이용방법</a></li>
		<li><a href="">주차장찾기</a></li>
		<li><a href="check">주차요금 확인</a></li>
		<li><a href="">회사소개</a></li>
		<li><a href="">Q&A</a></li>
		<li><a href="">고객센터</a></li>
	</ul>


</body>
</html>