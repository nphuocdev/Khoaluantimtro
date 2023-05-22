<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Show Blog</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/stylenew.css">
    <%@ include file="/WEB-INF/views/layouts/head2.jsp" %>
    <%@ include file="/WEB-INF/views/layouts/header.jsp" %>
    <script>$(document).ready(function () {
        $().UItoTop({easingType: 'easeOutQuart'});
    });
    </script>
    <%@ include file="/WEB-INF/views/host/head3.jsp" %>
    <style>
        h5, h4, h3, h2 {
            text-transform: none !important;
            padding-bottom: 0 !important;
        }
    </style>
</head>
<body>
<!--==============================header=================================-->
<header>
    <div style="width: 100%" class="i-head">
        <div class="row ">
            <div class="col-sm-3">
                <div  class="logo pull-left">

                    <div  style="padding-top: 10px">
                        <a style="margin-left: 90px" href="<c:url value="/places" />"><b class="head3 " style="color: #fff; ">
                            <i class="fas fa-home" style="margin-right: 10px;padding-top: 5px"></i>TÌM TRỌ</b>
                        </a>
                    </div>

                </div>

            </div>
            <div class="col-sm-3 pull-left">
                <form action="/places/page/1" method="post" width="100%">
                    <div id="custom-search-input">
                        <div class="input-group">
                            <input type="text" name="search" value="${search}" class="search-query form-control" placeholder="Tìm kiếm phòng /nhà mong muốn..." />
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
                        <ul style="padding-top: 5px" class="sf-menu">
                            <li ><a style="font-weight: bold;font-size: 20px" href="<c:url value="/places" />">PHÒNG TRỌ</a></li>
                            <li> <a style="font-weight: bold;font-size: 20px" href="/show-map">BẢN ĐỒ</a></li>
                            <li><a style="font-weight: bold;font-size: 20px" href="<c:url value="/become-a-host" />">TẠO PHÒNG </a></li>
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
<!-- Single Post Start-->
<div style="padding-top: 50px" class="single">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div style=" margin-bottom: 0px" class="single-bio wow fadeInUp">
                    <div class="single-bio-img">
                        <a href="/detail-account/${blog.account.accountId}">
                            <img src="/asset/images/${blog.account.image}" class="image-blog"/>
                        </a>
                    </div>
                    <div class="single-bio-text" style="padding-left: 0px !important;">
                        <a href="/detail-account/${blog.account.accountId}"><h3>${blog.account.name}</h3></a>

                    </div>
                </div>
                <div class="single-content wow fadeInUp">
                    <img src="/asset/images/${blog.image}"/>
                    <h2>${blog.title}</h2>
                    <div>${blog.content}</div>
                </div>

                <div class="single-related wow fadeInUp">
                </div>

            </div>

            <div class="col-lg-4">
                <div class="sidebar">
                    <div class="sidebar-widget wow fadeInUp">
                        <div class="search-widget">
                            <form action="/blog">
                                <input class="form-control" type="text" placeholder="Tìm kiếm..." name="search">
                                <button class="btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>

                    <div class="sidebar-widget wow fadeInUp">
                        <h2 class="widget-title">Bài đăng </h2>
                        <div class="recent-post">

                            <c:forEach var="i" items="${blogsNew }" varStatus="loop">
                                <c:if test="${loop.index < 5}">
                                    <div class="post-item">
                                        <div class="post-img">
                                            <img src="/asset/images/${i.image}"/>
                                        </div>
                                        <div class="post-text">
                                            <a href="/show-blog/${i.blogId}">${i.title}</a>
                                            <div class="post-meta">
                                                <p>
                                                    By<a
                                                        href="/detail-account/${i.account.accountId}">${i.account.name}</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>

                    <div class="sidebar-widget wow fadeInUp">
                        <div class="image-widget">
                            <a href="/show-blog/21"><img src="/asset/images/phattien.png" width="100%" alt="Image"></a>
                        </div>
                    </div>

                    <div class="sidebar-widget wow fadeInUp">
                        <div class="tab-post">
                            <ul class="nav nav-pills nav-justified">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="pill" href="#featured">Featured</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#popular">Popular</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#latest">Latest</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div id="featured" class="container tab-pane active">
                                    <c:forEach var="i" items="${blogsNew }" varStatus="loop">
                                        <c:if test="${loop.index < 3}">
                                            <div class="post-item">
                                                <div class="post-img">
                                                    <img src="/asset/images/${i.image}"/>
                                                </div>
                                                <div class="post-text">
                                                    <a href="/show-blog/${i.blogId}">${i.title}</a>
                                                    <div class="post-meta">
                                                        <p>
                                                            By<a
                                                                href="/detail-account/${i.account.accountId}">${i.account.name}</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                                <div id="popular" class="container tab-pane fade">
                                    <c:forEach var="i" items="${blogsNew }" varStatus="loop">
                                        <c:if test="${loop.index >= 3 and loop.index < 6}">
                                            <div class="post-item">
                                                <div class="post-img">
                                                    <img src="/asset/images/${i.image}"/>
                                                </div>
                                                <div class="post-text">
                                                    <a href="/show-blog/${i.blogId}">${i.title}</a>
                                                    <div class="post-meta">
                                                        <p>
                                                            By<a
                                                                href="/detail-account/${i.account.accountId}">${i.account.name}</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                                <div id="latest" class="container tab-pane fade">
                                    <c:forEach var="i" items="${blogs }" varStatus="loop">
                                        <c:if test="${loop.index < 3}">
                                            <div class="post-item">
                                                <div class="post-img">
                                                    <img src="/asset/images/${i.image}"/>
                                                </div>
                                                <div class="post-text">
                                                    <a href="/show-blog/${i.blogId}">${i.title}</a>
                                                    <div class="post-meta">
                                                        <p>
                                                            By<a
                                                                href="/detail-account/${i.account.accountId}">${i.account.name}</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="sidebar-widget wow fadeInUp">
                        <div class="image-widget">
                            <img src="/asset/images/canbiet.png" width="100%" alt="Image">
                        </div>
                    </div>

                                        <div class="sidebar-widget wow fadeInUp">
                                            <h2 class="widget-title">Tags Other</h2>
                                            <div class="tag-widget">
                                                <a href="">National</a>
                                                <a href="">International</a>
                                                <a href="">Economics</a>
                                                <a href="">Politics</a>
                                                <a href="">Lifestyle</a>
                                                <a href="">Technology</a>
                                                <a href="">Trades</a>
                                            </div>
                                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Single Post End-->


<!-- Footer Start -->

<!-- Footer End -->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>
<%@ include file="/WEB-INF/views/host/libfooter.jsp" %>
</body>
</html>
