<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:url var="url" value="/user/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css">

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
		<%@include file="nav.jsp"%>
		<!-- Carousel -->
		<div id="demo" class="carousel slide" data-bs-ride="carousel">

			<!-- Indicators/dots -->
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
					class="active"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
				<button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
			</div>

			<!-- The slideshow/carousel -->
			<div class="carousel-inner mx-4" style="height: 450px;">
				<div class="carousel-item active">
					<img src="images/Suzume.jpg" alt="Suzume" class="d-block w-100"
						style="height: 450px;">
				</div>
				<div class="carousel-item">
					<img src="images/2.jpg" alt="All off us are dead"
						class="d-block  w-100" style="height: 450px;">
				</div>
				<div class="carousel-item">
					<img src="images/phim-bi-thuong-nguoc-thanh-dong-song-5.jpg"
						alt="Cô bé người cá Ponyo" class="d-block  w-100"
						style="height: 450px;">
				</div>
				<div class="carousel-item">
					<img src="images/4_6.jpeg.jpg" alt="" class="d-block  w-100"
						style="height: 450px;">
				</div>
			</div>

			<!-- Left and right controls/icons -->
			<button class="carousel-control-prev" type="button"
				data-bs-target="#demo" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#demo" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
		</div>

		<!-- danh_muc -->
		<div class="mt-5" style="background-color: #FFF;">

			<div class=" main_signin mt-3 "
				style="font-family: futura-pt, Tahoma, Geneva, Verdana, Arial, sans-serif; background-color: #eee; font-style: normal; font-weight: 400; font-size: 16px; line-height: 1.5; letter-spacing: .4px;">
				<ul class="row nav nav-pills border-bottom rounded-0 "
					style="background-color: #FFF;">
					<li class="col nav-item rounded-0 "><a
						class=" nav-link text-end pe-5 text-muted border-end fw-bold rounded-0"
						style="background-color: #FFF; text-transform: uppercase; letter-spacing: 2px; line-height: 1.7;"
						data-bs-toggle="pill" href="#dangchieu">Đang chiếu</a></li>
					<li class="col nav-item rounded-0"><a
						class="nav-link active text-start text-muted  fw-bold rounded-0 ps-5"
						style="background-color: #FFF; text-transform: uppercase; letter-spacing: 2px; line-height: 1.7;"
						data-bs-toggle="pill" href="#menu1">Sắp chiếu</a></li>

				</ul>

				<!-- Tab panes -->
				<div class="tab-content "
					style="background-color: #FFF; height: 700px;">
					<div class="row tab-pane container active fade show "
						id="dangchieu">
						<div class="row pt-5">
							<c:forEach items="${videos}" var="video">
								<div class="col-sm-3 card border-0" style="height: 150px;">
									<a href="<c:url value='/video?action=watch&id=${video.href}'/>">
										<img src="<c:url value='${video.poster }'/>"
										class="card-img-top" alt="...">
									</a>

									<div class="card-body">
										<h5 class="card-title text-info fw-bold" F
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
			</div>
			<div class="row tab-pane container active fade  " id="menu1">2</div>


		</div>
		<hr>
		<div class="row dieuhuong">
			<ul class="pager d-flex justify-content-center mt-2"
				style="list-style: none;">
				<c:if test="${currentPage == 1 }">
					<li class="mx-5"><a href="#"
						class="btn btn-primary tm-btn-next disabled ">Previous </a></li>
				</c:if>
				<c:if test="${currentPage > 1 }">
					<li class="mx-5"><a href="home?page=${currentPage - 1 }"
						class="btn btn-primary tm-btn-next">Previous </a></li>
				</c:if>


				<c:forEach varStatus="i" begin="1" end="${maxPage }">
					<li class="mx-5"><a href="home?page=${i.index}"
						class="tm-paging-link ${currentPage == i.index ? 'active' : '' }">${i.index }</a>
					</li>
				</c:forEach>
				
				
				<c:if test='${currentPage == maxPage }'>
					<li><a href=""
						class="btn btn-primary tm-btn-next disabled">Next Page</a></li>
				</c:if>
				<c:if test='${currentPage < maxPage }'>
					<li><a href="home?page=${currentPage + 1 }"
						class="btn btn-primary tm-btn-next">Next Page</a></li>
				</c:if>

			</ul>
		</div>
		<%@include file="footer.jsp"%>
	</div>
	<script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>