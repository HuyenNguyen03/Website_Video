<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
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

        <form id="contact-form" action="register" method="POST">
        <div class="card mx-auto mt-5"style="width: 450px;height:auto;">
            <div class="card-header">
                <p class="fw-bold my-auto">REGISTRATION</p>
            </div>
            <div class="card-body">
                <div class="row g-3">
                    <div class="col">
                        <label for="">Username:</label>
                        <input type="text" class="form-control" placeholder="" name="username">
                        <label for="">Password:</label>
                        <input type="password" class="form-control"
                            placeholder=""name="password">
                    </div>
                    <div class="col">
                        <label for="">Confirm Password:</label>
                        <input type="password" class="form-control"
                            placeholder=""name="cfmpass">
                        <label for="">Email Address</label>
                        <input type="email" class="form-control"
                            placeholder="" name="email">
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <button type="button" class="btn btn-danger"
                    data-bs-dismiss="modal">SingUp</button>
            </div>
        </div>
        </form>
     </div>
        <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>