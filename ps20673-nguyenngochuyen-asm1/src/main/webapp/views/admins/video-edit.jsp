<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
<link rel="stylesheet"
	href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="icons/bootstrap-icons.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
		<nav class="navbar navbar-expand-lg navbar-light bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand text-white" href="#">ADIMINISTRATION TOOL</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<ul class="nav justify-content-end ">
					<li class="nav-item"><a class="nav-link active text-white"
						aria-current="page" href="index.html">Home</a></li>
					<li class="nav-item"><a class="nav-link text-white" href="#">Videos</a>
					</li>
					<li class="nav-item"><a class="nav-link text-white" href="#">Users</a>
					</li>
					<li class="nav-item"><a class="nav-link text-white" href="#">Reports</a>
					</li>
				</ul>
			</div>
		</nav>
		<div class="row mt-3 mx-auto d-flex align-items-start">
			<div class="col-sm-3 mb-3 border rounded bg-dark text-white">
				<div class="card mt-3 bg-dark text-white" style="max-width: 540px;">
					<div class="row g-0">
						<div class="col-md-3">
							<img src="images/programmer.png"
								class="img-fluid rounded-circle mx-3 my-3" alt="..."
								style="width: 45px; height: 45px;">
						</div>
						<div class="col-md-9">
							<div class="card-body">
								<h6 class="card-title">${sessionScope.currentUser.username }</h6>
								<p class="card-text" style="font-size: 14px;">${sessionScope.currentUser.email }</p>
							</div>
						</div>
					</div>
					<div class="accordion accordion-flush bg-dark text-white"
						id="accordionFlushExample">
						<div class="accordion-item">
							<h2 class="accordion-header " id="flush-headingOne">
								<button class="accordion-button collapsed bg-dark text-white"
									type="button" data-bs-toggle="collapse"
									data-bs-target="#flush-collapseOne" aria-expanded="false"
									aria-controls="flush-collapseOne">
									<i class="bi bi-person me-2"></i> My Account
								</button>
							</h2>
							<div id="flush-collapseOne" class="accordion-collapse collapse"
								aria-labelledby="flush-headingOne"
								data-bs-parent="#accordionFlushExample">
								<div class="accordion-body">
									<a href=""
										class="btn w-100 bg-white border-0 text-decoration-non text-start">Logoff</a>
								</div>
							</div>
						</div>
						<div class="accordion-item bg-dark">
							<h2 class="accordion-header" id="flush-headingThree">
								<button class="accordion-button collapsed bg-dark text-white"
									type="button" data-bs-toggle="collapse"
									data-bs-target="#flush-collapseThree" aria-expanded="false"
									aria-controls="flush-collapseThree">
									<i class="bi bi-clipboard2-check me-2"></i>Table List
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
							<!-- Sidebar Menu -->
							<nav class="mt-2">
								<ul class="nav nav-pills nav-sidebar flex-column"
									data-widget="treeview" role="menu" data-accordion="false">
									<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
									<li class="nav-item"><a href="<c:url value='/admin'/>"
										class="nav-link"> <i
											class="nav-icon fas fa-tachometer-alt"></i>
											<p>Home</p>
									</a></li>
									<li class="nav-item menu-open"><a
										href="<c:url value='/admin/video?action=view'/>"
										class="nav-link active"> <i class="nav-icon fas fa-copy"></i>
											<p>
												Videos <i class="fas fa-angle-left right"></i>
											</p>
									</a>
										<ul class="nav nav-treeview">
											<li class="nav-item"><a
												href="<c:url value='/admin/video?action=view'/>"
												class="nav-link"> <i class="far fa-circle nav-icon"></i>
													<p>Overview</p>
											</a></li>
											<li class="nav-item"><a
												href="<c:url value='/admin/video?action=add'/>"
												class="nav-link active"> <i
													class="far fa-circle nav-icon"></i>
													<p>New or Edit</p>
											</a></li>
										</ul></li>
								</ul>
							</nav>
							<div class="accordion-item">
								<h2 class="accordion-header" id="flush-headingThree">
									<button class="accordion-button collapsed bg-dark text-white"
										type="button" data-bs-toggle="collapse"
										data-bs-target="#flush-collapseThree" aria-expanded="false"
										aria-controls="flush-collapseThree">
										<i class="bi bi-bell me-2"></i>Notification
									</button>
								</h2>
								<div id="flush-collapseThree"
									class="accordion-collapse collapse"
									aria-labelledby="flush-headingThree"
									data-bs-parent="#accordionFlushExample">
									<div class="accordion-body">
										<ul class="list-group list-group-flush bg-dark text-white">
											<li class="list-group-item">
												<button class="border-0 bg-white">a</button>
											</li>
											<li class="list-group-item "><button class="border-0 ">
													b</button></li>
											<li class="list-group-item"><button
													class="border-0 bg-white">c</button></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card-body">
						<ul class="list-group list-group-flush border-top ">
							<li class="list-group-item bg-dark text-white">
								<button class="border-0 bg-dark text-white">
									<i class="bi bi-asterisk"></i>Typography
								</button>
							</li>

						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-9">
				<!-- Main content -->
				<section class="content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="card card-primary">
									<div class="card-header">
										<h3 class="card-title">Add-Edit Video</h3>

										<div class="card-tools">
											<button type="button" class="btn btn-tool"
												data-card-widget="collapse" title="Collapse">
												<i class="fas fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="card-body">
										<div class="form-group">
											<label for="title">Title</label> <input type="text"
												id="title" value="${video != null ? video.title : '' }"
												class="form-control">
										</div>
										<div class="form-group">
											<label for="href">Href</label> <input type="text" id="href"
												value="${video != null ? video.href : '' }"
												class="form-control">
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-9">
													<div class="row">
														<div class="col-12 form-group">
															<label for="description">Description</label>
															<textarea id="description" class="form-control" rows="4">${video != null ? video.description : '' }</textarea>
														</div>
														<div class="col-12 form-group">
															<label for="poster">Poster</label> <input type="text"
																id="poster"
																value="${video != null ? video.poster : '' }"
																class="form-control"> <input type="hidden"
																id="isEdit" value="${isEdit}" class="form-control" />
														</div>
													</div>
												</div>
												<div class="col-3">
													<label for="inputProjectLeader">Preview</label>
													<div
														style="width: 100%; height: 200px; border: 1px dotted gray">
														<img id="imgPreview"
															src="${video != null ? video.poster : '' }" height="100%"
															width="100%" />
													</div>
												</div>
											</div>

										</div>
									</div>
									<!-- /.card-body -->
								</div>
								<!-- /.card -->
							</div>
							<div class="row" style="margin: auto auto;">
								<button type="button" id="resetBtn"
									class="btn bg-gradient-info btn-md" style="margin-right: 15px;">Reset</button>
								<button type="button" id="submitBtn"
									class="btn bg-gradient-success btn-md">Submit</button>
							</div>
							<center>
								<h5 id="message"></h5>
							</center>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<hr>
	<footer>
		<div class="row mt-5">
			<div class="col-sm-1">
				<img src="images/favicon-large.png" alt=""
					style="width: 90px; height: 90px;">
			</div>
			<div class="col-sm-5 bg-infor">
				<strong class=" text-muted text-black-50">CÔNG TY TNHH
					MONET</strong>
				<div class=" text-muted">Địa chỉ:Tô Ký -Trung Mỹ Tây - Quận 12</div>
				<a href="#" class="text-decoration-none text-muted">Về chúng tôi</a>
				<a href="#" class="text-decoration-none text-muted">Chính sách
					và thỏa thuận</a> <a href="#" class="text-decoration-none text-muted">Hỗ
					trợ</a>
			</div>
			<div class="col-sm-4">
				<strong class=" text-muted text-black-50" style="margin-left: 40px;">CÔNG
					TY TNHH MONET</strong>
				<ul class="pager d-flex" style="list-style: none;">
					<br>
					<li class="mx-2"><a href="#" class="rounded-pill border "
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Beta Cineplex"> <img src="images/beta.png" alt=""
							class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
					<li><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Mega GS Cinemas"> <img src="images/logo-Mega.png"
							alt="" class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
					<li class="mx-2"><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top" title="CineStar">
							<img src="images/inestar.png" alt="" class="rounded-circle"
							style="width: 40px; height: 40px;">
					</a></li>
					<li><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Mega GS Cinemas"> <img src="images/dcine.png" alt=""
							class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
					<li class="mx-2"><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Mega GS Cinemas"> <img src="images/cinemax.png" alt=""
							class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
				</ul>
				<ul class="pager d-flex" style="list-style: none;">
					<br>
					<li class="mx-2"><a href="#" class="rounded-pill border "
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Beta Cineplex"> <img src="images/beta.png" alt=""
							class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
					<li><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Mega GS Cinemas"> <img src="images/logo-Mega.png"
							alt="" class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
					<li class="mx-2"><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top" title="CineStar">
							<img src="images/inestar.png" alt="" class="rounded-circle"
							style="width: 40px; height: 40px;">
					</a></li>
					<li><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Mega GS Cinemas"> <img src="images/dcine.png" alt=""
							class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
					<li class="mx-2"><a href="#" class="rounded-pill border"
						data-bs-toggle="tooltip" data-bs-placement="top"
						title="Mega GS Cinemas"> <img src="images/cinemax.png" alt=""
							class="rounded-circle" style="width: 40px; height: 40px;">
					</a></li>
				</ul>
			</div>
			<div class="col-sm-2 bg-infor">
				<a href="" class="text-start mx-auto"><img
					src="images/logoSaleNoti.png" alt="" style="width: 100px;"
					class="me-5 "></a>
			</div>
		</div>
	</footer>


	<script>
		$(function() {
			$("#example1").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example1_wrapper .col-md-6:eq(0)');
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false,
				"responsive" : true,
			});
		});
		$('#selectVideo').change(function() {
			var videoHref = $(this).val();
			$.ajax({
				url : 'admin/favorites?href=' + videoHref, // link URL
				type : 'GET',
				contentType : 'application/json' // chon kieu tra ve

			}).done(function(data) {
				$('#example2').DataTable({
					"destroy" : true, // reset lai data khi thay doi field select
					"paging" : true,
					"lengthChange" : false,
					"searching" : false,
					"ordering" : true,
					"info" : true,
					"autoWidth" : false,
					"responsive" : true,
					"aaData" : data,
					"columns" : [
					//Lay data tuong ung voi Field in User.Enity
					//Dinh nghia ra cac column 
					{
						"data" : "id"
					}, {
						"data" : "username"
					}, {
						"data" : "email"
					}

					]
				});
			}).fail(function(error) {
				$('#example2').dataTable().fnClearTable();

			})
		})
	</script>
	<script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
