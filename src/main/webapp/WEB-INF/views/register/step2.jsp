<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 입력</title>
</head>
<body>


	<div class="panel-body">
		<div class="row">
			<div class="col-lg-6">
				<form:form role="form" commandName="registerRequest"
					action="step3" method="post">
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-check"></i></span>
						<form:input type="text" class="form-control" placeholder="ID"
							path="id" />
						<form:errors path="id" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
						<form:input type="email" class="form-control" placeholder="Email"
							path="email"/>

					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<form:input type="text" class="form-control" placeholder="Name"
							path="name" />
						<form:errors path="name" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<form:input type="text"  class="form-control" placeholder="Gender"
							path="gender" />
						<form:errors path="gender" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<form:input type="text"  class="form-control" placeholder="AGE"
							path="age" />
						<form:errors path="age" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<form:input type="text"  class="form-control" placeholder="Phone"
							path="phone" />
						<form:errors path="phone" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<form:password class="form-control" placeholder="Password"
							path="pw" />
						<form:errors path="pw" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<form:password class="form-control" placeholder="Password Check"
							path="cpw" />
						<form:errors path="cpw" />
					</div>
					<button type="submit" class="btn btn-default">가입하기</button>
					<button type="reset" class="btn btn-default">취소하기</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>