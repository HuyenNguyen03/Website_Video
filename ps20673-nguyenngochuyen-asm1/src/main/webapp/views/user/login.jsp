<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="icons/bootstrap-icons.css">

<style>
.input-group input {
	border-radius: 40px;
	border: none;
	position: relative;
}

.input-group button {
	position: absolute;
	right: 6px;
	border: none;
	/* height: 40px; */
	border-radius: 40px;
}

.thongbaonew {
	font-size: 15px;
	font-weight: 700;
	/* border: 1px solid #a6a00a; */
	padding: 8px;
	/* color: #f7ee03; */
	margin: 5px 0;
	text-align: center;
	/* background: #000; */
}

span {
	font-weight: bold;
	letter-spacing: 1px;
}

.text {
	text-align: center;
}

</style>
</head>
<body>
	<div class="container">

		<form action="login" method="post">
		<div class="card mx-auto mt-5" style="width: 650px; height: auto;">
			<div class="card-header">
				<p class="my-auto fw-bold">LOGIN</p>
			</div>
			<div class="card-body">
				<div class="form-group mx-2">
					<label class="mb-2">Username</label> <input type="text"
						class="form-control" placeholder="Username" name="username">
				</div>
				<div class="form-group mx-2">
					<label for="exampleInputPassword1" class="mb-2">Password</label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Password" name="password">
				</div>
				<div class="form-group mx-2">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Remember</label>
				</div>
			</div>
			<div class="card-footer">
				<button>Login</button>
			</div>
		</div>
		</form>
	</div>
	<script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>