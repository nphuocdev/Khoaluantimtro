 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div  class="container-fluid">
                <div>
                    <a href="<c:url value="/places" />"><b style="color: #fff;font-size: 25px;  ">
                        <i class="fas fa-home" style="margin-right: 10px;margin-top: -5px"></i>TÌM TRỌ</b>
                    </a>
                </div>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">

                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Menu</a>
                            <div class="dropdown-menu">

                                <a href="<c:url value="/become-a-host/listings" />" class="dropdown-item">Quản lý nhà phòng</a>

                                <a href="<c:url value="/become-a-host/manager-blog" />" class="dropdown-item">Quản lý Blog</a>

                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">${accLogin.name }</a>
                            <div class="dropdown-menu">
                                <a href="<c:url value="/places" />" class="dropdown-item">Chế độ khách</a>
                                <a href="<c:url value="/manager-account" />" class="dropdown-item">Quản lý tài khoản</a>
                                <a href="<c:url value="/index" />" class="dropdown-item">Trợ giúp</a>
                                <a href="<c:url value="/logout" />" class="dropdown-item">Đăng xuất</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>