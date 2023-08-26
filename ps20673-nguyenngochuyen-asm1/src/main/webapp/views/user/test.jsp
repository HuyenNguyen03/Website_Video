<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-light bg-white border-bottom"
		style="height: 70px;">
		<div class="container-fluid">
			<!-- <a class="navbar-brand" href="#">Navbar</a> -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<c:choose>
						<c:when test="${not empty sessionScope.currentUser}">
							<li class="nav-item mx-3"><a class="nav-link active btn"
								aria-current="page" href="#">Welcom
									,${sessionScope.currentUser.username}</a></li>

						</c:when>
					</c:choose>
					<li class="nav-item mx-3">
						<!-- Button trigger modal -->
						<a type="button" class="nav-link"
							>
							Welcom</a> 
							
						</form>
					</li>

					<li class="nav-item"><a class="nav-link" href="#">Lịch
							chiếu</a></li>
					<li class="nav-item dropdown mx-2"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Phim </a>
						<ul class="dropdown-menu " aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Rạp </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item dropdown mx-2"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Tin tức </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#">Cộng
							đồng</a></li>
					<li class="nav-item " style="margin-left: 90px;"><a
						class="navbar-brand mr-auto" href="<c:url value='/home'/>"> <img
							src="https://moveek.com/bundles/ornweb/img/logo.png" alt="Moveek"
							class="navbar-brand-img" style="height: 1.5rem;">
					</a></li>
					<li class="nav-item " style="margin-left: 35px;">
						<form class="input-group ml-0 text-center"
							style="width: 310px; height: 45px;">
							<input ng-model="keyword" type="text"
								class="form-control bg-light" placeholder="Từ khóa tìm kiếm...">
							<button type="submit" class="btn btn-light bi bi-search"></button>
						</form>
					</li>
					<li class="nav-item  my-auto " style="margin-left: 35px;"><a
						href="#" class="btn btn-outline-dark btn-sm" data-container="body"
						data-html="true" data-toggle="popover" data-placement="bottom">
							VI </a></li>
					<li class="nav-item  my-auto mx-4"><a href=""
						class="text-muted"> <span class="icon"> <i
								class="bi bi-geo-alt"></i>
						</span>

					</a>
					</li>
					<li class="nav-item my-auto ">
						<div class="dropdown ">
							<button class=" dropdown-toggle border-0 bg-white" type="button"
								id="dropdownMenuButton2" data-bs-toggle="dropdown"
								aria-expanded="false">
								<i class="bi bi-person-fill"></i>
							</button>
							<ul class="dropdown-menu " aria-labelledby="dropdownMenuButton2">
								<c:choose>
									<c:when test="${not empty sessionScope.currentUser}">

										<li><a class="dropdown-item" href="favorites"> My
												Favorite</a></li>
										<li><a class="dropdown-item" href="history"> History</a></li>
										<li><a class="dropdown-item" href="logout">Logoff</a></li>
									</c:when>

									<c:otherwise>
										<li>
											<hr class="dropdown-divider">
										</li>
										<li><a class="dropdown-item active" href="login">Login</a></li>
										<li><a class="dropdown-item" href="forgotPass">Forgot
												Password</a></li>
										<li><a class="dropdown-item" href="register">Registration</a></li>
										<li>
											Button trigger modal
											<button type="button" class="btn btn-primary dropdown-item"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Welcom</button> Modal
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">ChangePass</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">...</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-secondary"
																data-bs-dismiss="modal">Close</button>
															<button type="button" class="btn btn-primary">Save
																changes</button>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li><a class="dropdown-item" href="editprofile">Edit
												Profile</a></li>
									</c:otherwise>
								</c:choose>

							</ul>
						</div>
					</li>

 
				</ul>

			</div>

		</div>

	</nav>
	<script>
		$('#ChangePassBtn').click(function(){
			$('#messageChange').text('');
			var currentPassword = $('#currentPassword').val();
			var newPass = $('#newPass').val();
			var formDate = {
					'currentPassword' : email
					'newPass'=newPass
			};
			$.ajax({
				url: 'changePass',
				type: 'POST',
				data: formData
			}).then(function(data){
				$('#messageChange').text('Mật khẩu đã được đặt lại, vui lòng kiểm tra hộp thư Email ^^');
				setTimeout(function(){
					window.location.href = 'http://localhost:8080/ps20673-nguyenngochuyen-asm1/home';
				}, 10*1000);
			}).fail(function(error){
				$('#messageChange').text('Email của bạn không chính xác, vui lòng kiểm tra lại!! ^^');
			});
		});
	</script>
	<script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>