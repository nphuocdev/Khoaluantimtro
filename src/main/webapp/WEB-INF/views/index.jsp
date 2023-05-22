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

<%--<header>--%>
<%--    <div class="i-head">--%>
<%--        <div class="row  ">--%>
<%--            <div class="col-sm-2">--%>
<%--                <div class="logo pull-left">--%>

<%--                        <div style="margin-top: 30px">--%>
<%--                            <a href="<c:url value="/places" />"><b class="head3 justify-content-center   " style="color: #fff; ">--%>
<%--                                <i class="fas fa-home" style="margin-right: 10px;margin-top: -5px"></i>TÌM TRỌ</b>--%>
<%--                            </a>--%>
<%--                        </div>--%>

<%--                </div>--%>

<%--            </div>--%>
<%--            <div class="col-sm-3 pull-left">--%>
<%--                <form action="/places/page/1" method="post" width="100%">--%>
<%--                    <div id="custom-search-input">--%>
<%--                        <div class="input-group">--%>
<%--                            <input type="text" name="search" value="${search}" class="search-query form-control" placeholder="Tìm kiếm phòng /nhà mong muốn..." />--%>
<%--                            <span class="input-group-btn">--%>
<%--                                    <button class="btn " type="button">--%>
<%--                                        <span class=" glyphicon glyphicon-search"></span>--%>
<%--                                    </button>--%>
<%--                                </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--            <div class=" col-sm-4 ">--%>
<%--&lt;%&ndash;                <div class="grid_12">&ndash;%&gt;--%>
<%--                    <div class="menu_block">--%>
<%--                        <nav class="horizontal-nav full-width horizontalNav-notprocessed">--%>
<%--                            <ul class="sf-menu">--%>
<%--                                <li class="current"><a href="<c:url value="/places" />">PHÒNG TRỌ</a></li>--%>

<%--                                <li><a href="<c:url value="/bookroom" />">CHUYẾN ĐI</a></li>--%>
<%--                                <li><a href="<c:url value="/blog" />">BLOG</a></li>--%>
<%--                                <li><a href="<c:url value="/index" />">LIÊN HỆ</a></li>--%>
<%--                            </ul>--%>
<%--                        </nav>--%>
<%--                        <div class="clear"></div>--%>
<%--                    </div>--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>

<%--            </div>--%>

<%--                <%@ include file="/WEB-INF/views/layouts/menu.jsp" %>--%>


<%--        </div>--%>
<%--    </div>--%>


<%--</header>--%>
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
<%--            <div class="col-sm-3 pull-left">--%>
<%--                <form action="/places/page/1" method="post" width="100%">--%>
<%--                    <div id="custom-search-input">--%>
<%--                        <div class="input-group">--%>
<%--                            <input type="text" name="search" value="${search}" class="search-query form-control" placeholder="Tìm kiếm phòng /nhà mong muốn..." />--%>
<%--                            <span class="input-group-btn">--%>
<%--                                    <button class="btn btn-primary" type="button">--%>
<%--                                        <span class=" glyphicon glyphicon-search"></span>--%>
<%--                                    </button>--%>
<%--                                </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--            </div>--%>
            <div class=" col-sm-6">
                <%--                <div class="grid_12">--%>
                <div class="menu_block">
                    <nav class="horizontal-nav full-width horizontalNav-notprocessed">
                        <ul class="sf-menu">
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
<%--<div class="slider_wrapper">--%>
<%--    <div id="camera_wrap" class="">--%>
<%--        <div data-src="asset/images/anh2.jpg">--%>
<%--            <div class="caption fadeIn">--%>
<%--                <div class="title1"--%>
<%--                     style="font-size: 40px;	font-weight: 600;	letter-spacing: -0.02em;	line-height: 36px;">--%>
<%--                    Bạn chưa biết nên đi đâu?<br><br> Tuyệt!--%>
<%--                </div>--%>
<%--                <a href="<c:url value="/places" />">LEARN MORE</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div data-src="asset/images/slide1.jpg">--%>
<%--            <div class="caption fadeIn">--%>
<%--                <h2>Maldives</h2>--%>
<%--                <div class="price">--%>
<%--                    FROM--%>
<%--                    <span>$2000</span>--%>
<%--                </div>--%>
<%--                <a href="<c:url value="/places" />">LEARN MORE</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div data-src="asset/images/slide2.jpg">--%>
<%--            <div class="caption fadeIn">--%>
<%--                <h2>Venice</h2>--%>
<%--                <div class="price">--%>
<%--                    FROM--%>
<%--                    <span>$1600</span>--%>
<%--                </div>--%>
<%--                <a href="<c:url value="/places" />">LEARN MORE</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!--==============================Content=================================-->--%>
<%--<div class="content" style="background-color: #fff">--%>
<%--    <div class="container_12">--%>
<%--        <div class="wow fadeInUp" data-wow-delay="0.4s">--%>
<%--        <div class="grid_4">--%>
<%--            <div class="banner">--%>
<%--                <img src="asset/images/ban_img1.jpg" alt="">--%>
<%--                <div class="label">--%>
<%--                    <div class="title">HÀ NỘI</div>--%>
<%--                    <div class="price">FROM<span>$ 200</span></div>--%>
<%--                    <a href="/places/page/1?search=Hà Nội">LEARN MORE</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--        <div class="wow fadeInUp" data-wow-delay="0.4s">--%>
<%--        <div class="grid_4">--%>
<%--            <div class="banner">--%>
<%--                <img src="asset/images/ban_img2.jpg" alt="">--%>
<%--                <div class="label">--%>
<%--                    <div class="title">ĐÀ NẴNG</div>--%>
<%--                    <div class="price">FROM<span>$ 100</span></div>--%>
<%--                    <a href="/places/page/1?search=Đà Nẵng">LEARN MORE</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--        <div class="wow fadeInUp" data-wow-delay="0.4s">--%>
<%--        <div class="grid_4">--%>
<%--            <div class="banner">--%>
<%--                <img src="asset/images/ban_img3.jpg" alt="">--%>
<%--                <div class="label">--%>
<%--                    <div class="title">HỒ CHÍ MINH</div>--%>
<%--                    <div class="price">FROM<span>$ 250</span></div>--%>
<%--                    <a href="/places/page/1?search=Hồ Chí Minh">LEARN MORE</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        </div>--%>
<%--        <div class="clear"></div>--%>
<%--    </div>--%>

