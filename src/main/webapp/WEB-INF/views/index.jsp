<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" style="background-color: #fff">
<head>
    <title>TimTro</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/stylenew.css">
    <%@ include file="/WEB-INF/views/layouts/head2.jsp" %>
    <%@ include file="/WEB-INF/views/layouts/header.jsp" %>
    <script>
        $(document).ready(function () {
            jQuery('#camera_wrap').camera({
                loader: false,
                pagination: false,
                minHeight: '444',
                thumbnails: false,
                height: '48.375%',
                caption: true,
                navigation: true,
                fx: 'mosaic'
            });
            /*carousel*/
            var owl = $("#owl");
            owl.owlCarousel({
                items: 2, //10 items above 1000px browser width
                itemsDesktop: [995, 2], //5 items between 1000px and 901px
                itemsDesktopSmall: [767, 2], // betweem 900px and 601px
                itemsTablet: [700, 2], //2 items between 600 and 0
                itemsMobile: [479, 1], // itemsMobile disabled - inherit from itemsTablet option
                navigation: true,
                pagination: false
            });
            $().UItoTop({easingType: 'easeOutQuart'});
        });
    </script>
</head>
<body class="page1" id="top">
<!--==============================header=================================-->

<header>
    <div style="width: 100%" class="i-head">
        <div  class="row  ">
            <div class="col-sm-4">
                <div  class="logo pull-left">

                    <div  style="margin-top: 20px">
                        <a style="margin-left: 90px" href="<c:url value="/places" />"><b class="head3 " style="color: #fff; ">
                            <i class="fas fa-home" style="margin-right: 10px;margin-top: -5px"></i>TÌM TRỌ</b>
                        </a>
                    </div>

                </div>

            </div>

            <div class=" col-sm-6">
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
<div style="padding-top: 120px"class="section box box-contact">
    <div class="container">
        <div class="box-header">
            <h1 style="font-size: 40px;font-weight: bold;color:#0c5460; text-align: center">Hỗ trợ khách hàng</h1>
        </div>
        <div style="font-size: 20px;color: #000000;padding-top: 10px">
            <p class="text-center">Bạn cần hỗ trợ <span class="highlight">Tìm kiếm, Đăng tin, Thanh toán?</span> Liên hệ với chúng tôi ngay qua các hình thức:</p>
        </div>
        <div  class="box-body">
            <div style="display:flex;padding-top:30px">
                <div class="item" data-aos="fade-up">
                    <div class="image"><img src="https://tromoi.com/frontend/home/images/icon/mail.svg"></div>
                    <div class="">
                        <div class="title">Email</div>
                        <div class="description">
                            <p>Chúng tôi sẽ trả lời thắc mắc của bạn trong vòng 24 giờ.</p>
                            <a style="color: #0d6efd" href="mailto:info@timtro.com" target="_blank">Email ngay</a>
                        </div>
                    </div>
                </div>
                <div class="item" data-aos="fade-up">
                    <div class="image"><img src="https://tromoi.com/frontend/home/images/icon/call.svg"></div>
                    <div class="">
                        <div class="title">Hotline 24/7</div>
                        <div class="description">
                            <p>Điện thoại viên luôn sẵn sàng giải đáp các thắc mắc của bạn.</p>
                            <a style="color: #0d6efd" href="tel:0765574711" target="_blank">Gọi ngay</a>
                        </div>
                    </div>
                </div>
                <div class="item" data-aos="fade-up">
                    <div class="image"><img src="https://tromoi.com/frontend/home/images/icon/messenger.svg"></div>
                    <div class="">
                        <div class="title">Facebook</div>
                        <div class="description">
                            <p>Nhắn tin với chúng tôi trên nền tảng facebook messenger</p>
                            <a style="color: #0d6efd" href="https://m.me/TroMoiSaiGon/" target="_blank">Gửi tin nhắn</a>
                        </div>
                    </div>
                </div>
                <div class="item" data-aos="fade-up">
                    <div class="image"><img src="https://tromoi.com/frontend/home/images/icon/zalo.svg"></div>
                    <div class="">
                        <div class="title">Zalo</div>
                        <div class="description">
                            <p>Nhắn tin hoặc gọi cho chúng tôi trên nền tảng Zalo</p>
                            <a style="color: #0d6efd" href="https://zalo.me/" target="_blank">Liên hệ ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--==============================footer=================================-->
	<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>

</body>
</html>

