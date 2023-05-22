<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="apple-touch-icon" sizes="76x76" href="/asset/login/img/apple-icon.png">
	<link rel="icon" type="image/png" href="/asset/login/img/favicon.png">
	<title>
		Đăng ký
	</title>
	<!--     Fonts and icons     -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
	<!-- Nucleo Icons -->
	<link href="/asset/login/css/nucleo-icons.css" rel="stylesheet" />
	<link href="/asset/login/css/nucleo-svg.css" rel="stylesheet" />
	<!-- Font Awesome Icons -->
	<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
	<!-- Material Icons -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
	<!-- CSS Files -->
	<link id="pagestyle" href="/asset/login/css/material-dashboard.css?v=3.0.2" rel="stylesheet" />
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<script src='https://www.google.com/recaptcha/api.js?hl=vi'></script>

</head>

<body class="">
<div class=" position-sticky z-index-sticky  ">
	<div class="row">
		<div style="position: fixed" class="col-12">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg blur top-0 left-0 right-0 z-index-3 px-6 py-3 shadow position-absolute  start-0 end-0 ">
				<div class="container-fluid ps-2 pe-0">
					<a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="/places">
						<h4 class="fas fa-home" style="color: #025aad">  TÌM TRỌ</h4>
					</a>
					<button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon mt-2">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </span>
					</button>
					<div class="collapse navbar-collapse" id="navigation">
						<ul class="navbar-nav mx-auto">
							<li class="nav-item">
								<a style="font-weight: bold;font-size: 20px" class="nav-link d-flex align-items-center me-2 active" aria-current="page" href="/places">
									<%--									<i class="fa fa-chart-pie opacity-6 text-dark me-1"></i>--%>
									PHÒNG TRỌ
								</a>
							</li>
							<li class="nav-item">
								<a  style="font-weight: bold;font-size: 20px" class="nav-link me-2" href="/become-a-host">
									<%--									<i class="fa fa-user opacity-6 text-dark me-1"></i>--%>
								TẠO PHÒNG
								</a>
							</li>
							<li class="nav-item">
								<a  style="font-weight: bold;font-size: 20px" class="nav-link me-2" href="/blog">
									<%--									<i class="fas fa-user-circle opacity-6 text-dark me-1"></i>--%>
									BLOG
								</a>
							</li>
							<li class="nav-item">
								<a  style="font-weight: bold;font-size: 20px" class="nav-link me-2" href="/index">
									<%--									<i class="fas fa-key opacity-6 text-dark me-1"></i>--%>
									HỖ TRỢ
								</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>
	</div>
</div>
<main class="main-content  mt-0">
	<section>
		<div class="page-header min-vh-100">
			<div class="container">
				<div class="row">
					<div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 start-0 text-center justify-content-center flex-column">
						<div class="bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center" style="background-image: url('/asset/login/img/illustrations/register.jpg'); background-size: cover;position: -webkit-sticky;position: sticky; top: 0; height: 20%">
						</div>
					</div>
					<div class="col-xl-5 col-lg-5 col-md-7 d-flex flex-column ms-auto me-auto ms-lg-auto me-lg-6" style="padding: 0 50px;">
						<div class="card card-plain">
							<div class="card-header" style="padding-bottom: 0">
								<h4 class="font-weight-bolder" style="margin-top: 80px;text-align: center">ĐĂNG KÝ TÀI KOẢN</h4>
							</div>
							<div class="card-body">
								<form action="<c:url value="/register" />" method="post"  role="form">
									<p style="color: #484f4f;font-weight: bold;margin-bottom: 5px">Tên đăng nhập:</p>
									<div class="input-group input-group-outline mb-2">

										<input type="text" placeholder="Nhập tên đăng nhập" name="username" required class="form-control">
									</div>
									<p style="color: #484f4f;font-weight: bold;margin-bottom: 5px">Họ và tên:</p>
									<div class="input-group input-group-outline mb-2">
										<input  type="text" placeholder="Nhập họ và tên" name="name" required class="form-control">
									</div>
									<p style="color: #484f4f;font-weight: bold;margin-bottom: 5px">Email:</p>
									<div class="input-group input-group-outline mb-2">
										<input type="email" placeholder="Nhập email" name="email" required class="form-control">
									</div>
									<p style="color: #484f4f;font-weight: bold;margin-bottom: 5px">Số điện thoại:</p>
									<div class="input-group input-group-outline mb-2">
										<input type="number" placeholder="Nhập số điện thoại" name="phone" required class="form-control">
									</div>
									<p style="color: #484f4f;font-weight: bold;margin-bottom: 5px">Địa chỉ:</p>
									<div class="input-group input-group-outline mb-2">
										<input  type="text" placeholder="Nhập địa chỉ" name="address" required class="form-control">
									</div>
									<p style="color: #484f4f;font-weight: bold;margin-bottom: 5px">Mật khẩu:</p>
									<div class="input-group input-group-outline mb-2">
										<input type="password" placeholder="Nhập mật khẩu" name="password" required class="form-control">
									</div>
									<p style="color: #484f4f;font-weight: bold;margin-bottom: 5px">Nhập lại Mật khẩu:</p>
									<div class="input-group input-group-outline mb-2">
										<input type="password" placeholder="Nhập lại mật khẩu" name="repassword" required class="form-control">
									</div>
									<div class="form-check form-check-info text-start ps-0">
										<input style="background-color: #0d6efd;width: 25px" type="checkbox" value="" id="flexCheckDefault" checked>
										<label class="form-check-label" for="flexCheckDefault">
											Tôi đồng ý với các <a href="javascript:;" class="text-dark font-weight-bolder">Điều khoản và Điều kiện</a>
										</label>
									</div>
									<p class="text-danger">${error}</p>
									<div class="g-recaptcha" data-sitekey="6LeWa5kdAAAAALGbpJ11WCEUv2LhWmDaSID9QmaX"></div>
									<div class="text-center">
										<button style="background-color: #0d6efd;color: white" type="submit" class="btn btn-lg  btn-lg w-100 mt-4 mb-0">ĐĂNG KÝ</button>
									</div>
								</form>
							</div>
							<div class="card-footer text-center pt-0 px-lg-2 px-1">
								<p class="mb-2 text-sm mx-auto">
									Đã có tài khoản?
									<a href="/login" style="color: #0c5460;font-weight: bold" >Đăng nhập</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>
<!--   Core JS Files   -->
<script src="/asset/login/js/core/popper.min.js"></script>
<script src="/asset/login/js/core/bootstrap.min.js"></script>
<script src="/asset/login/js/plugins/perfect-scrollbar.min.js"></script>
<script src="/asset/login/js/plugins/smooth-scrollbar.min.js"></script>
<script>
	var win = navigator.platform.indexOf('Win') > -1;
	if (win && document.querySelector('#sidenav-scrollbar')) {
		var options = {
			damping: '0.5'
		}
		Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
	}
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="/asset/login/js/material-dashboard.min.js?v=3.0.2"></script>
</body>

</html>