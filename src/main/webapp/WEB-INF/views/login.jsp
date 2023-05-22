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
		Timtro | Đăng nhập
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
</head>

<body class="">
<div class=" position-sticky z-index-sticky  ">
	<div class="row">
		<div class="col-12">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg blur top-0 left-0 right-0 z-index-3 px-6 py-3 shadow position-absolute  start-0 end-0 ">
				<div class="container-fluid ps-2 pe-0">
					<a style="padding-left: 50px"  class="navbar-brand font-weight-bolder ms-lg-0 ms-3 " href="/places">
					<h4 class="fas fa-home" style="color: #025aad">  TÌM TRỌ</h4>
					</a>
					<button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon mt-2">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </span>
					</button>
					<div style=" margin-left:-200px;"class="collapse navbar-collapse" id="navigation">
						<ul style=" margin-left:200px; gap:20px" class="navbar-nav mx-auto">

							<li class="nav-item">
								<a  style="font-size: 20px; font-weight: bold" class="nav-link me-2" href="/places">
<%--									<i class="fa fa-user opacity-6 text-dark me-1"></i>--%>
								PHÒNG TRỌ
								</a>
							</li>
							<li  class="nav-item">
								<a  style="font-size: 20px; font-weight: bold" class="nav-link me-2" href="/become-a-host">
									<%--									<i class="fas fa-user-circle opacity-6 text-dark me-1"></i>--%>
									TẠO PHÒNG
								</a>
							</li>
							<li class="nav-item">
								<a   style="font-size: 20px; font-weight: bold" class="nav-link me-2" href="/blog">
<%--									<i class="fas fa-user-circle opacity-6 text-dark me-1"></i>--%>
								BLOG
								</a>
							</li>
							<li class="nav-item">
								<a  style="font-size: 20px; font-weight: bold" class="nav-link me-2" href="/index">
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
	<div class="page-header align-items-start min-vh-100" >
		<span class="mask bg-gradient-dark opacity-6"></span>
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-4 col-md-8 col-12 mx-auto">
					<div class="card z-index-0 fadeIn3 fadeInBottom">

						<div class="card-body">
							<h4 class="text-black font-weight-bolder text-center mt-2 mb-3">Đăng nhập</h4>
							<form action="/j_spring_security_check" method="post" role="form" class="text-start">
								<h4 class="text-sm mb-2">Tên đăng nhập: </h4>
								<div class="input-group input-group-outline my-3">
									<input type="text" class="form-control" placeholder="Tên đăng nhập" name="username"/>
								</div>
								<h4 class="text-sm mb-2">Mật khẩu: </h4>
								<div class="input-group input-group-outline mb-3">
									<input type="password" class="form-control" placeholder="Mật khẩu" name="password"/>
								</div>
								<div class="form-check form-switch d-flex align-items-center mb-3">
									<input class="form-check-input" type="checkbox" id="rememberMe">
									<label class="form-check-label mb-0 ms-2" for="rememberMe">Remember me</label>
								</div>
								<div>
									<%
										String error = request.getParameter("error");
										if(error != null && error.equals("true")) {
									%>
									<p style="color: red">Tài khoản hoặc mật khẩu không chính xác</p>
									<%
										}
									%>
								</div>
								<div class="text-center">
									<button type="submit" style="background-color:#025aad" class="btn w-100 text-white my-4 mb-2">Đăng nhập</button>
								</div>
								<div class="mt-4 text-sm text-center">
									<p><a href="/forgot-password" style="font-size: 14px">Quên mật khẩu?</a> </p>
									Bạn chưa có tài khoản?
									<a href="/register" style="color:#025aad" class="font-weight-bold">Đăng ký</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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