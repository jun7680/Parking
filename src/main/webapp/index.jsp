<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
			 <input type="button" value="ȸ������" onclick="location.href='Register'" style="float:right; cursor:pointer; font-size:18px; font-weight:bold; border:0; outline:0; background-color:white">
			 <input type="button" value="�α���" onclick="location.href='login'" style="float:right; cursor:pointer;font-size:18px; font-weight:bold; border:0; outline:0; background-color:white">
		</form>
	</div>

	<ul id="nav">
		<li><a href="">����</a></li>
		<li><a href="">�̿���</a></li>
		<li><a href="">������ã��</a></li>
		<li><a href="">ȸ��Ұ�</a></li>
		<li><a href="">Q&A</a></li>
		<li><a href="">������</a></li>
	</ul>


</body>
</html>