<%--	<div style="margin: 50px; margin-bottom: 100px; height: 2200px">--%>
<%--		<p class="oans">Cảm hứng cho chuyến đi tiếp theo của bạn</p>--%>
<%--        <div class="wow fadeInUp" data-wow-delay="0.4s">--%>
<%--		<div class="ihihk">--%>
<%--			<a href="/places/page/1?search=Hải Phòng">--%>
<%--                <div class="setw-25">--%>
<%--                    <img src="/asset/images/b1.jpg" width="100%" class="suahs">--%>
<%--                    <div class="idna1">--%>
<%--                        <p class="a">Hải Phòng</p>--%>
<%--                        <p class="aihdi">Cách 756 km</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--            <a href="/places/page/1?search=Huế">--%>
<%--			<div class="setw-25">--%>
<%--                <img src="/asset/images/b2.jpg" width="100%" class="suahs">--%>
<%--                <div class="idna2">--%>
<%--                    <p class="a">Huế</p>--%>
<%--                    <p class="aihdi">Cách 5 km</p>--%>
<%--                </div>--%>
<%--			</div>--%>
<%--            </a>--%>
<%--            <a href="/places/page/1?search=Nha Trang">--%>
<%--			<div class="setw-25">--%>
<%--                <img src="/asset/images/b3.jpg" width="100%" class="suahs">--%>
<%--                <div class="idna3">--%>
<%--                    <p class="a">Nha Trang</p>--%>
<%--                    <p class="aihdi">Cách 874 km</p>--%>
<%--                </div>--%>
<%--			</div>--%>
<%--            </a>--%>
<%--            <a href="/places/page/1?search=Cần Thơ">--%>
<%--			<div class="setw-25">--%>
<%--                <img src="/asset/images/b4.jpg" width="100%" class="suahs">--%>
<%--                <div class="idna4">--%>
<%--                    <p class="a">Cần Thơ</p>--%>
<%--                    <p class="aihdi">Cách 1274 km</p>--%>
<%--                </div>--%>
<%--			</div>--%>
<%--            </a>--%>
<%--		</div>--%>
<%--        </div>--%>

<%--        <p class="oans" style="padding-top: 500px;">Khám phá trải nghiệm AirTrip</p>--%>
<%--        <div class="ihihk">--%>
<%--            <div class="setw-50">--%>
<%--                <img src="/asset/images/nen2.jpg" width="100%" height="800px" style="border-radius: 15px;">--%>
<%--                <div class="pdwjod">--%>
<%--                    <p class="asihd">Những điều nên trải nghiệm trong chuyến đi của bạn</p>--%>
<%--                    <a class="dadww">Trải nghiệm</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="setw-50">--%>
<%--                <img src="/asset/images/nen4.jpg" width="100%" height="800px" style="border-radius: 15px;">--%>
<%--                <div class="pdwjod">--%>
<%--                    <p class="asihd">Những điều trải nghiệm khi du lịch</p>--%>
<%--                    <a class="dadww">Trải nghiệm trực tuyến</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="ihihk" >--%>
<%--            <div class="setw-100" style="position: relative">--%>
<%--                <img src="/asset/images/nen5.jpg" width="100%" height="800px" style="border-radius: 15px;">--%>
<%--                <div class="pdwjod" style="margin-top: 1000px;">--%>
<%--                    <p class="asihd">Bạn có thắcc mắc về việc đón tiếp khách</p>--%>
<%--                    <a href="/chat" class="dadww">Liên hệ với chúng tôi</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--	</div>--%>



<%--</div>--%>



<!--==============================footer=================================-->
	<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>

</body>
</html>
