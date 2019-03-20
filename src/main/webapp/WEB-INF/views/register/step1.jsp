<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>
</head>
<body>


	<div class="panel-body">
		<div class="row">

			<br>
			<div class="col-lg-12">
				<h4>이용약관</h4>
				<div class="panel-body" style="border: 1px solid #ccc">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum
						dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
				<h4>개인정보</h4>
				<div class="panel-body" style="border: 1px solid #ccc">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum
						dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
				<form role="form" action="step2">
					<div class="form-group">
						<label class="checkbox-inline"> <input type="checkbox"
							name="agree" value="true">동의합니다.
						</label>
					</div>
					<button type="submit" class="btn btn-default">다음 단계</button>
				</form>
			</div>
		</div>
	</div>



</body>
</html>