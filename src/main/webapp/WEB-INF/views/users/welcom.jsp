<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="ȸ������" />
<meta name="Description" content="ȸ������" />
<link rel="stylesheet" href="../resources/css/screen.css"
	type="text/css" media="screen" />
<title>ȸ������</title>
<script type="text/javascript">
	//<![CDATA[
	function check() {
		var form = document.getElementById("signUpForm");
		//TODO ��ȿ�� �˻�
		return true;
	}
	//]]>
</script>
</head>
<body>

	<div id="wrap">
		<div id="container">
			<div id="content" style="min-height: 800px;">
				<div id="url-navi">ȸ��</div>

				<!-- ���� ���� -->
				<h1>ȸ������</h1>
				<form id="signUpForm" action="signUp" method="post"
					onsubmit="return check()">
					<table>
						<tr>
							<td style="width: 200px;">�̸�(Full Name)</td>
							<td style="width: 390px"><input type="text" name="name"
								style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>��й�ȣ(Password)</td>
							<td><input type="password" name="passwd" style="width: 99%;" /></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center; font-weight: bold;">
								Email�� ���̵�� ���˴ϴ�. ���� ��й�ȣ�� Email ���� ��й�ȣ�� ���� ���� ������.</td>
						</tr>
						<tr>
							<td>��й�ȣ Ȯ��(Confirm)</td>
							<td><input type="password" name="confirm"
								style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><input type="text" name="email" style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>����ȭ(Mobile)</td>
							<td><input type="text" name="mobile" style="width: 99%;" /></td>
						</tr>
					</table>
					<div style="text-align: center; padding-bottom: 15px;">
						<input type="submit" value="Ȯ��" />
					</div>
				</form>
				<!--  ���� �� -->

			</div>
			<!-- content �� -->
		</div>
		<!--  container �� -->


	</div>

</body>
</html>