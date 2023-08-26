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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
</head>
<body>
<div class="container">

        <form action="changePass" method="POST"id="changePassModel">
        <div class="card mx-auto mt-5" style="width: 650px;height:auto;">
            <div class="card-header">
                <p class="my-auto fw-bold">CHANGE PASSWORD</p>
            </div>
            <div class="card-body">
               
                       
                      <div class="form-group">
                        <label for=""></label>
                        <input type="password" class="form-control" placeholder="currentPassword" name="currentPass">
                      </div>
                     <div class="form-group">
                        <label for="">New Password?</label>
                        <input type="password" class="form-control" placeholder="newPass" name="New pass">
                      </div>
                   
            </div>
            <div class="card-footer">
                <button type="button" class="btn btn-danger float-end" data-bs-dismiss="modal">Change</button>
            </div>
        </div>
        </form>
    </div>
    <script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>