<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My favorites</title>
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
		<%@include file="nav.jsp"%>
		<div class="row mt-3">
			<div class="col-sm-3 mb-3 border rounded bg-light">
				<div class="card mt-3" style="max-width: 540px;">
					<div class="row g-0">
						<div class="col-md-3">
							<img src="images/woman.png"
								class="img-fluid rounded-circle mx-3 my-3" alt="..."
								style="width: 45px; height: 45px;">
						</div>
						<div class="col-md-9">
							<div class="card-body">
								<h6 class="card-title">Nguyen Ngoc Huyen</h6>
								<p class="card-text" style="font-size: 14px;">huyen0312@gmail.com</p>
								<a href="#"
									class="card-link btn text-decoration-none text-danger pt-0"
									style="font-size: 14px;" data-bs-toggle="modal"
									data-bs-target="#myEdit">Edit Profife</a>
							</div>
							<!-- The Modal -->
							<div class="modal" id="myEdit">
								<div class="modal-dialog">
									<div class="modal-content">

										<!-- Modal Header -->
										<div class="modal-header">
											<h4 class="modal-title">Edit Profile</h4>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal"></button>
										</div>

										<!-- Modal body -->
										<div class="modal-body">
											<div class="row g-3">
												<div class="col">
													<label for="">Username:</label> <input type="text"
														class="form-control" placeholder=""> <label for="">Curent
														Password:</label> <input type="password" class="form-control"
														placeholder="">
												</div>
												<div class="col">
													<label for="">Fullname:</label> <input type="text"
														class="form-control" placeholder=""> <label for="">Email
														Address:</label> <input type="email" class="form-control"
														placeholder="">
												</div>
											</div>
										</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<button type="button" class="btn btn-danger"
												data-bs-dismiss="modal">Update</button>
										</div>

									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="accordion accordion-flush" id="accordionFlushExample">
						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingOne">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
									aria-expanded="false" aria-controls="flush-collapseOne">
									<i class="bi bi-person me-2"></i> My Account
								</button>
							</h2>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<ul class="list-group list-group-flush">
										<li class="list-group-item">
											<button class="border-0 bg-white" data-bs-toggle="modal"
												data-bs-target="#forgot">Forgot Password</button>
										</li>
										<!-- The Modal -->
										<div class="modal" id="forgot">
											<div class="modal-dialog">
												<div class="modal-content">

													<!-- Modal Header -->
													<div class="modal-header">
														<h4 class="modal-title">Forgot Password</h4>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal"></button>
													</div>

													<!-- Modal body -->
													<div class="modal-body">
														<form action="">
															<div class="mb-3 mt-3">
																<label class="form-label">Username:</label> <input
																	type="text" class="form-control" id="user"
																	placeholder="Enter Username" name="user">
															</div>
															<div class="mb-3 mt-3">
																<label for="email" class="form-label">Email:</label> <input
																	type="email" class="form-control" id="email"
																	placeholder="Enter email" name="email">
															</div>
														</form>
													</div>

													<!-- Modal footer -->
													<div class="modal-footer">
														<button type="button" class="btn btn-danger"
															data-bs-dismiss="modal">Retrieve</button>
													</div>

												</div>
											</div>
										</div>

										<li class="list-group-item"><button
												class="border-0 bg-white" data-bs-toggle="modal"
												data-bs-target="#changepass">Change Password</button></li>
										<!-- The Modal -->
										<div class="modal" id="changepass">
											<div class="modal-dialog">
												<div class="modal-content">

													<!-- Modal Header -->
													<div class="modal-header">
														<h4 class="modal-title">Change Password</h4>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal"></button>
													</div>

													<!-- Modal body -->
													<div class="modal-body">
														<div class="row g-3">
															<div class="col">
																<label for="">Username:</label> <input type="text"
																	class="form-control" placeholder=""> <label
																	for="">Curent Password:</label> <input type="password"
																	class="form-control" placeholder="">
															</div>
															<div class="col">
																<label for="">New Password:</label> <input
																	type="password" class="form-control" placeholder="">
																<label for="">Change</label> <input type="password"
																	class="form-control" placeholder="">
															</div>
														</div>
													</div>

													<!-- Modal footer -->
													<div class="modal-footer">
														<button type="button" class="btn btn-danger"
															data-bs-dismiss="modal">Close</button>
													</div>

												</div>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>

						<div class="accordion-item">
							<h2 class="accordion-header" id="flush-headingThree">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
									aria-expanded="false" aria-controls="flush-collapseThree">
									<i class="bi bi-clipboard2-check me-2"></i>Book tickets
								</button>
							</h2>
							<div id="flush-collapseThree" class="accordion-collapse collapse"
								aria-labelledby="flush-headingThree"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<ul class="list-group list-group-flush">
										<li class="list-group-item">
											<button class="border-0 bg-white">a</button>
										</li>
										<li class="list-group-item"><button
												class="border-0 bg-white">b</button></li>
										<li class="list-group-item"><button
												class="border-0 bg-white">c</button></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="card-body">
						<ul class="list-group list-group-flush border-top">
							<li class="list-group-item">
								<button class="border-0 bg-white">
									<i class="bi bi-heart me-2"></i> My Favorite
								</button>
							</li>
							<li class="list-group-item"><button
									class="border-0 bg-white">
									<img src="images/voucher.png" alt=""
										style="width: 20px; height: 20px;" class="me-2"> Voucher
								</button></li>

						</ul>
					</div>
				</div>

			</div>
			<div class="col-sm-9 rounded border">
				<div class="row ">
					<nav class="navbar navbar-expand-lg navbar-light ">
						<div class="container-fluid">

							<div class="collapse navbar-collapse" id="navbarSupportedContent">
								<ul class="navbar-nav me-auto mb-2 mb-lg-0">
									<li class="nav-item">
										<h4>Favorites</h4>

									</li>
								</ul>
								<form class="input-group ml-0 text-center"
									style="width: 310px; height: 45px;">
									<input ng-model="keyword" type="text"
										class="form-control border border-light"
										placeholder="Từ khóa tìm kiếm...">
									<button type="submit" class="btn btn-light bi bi-search"></button>
								</form>
							</div>
						</div>
					</nav>
				</div>
				<hr>
				<div>
					<p>Find your saved items and get ready to.... them</p>
				</div>
				<div class="row mb-3">
				<c:forEach items="${videos}" var="video">
								<div class="col-sm-3 card border border-end" style="height: 490px;">
									<a href="<c:url value='/video?action=watch&id=${video.href}'/>" style="width:100%">
										<img src="<c:url value='${video.poster }'/>" class="card-img-top" alt="...">
									</a>

									<div class="card-body">
										<h5 class="card-title text-info fw-bold" 
											style="font-weight: normal; line-height: 20px; letter-spacing: .6px; white-space: nowrap; overflow: hidden;">${video.title }</h5>
										<p class=""
											style="font-weight: normal; line-height: 20px; letter-spacing: .6px;">
											<strong class="">Thể loại:</strong> Hoạt hình, Phiêu lưu
										</p>
										<p class=""
											style="font-weight: normal; line-height: 20px; letter-spacing: .6px;">
											<strong class="fw-bold">Thời lượng:</strong> 122 phút
										</p>
										<p class=""
											style="font-weight: normal; line-height: 20px; letter-spacing: .6px;">
											<strong class="fw-bold">Views:</strong> ${video.views}
										</p>
										<p class=""
											style="font-weight: normal; line-height: 20px; letter-spacing: .6px;">
											<strong class="fw-bold">Share:</strong> ${video.shares}
										</p>
										<ul class="pager d-flex justify-content-center mt-2 mx-auto"
											style="list-style: none;">
											<li class="mx-2">
												<button type="submit"
													class="border bg-primary-subtle border border-primary-subtle rounded fw-bold text-primary"
													style="width: 80px; height: 35px;">Like</button>
											</li>
											<li>
												<button type="submit"
													class="border bg-danger-subtle border border-danger-subtle rounded fw-bold text-danger"
													style="width: 80px; height: 35px; font-style: normal;">Share</button>
											</li>

										</ul>
									</div>
								</div>

							</c:forEach>
				</div>
			</div>
		</div>
		<hr>
		<%@include file="footer.jsp"%>
	</div>
	<script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>