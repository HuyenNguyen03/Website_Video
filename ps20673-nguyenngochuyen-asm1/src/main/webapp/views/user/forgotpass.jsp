<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORGOTPASS</title>
<link rel="stylesheet"
	href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="icons/bootstrap-icons.css">


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 

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

		<form id="login-form" action="" method="POST">

			<div class="card mx-auto mt-5" style="width: 650px; height: auto;">
				<div class="card-header">
					<p class="my-auto fw-bold">FORGOT PASSWORD</p>
				</div>
				<div class="card-body">
					
					<div class="form-group mx-2">
						<label  class="mb-2">Email</label> 
						
						<input type="email" name="email" id="email" class="form-control"placeholder="Email" required />
					</div>
				</div>
				<div class="card-footer">
					<button type="button" class="btn btn-danger float-end"
						data-bs-dismiss="modal"id="sendBtn">SEND</button>
				</div>
				<h5 style="color: red" id="messageForgot"></h5>
			</div>
			</form>
	</div>
	<script>
		$('#sendBtn').click(function(){
			$('#messageForgot').text('');
			var email = $('#email').val();
			var formData = {'email' : email};
			$.ajax({
				url: 'forgotpass',
				type: 'POST',
				data: formData
			}).then(function(data){
				$('#messageForgot').text('Mật khẩu đã được đặt lại, vui lòng kiểm tra hộp thư Email ^^');
				setTimeout(function(){
					window.location.href = 'http://localhost:8080/ps20673-nguyenngochuyen-asm1/home';
				}, 10*1000);
			}).fail(function(error){
				$('#messageForgot').text('Email của bạn không chính xác, vui lòng kiểm tra lại!! ^^');
			});
		});
	</script>
	
	<script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>