<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Blog</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/stylenew.css">
    <%@ include file="/WEB-INF/views/layouts/head2.jsp" %>
    <%@ include file="/WEB-INF/views/layouts/header.jsp" %>
    <script>$(document).ready(function(){
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
    </script>
<%--    <%@ include file="/WEB-INF/views/host/head3.jsp" %>--%>
    <style>
        h5, h4, h3, h2 {
            text-transform: none !important;
            padding-bottom: 0 !important;
            font-weight: unset !important;
            color: #1b1e21 !important;
            font-size: 16px !important;
        }
    </style>
</head>
<body>
<!--==============================header=================================-->

<header>
    <div class="i-head">
        <div class="row  ">
            <div class="col-sm-3">
                <div  class="logo pull-left">

                    <div  style="margin-top: 20px">
                        <a style="margin-left: 90px" href="<c:url value="/places" />"><b class="head3 " style="color: #fff; ">
                            <i class="fas fa-home" style="margin-right: 10px;margin-top: -5px"></i>TÌM TRỌ</b>
                        </a>
                    </div>

                </div>

            </div>
            <div class="col-sm-3 pull-left">
                <form action="/places/page/1" method="post" width="100%">
                    <div id="custom-search-input">
                        <div class="input-group">
                            <input type="text" name="search" value="${search}" class="search-query form-control" placeholder="Tìm kiếm..." />
                            <span class="input-group-btn">
                                    <button class="btn btn-primary" type="submit">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class=" col-sm-4 ">
                <%--                <div class="grid_12">--%>
                <div class="menu_block">
                    <nav class="horizontal-nav full-width horizontalNav-notprocessed">
                        <ul class="sf-menu">
                            <li ><a style="font-weight: bold;font-size: 20px" href="<c:url value="/places" />">PHÒNG TRỌ</a></li>
                            <li> <a style="font-weight: bold;font-size: 20px" href="/show-map">BẢN ĐỒ</a></li>
                            <li><a style="font-weight: bold;font-size: 20px" href="<c:url value="/become-a-host/listings" />">TẠO PHÒNG </a></li>
                            <li><a style="font-weight: bold;font-size: 20px" href="<c:url value="/blog" />">BLOG</a></li>
                            <li><a  style="font-weight: bold;font-size: 20px" href="<c:url value="/index" />">HỖ TRỢ</a></li>
                        </ul>
                    </nav>
                    <div class="clear"></div>
                </div>
            </div>
            <%@ include file="/WEB-INF/views/layouts/menu.jsp" %>
        </div>
    </div>


</header>
<!--==============================Content=================================-->
<div class="content" style="padding-bottom: 10px">
    <div class="blog">
        <div class="container">
            <div class="section-header text-center wow zoomIn" data-wow-delay="0.1s">

            </div>
            <div style="height: 400px;margin-bottom: 20px;margin-top: 80px" class="row blog-page">


                <c:forEach var="i" items="${blogs }" varStatus="loop">
                    <div style="padding-bottom: 50px" class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="/asset/images/${i.image}" alt="Blog" style="height: 300px;width: fit-content" class="setanh43">
                            </div>
                            <div class="blog-text sethis">
                                <a href="/show-blog/${i.blogId}">
                                    <p class="title"><b>${i.title}</b></p>
                                </a>
                                <div class="blog-meta">
                                    <p><i class="far fa-list-alt"></i>${i.account.name}</p>
                                    <p><i class="far fa-calendar-alt"></i>${i.createDate.split(" ")[0].split("-")[2] } - ${i.createDate.split(" ")[0].split("-")[1] } - ${i.createDate.split(" ")[0].split("-")[0] }</p>
<%--                                    <p><i class="far fa-comments"></i>5</p>--%>
                                </div>
                                <div class="textoverflow3 settielws">
<%--                                        ${i.content}--%>
                                </div>
                                <a class="btn" href="/show-blog/${i.blogId}" style=" background-color:#90C9DC;position: absolute;bottom: 20px;">Xem thêm <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>


            </div>
        </div>


</div>


</body>
<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>
<%@ include file="/WEB-INF/views/host/libfooter.jsp" %>
</html>