<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${video.title}</title>
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
		<%@include file="nav.jsp"%>
		<div class="row mt-3">
			<div class="main_page_title2">
				<div
					class="thongbaonew text-primary-emphasis bg-primary-subtle border border-primary-subtle rounded-3">
					Hướng dẫn tìm kiếm phim trên trang Web Google: <font color="red">Tên
						phim + AnimeTVN</font>
				</div>
				<div class="vid_youtube mt-3 row">
					<div class="col-sm-9">
						<iframe src="https://www.youtube.com/embed/${video.href}"
							allowfullscreen width="100%" height="500px">
						</iframe>
						<div class=" row detail mt-2">
							<div class="col-md-6 border-end">
								<div class="div-more-info">
									<div class="name">
										<h2 class="name-vi">${video.title}</h2>
										<h3 class="name-eng"></h3>
									</div>
									<ul class="list-group list-group-flush">
										<li class="list-group-item"><i class="bi bi-list-task"></i><span
											class="text-primary-emphasis"> Thể loại: </span> <a href="#"
											title="Phim Thể thao"
											class="text-decoration-none text-danger">Hoạt Hình, Phiêu
												Lưu</a></li>

										<li class="list-group-item"><i class="bi bi-house"></i><span
											class="text-primary-emphasis"> Nhà sản xuất: </span> <a
											href="#" title="Bandai Namco Pictures"
											class="text-decoration-none  text-danger">Makoto Shinkai</a>
										</li>



										<li class="list-group-item"><i
											class="bi bi-arrow-clockwise"></i> <span
											class="text-primary-emphasis"> Số tập:</span>1</li>

										<li class="list-group-item"><i class="bi bi-eye"></i><span
											class="text-primary-emphasis"> Lượt xem: </span>${video.views}
											lượt</li>
										<li class="list-group-item"><i class="bi bi-calendar3"></i><span
											class="text-primary-emphasis"> Năm phát sóng: </span>10/03/2023</li>
										<li class="list-group-item"><i class="bi bi-heart"></i> <span>Thành
												viên theo dõi: </span> 39</li>
										<li class="list-group-item"><i class="bi bi-reception-4"></i><span
											class="text-primary-emphasis"> AnimeTVN Rank: </span> Xếp
											hạng thứ <font style="color: #fc0203; font-size: 15px;">
												5286 </font></li>
										<li class="list-group-item"><i class="bi bi-chat"></i><span
											class="text-primary-emphasis"> Bình luận: </span>0 lượt</li>
										<li class="film-info-ratings"><i
											class="bi bi-hand-thumbs-up"></i> <span class="count-rating">Đánh
												giá (<span class="count-rating-num">2 Lượt</span>)
										</span></li>
									</ul>
								</div>
								<!-- /.div-more-info -->
							</div>
							<div class="col-sm-6 bg-light">
								<!-- style=" background-image: url('images/images.jpg');" -->
								<h6 class="mt-2">Nội dung phim</h6>
								<div class="row mt-3">

									<div class="col-sm-3">
										<img src="<c:url value='${video.poster}'/>" alt=""
											style="width: 100px; height: 150px;">
									</div>

									<div class="col-sm-9">
										<div class="content">
											<p>${video.description}</p>
										</div>

										<p>
											<a class="text-decoration-none border-end"
												data-bs-toggle="collapse" href="#collapseExample"
												role="button" aria-expanded="false"
												aria-controls="collapseExample"> Xem thêm </a>
											<button class="border-0" type="button"
												data-bs-toggle="collapse" data-bs-target="#collapseExample"
												aria-expanded="false" aria-controls="collapseExample">
												Thu gọn</button>
										</p>
										<div class="collapse" id="collapseExample">
											<div class="">những cánh cửa dần mở ra và gây ra sự hủy
												diệt cho bất kì ai đến gần, Suzume cần phải làm gì đó để
												những cánh cửa đóng lại...</div>
										</div>

									</div>
								</div>

								<div class="btns mt-3 ">
									<ul class="pager d-flex justify-content-center mt-2  mx-auto"
										style="list-style: none;">

										<li class="me-1">
											<button type="submit"
												class="border bg-primary-subtle border border-primary-subtle rounded fw-bold text-primary"
												style="width: 140px; height: 35px;">Thêm vào tủ</button>
										</li>
										<li>
											<button type="submit"
												class="border bg-danger-subtle border border-danger-subtle rounded fw-bold text-danger"
												style="width: 160px; height: 35px; font-style: normal;">Lưu
												vào facebook</button>
										</li>


									</ul>
									<!-- <a href="#" class="btn btn-info  w-100 text">Thêm vào tủ</a> -->
									<input id="videoIdHidden" type="hidden" value="${video.href}" />
									<ul class="pager d-flex justify-content-center mt-2  mx-auto"
										style="list-style: none;">
										<c:if test="${not empty sessionScope.currentUser}">
											<li class="me-1">
												<button id="likeOrUnlikeBtn"
													class="btn border bg-primary-subtle border border-primary-subtle rounded fw-bold text-primary"
													style="width: 80px; height: 35px;">
													<c:choose>
														<c:when test="${flagLikedBtn == true}">
														Unlike
														</c:when>
														<c:otherwise>Like</c:otherwise>
													</c:choose>
												</button>
											</li>
											<li>
												<button type="submit"
													class="border bg-danger-subtle border border-danger-subtle rounded fw-bold text-danger"
													style="width: 80px; height: 35px; font-style: normal;"
													data-bs-toggle="modal" data-bs-target="#myModal">Share
												</button>

											</li>
										</c:if>

										<!-- The Modal -->
										<div class="modal fade" id="myModal">
											<div class="modal-dialog">
												<div class="modal-content">

													<!-- Modal Header -->
													<div class="modal-header">
														<h4 class="modal-title">Send video to your friend</h4>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal"></button>
													</div>

													<!-- Modal body -->
													<div class="modal-body">
														<form action="">
															<div class="mb-3 mt-3">
																<label for="email" class="form-label">Your
																	friend's email</label> <input type="email" class="form-control"
																	id="email" placeholder="Enter email" name="email">
															</div>

														</form>
													</div>

													<!-- Modal footer -->
													<div class="modal-footer">
														<button type="submit" class="btn btn-primary"
															data-bs-dismiss="modal">Send</button>
													</div>

												</div>
											</div>
										</div>
									</ul>

								</div>
							</div>
						</div>
						<hr>
						<div class="row  mt-3">
							<strong style="width: 100%; height: 45px; line-height: 45px;"
								class="text-success-emphasis bg-success-subtle border border-success-subtle rounded-0 text-center">BÌNH
								LUẬN PHIM</strong> <span class="text-center bg-dark text-white mt-1"
								style="width: 100%; height: 35px; line-height: 35px;"> <span
								style="width: 80px; height: 30px;"
								class="bg-danger text-white fw-bold ">Admin</span> <span
								class="line-height:45px;"> Cùng nhau thảo luận về bộ phim
									nhé, vui lòng gõ tiếng việt có dấu </span>

							</span>
							<ul class="nav nav-pills mt-3">
								<li class="nav-item "><a
									class="nav-link active bg-success-subtle text-success-emphasis rounded-0"
									data-bs-toggle="pill" href="#home">Movegk</a></li>
								<li class="nav-item"><a
									class="nav-link bg-light text-light-emphasis"
									data-bs-toggle="pill" href="#menu1">Facebook</a></li>

							</ul>

							<!-- Tab panes -->
							<div class="tab-content mt-3">
								<div class="tab-pane container active" id="home">
									<form>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control"
													placeholder="Nhập tên của bạn (bắt buộc)">
											</div>
											<div class="col">
												<input type="text" class="form-control"
													placeholder="Nhập email của bạn (không bắt buộc)">
											</div>
										</div>
										<div class="form-group card mt-2">
											<div class="card-heard border-bottom">

												<ul class="pager d-flex" style="list-style: none;">
													<li class="mt-3 mx-2">
														<button class="border-0  bg-white">
															<img src="images/hello.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3">
														<button class="border-0 bg-white">
															<img src="images/love.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3 mx-2">
														<button class="border-0  bg-white">
															<img src="images/love (1).png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3">
														<button class="border-0  bg-white">
															<img src="images/so-cute.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3 mx-2">
														<button class="border-0  bg-white">
															<img src="images/cute.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3 mx-2">
														<button class="border-0  bg-white">
															<img src="images/perfect.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3">
														<button class="border-0  bg-white">
															<img src="images/good.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3">
														<button class="border-0  bg-white">
															<img src="images/angry.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3">
														<button class="border-0  bg-white">
															<img src="images/aww.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3">
														<button class="border-0  bg-white">
															<img src="images/apatosaurus.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
													<li class="mt-3">
														<button class="border-0  bg-white">
															<img src="images/happy.png" alt=""
																style="width: 40px; height: 45px;">
														</button>
													</li>
												</ul>
											</div>
											<div class="card-body">
												<textarea class="form-control"
													id="exampleFormControlTextarea1" rows="3"></textarea>
											</div>
										</div>
										<button type="submit"
											class="btn mt-3 bg-primary-subtle border border-primary-subtle rounded">Gửi</button>
									</form>
								</div>
								<div class="tab-pane container fade" id="menu1">
									<form>
										<div class="form-group">
											<label for="exampleFormControlInput1">0 Bình luận</label>

										</div>
										<div class="form-group d-flex justify-content-end">
											<label class="me-1 pt-2">Sắp xếp theo:</label> <select
												class="form-control " id=""
												style="width: 100px; height: 40px;">
												<option>Mới nhất</option>
												<option>Cũ nhất</option>

											</select>
										</div>
										<div class="form-group mb-3">
											<label for="exampleFormControlTextarea1">Để lại bình
												luận</label>
											<textarea class="form-control"
												id="exampleFormControlTextarea1" rows="3"></textarea>
										</div>
										<a href="#" class="mt-3 text-decoration-none"> <img
											src="images/facebook.png" style="width: 25px; height: 25px;"
											alt=""> Plugin bình luận trênFacebook
										</a>
									</form>
								</div>

							</div>
						</div>
					</div>
					<div class="col-sm-3 bg-infor border">
						<strong>LỊCH SỬ XEM PHIM</strong>
						<div class="card mb-3 rounded-0" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-sm-3">
									<img src="images/suzume1.jpg"
										class="img-fluid rounded-start mx-1 my-1 rounded" alt="...">
								</div>
								<div class="col-sm-7">
									<div class="card-body">
										<h5 class="card-title">Suzume</h5>
										<p class="card-text">
											<small class="text-muted">Phim được phép phổ biến đến
												người xem ở mọi đổ tuổi.</small>
										</p>
									</div>
								</div>
								<div class="col-sm-2 ">
									<button class="border-0 mt-5 ">xóa</button>
								</div>
							</div>
						</div>
						<div class="card mb-3 rounded" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-sm-3">
									<img src="images/bietdoibaton.jpg"
										class="img-fluid rounded-start mx-1 my-1 rounded" alt="...">
								</div>
								<div class="col-sm-7">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">
											<small class="text-muted">Last updated 3 mins ago</small>
										</p>
									</div>
								</div>
								<div class="col-sm-2 ">
									<button class="border-0 mt-5 ">xóa</button>
								</div>
							</div>
						</div>
						<div class="card mb-3 rounded-0" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-sm-3">
									<img src="images/vonghonruoclesp2.jpg"
										class="img-fluid rounded-start mx-1 my-1 rounded" alt="...">
								</div>
								<div class="col-sm-7">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">
											<small class="text-muted">Last updated 3 mins ago</small>
										</p>
									</div>
								</div>
								<div class="col-sm-2 ">
									<button class="border-0 mt-5 ">xóa</button>
								</div>
							</div>
						</div>
						<div class="card mb-3 rounded-0" style="max-width: 540px;">
							<div class="row g-0">
								<div class="col-sm-3">
									<img src="images/tranchienthoitiensu.jpg"
										class="img-fluid rounded-start mx-1 my-1 rounded" alt="...">
								</div>
								<div class="col-sm-7">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">
											<small class="text-muted">Last updated 3 mins ago</small>
										</p>
									</div>
								</div>
								<div class="col-sm-2 ">
									<button class="border-0 mt-5 ">xóa</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<%@include file="footer.jsp"%>
	</div>
	<script>
		$('#likeOrUnlikeBtn').click(function() {
			var videoId = $('#videoIdHidden').val();
			$.ajax({
				url : 'video?action=like&id=' + videoId
			}).then(function(data) {
				var text = $('#likeOrUnlikeBtn').text();
				if (text.indexOf('Like') != -1) { // tim ra
					$('#likeOrUnlikeBtn').text('Unlike');
				} else {
					$('#likeOrUnlikeBtn').text('Like');
				}
			}).fail(function(error) {
				alert('Please try again!!! System has been erorr!!!')
			});
		});
	</script>
	
	<script src="bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>