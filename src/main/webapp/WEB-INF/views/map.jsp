<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ban do</title>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/stylenew.css">
    <%@ include file="/WEB-INF/views/layouts/head2.jsp" %>
    <%@ include file="/WEB-INF/views/layouts/header.jsp" %>
    <script>$(document).ready(function(){
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
    </script>

</head>
<body>
<!--==============================header=================================-->
<header>
    <div class="i-head">
        <div class="row">
            <div class="col-sm-3">
                <div class="logo pull-left">
                    <div style="margin:20px 0px 20px 60px">
                        <a href="<c:url value="/places  " />"><b class="head3" style="color: #ffffff; ">
                            <i class="fas fa-home" style="margin-right: 10px;margin-top: -5px"></i>TÌM TRỌ</b>
                        </a>
                    </div>
                </div>

            </div >
            <div class="col-sm-6 pull-left">
                <form action="/map/1" method="get" width="100%">
                    <div id="custom-search-input">
                        <div class="input-group">
                            <input type="text" name="search" class="search-query form-control" placeholder="Tìm kiếm..." />
                            <span class="input-group-btn">
                                    <button class="btn btn-danger" type="submit">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-sm-3">
                <div class="shop-menu pull-right">
                    <ul class="nav navbar-nav">
                        <c:if test="${accLogin != null }">
                            <li class="dropdown"><a class="i-chu"><i class="fa fa-user"></i>${accLogin.name }<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="/manager-account">Thông tin cá nhân</a></li>
                                    <li><a href="/loveplace">Danh sách Yêu thích</a></li>

                                    <hr>
                                    <li><a href="/become-a-host/listings">Chế độ chủ nhà</a></li>
                                    <li><a href="/logout">Đăng xuất</a></li>
                                </ul>
                            </li>
                        </c:if>
                        <c:if test="${accLogin == null }">
                            <li><a href="/login" class="i-chu"><i class="fa fa-lock"></i> Đăng nhập</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>


</header>
<!--==============================Content=================================-->
<div class="content">
    <a href="/places" class="showmap1"><i class="fas fa-list"></i>Hiện danh sách</a>
    <div>
        <div style="width: 100%;padding: 20px 50px 50px 50px;">
            <div style="float: left;width: 75%">
                <c:if test="${categoryList.size() > 0 }">
                    <ul class="category"class="category">
                        <a href="/show-map"><li ><i class="fas fa-home"></i> Tất cả</li></a>
                        <c:forEach var="item" items="${categoryList }">
                            <c:if test="${category==item.categoryId}">
                                <a href="/map/1?search=${search}&category=${item.categoryId}&filter=${filter}"><li class="active" >${item.name }</li></a>
                            </c:if>
                            <c:if test="${item.categoryId != category}">
                                <a href="/map/1?search=${search}&category=${item.categoryId}&filter=${filter}"><li >${item.name }</li></a>
                            </c:if>
                        </c:forEach>
                    </ul>
                </c:if>
            </div>
            <div>
                <div style="float: left;width: 13%; margin-right: 20px">
                    <select class="form-control" name="filter" id="filter" onchange="filter()">
                        <option value="">Giá</option>
                        <c:if test="${filter.equals(\"asc\")}">
                            <option value="asc" selected>Tăng dần theo giá</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"asc\")}">
                            <option value="asc">Tăng dần theo giá</option>
                        </c:if>
                        <c:if test="${filter.equals(\"desc\")}">
                            <option value="desc" selected>Giảm dần theo giá</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"desc\")}">
                            <option value="desc">Giảm dần theo giá</option>
                        </c:if>
                        <c:if test="${filter.equals(\"pricethap100\")}">
                            <option value="pricethap100" selected>Giá dưới $100/đêm</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"pricethap100\")}">
                            <option value="pricethap100">Giá dưới $100/đêm</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price100\")}">
                            <option value="price100" selected>Giá từ $100-200/đêm</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price100\")}">
                            <option value="price100">Giá từ $100-200/đêm</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price200\")}">
                            <option value="price200" selected>Giá từ $200-300/đêm</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price200\")}">
                            <option value="price200">Giá từ $200-300/đêm</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price300\")}">
                            <option value="price300" selected>Giá $300-400/đêm</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price300\")}">
                            <option value="price300">Giá từ $300-400/đêm</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price400\")}">
                            <option value="price400" selected>Giá từ $400-500/đêm</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price400\")}">
                            <option value="price400">Giá từ $400-500/đêm</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price500\")}">
                            <option value="price500" selected>Giá trên $500/đêm</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price500\")}">
                            <option value="price500">Giá trên $500/đêm</option>
                        </c:if>
                    </select>
                </div>
                <div style="float: left;width: 5%">
                    <button class="btn btn-light" data-toggle="modal" data-target="#exampleModal">
                        <i class="fas fa-filter" style="margin-top: 5px"></i> Bộ lọc</button>
                </div>
            </div>
        </div>

        <div style="display: none">
            <c:forEach var="item" items="${listPost }" varStatus="loop">
                <div class="item">
                    <p class="image">${item.images[0].name}</p>
                    <p class="placeId">${item.placeId }</p>
                    <p class="title">${item.name }</p>
                    <p class="price">$ ${item.price } / đêm</p>
                    <p class="address">${item.address }</p>
                </div>
            </c:forEach>
        </div>
    </div>
    <br>
    <div id="map" style="width: 100%; height: 900px"></div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <b class="modal-title" id="exampleModalLabel">Tìm kiếm nâng cao</b>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="/map/search-advanced" method="post">
                <div class="modal-body">
                    <div class="filter">
                        <div class="search">
                            <p style="padding-left: 10px">Loại nơi ở</p>
                            <select name="category">
                                <option value="">Tất cả</option>
                                <c:forEach var="item" items="${categoryList}">
                                    <option value="${item.categoryId}">${item.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="search">
                            <p style="padding-left: 10px">Loại nhà phòng</p>
                            <select name="litlecategory" id="litlecategory">
                                <option value="">Tất cả</option>
                                <c:forEach var="item" items="${litlecategoryList}">
                                    <option value="${item.litleCategoryId}">${item.litleName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="filter">
                        <div class="search">
                            <p style="padding-left: 10px">Loại phòng thuê</p>
                            <select class="phongthue">
                                <option value="toanbonha">Toàn bộ nhà</option>
                                <option value="phongchung">Phòng chung</option>
                                <option value="phongrieng">Phòng riêng</option>
                            </select>
                        </div>
                        <div class="search">
                            <p style="padding-left: 10px">Địa chỉ</p>
                            <input name="address" class="form-control" style="border: none;-webkit-box-shadow: none;" id="address"
                                   placeholder="Địa chỉ cho thuê...">
                        </div>
                    </div>

                    <div class="filter">
                        <div class="search">
                            <p style="padding-left: 10px">Số người cho phép</p>
                            <select name="people" id="people">
                                <option value="1" selected>1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8+</option>
                            </select>
                        </div>
                        <div class="search">
                            <p style="padding-left: 10px">Phòng ngủ</p>
                            <select name="phongngu" id="phongngu">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8+</option>
                            </select>
                        </div>
                    </div>
                    <div class="filter">
                        <div class="search">
                            <p style="padding-left: 10px">Giường</p>
                            <select name="giuong" id="giuong">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8+</option>
                            </select>
                        </div>
                        <div class="search">
                            <p style="padding-left: 10px">Phòng tắm</p>
                            <select name="phongtam" id="phongtam">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8+</option>
                            </select>
                        </div>
                    </div>
                    <div class="filter">
                        <div class="search">
                            <p style="padding-left: 10px">Thời gian bắt đầu</p>
                            <input name="startdate" id="startdate" class="form-control"
                                   style="border: none;-webkit-box-shadow: none;" type="date">
                        </div>
                        <div class="search">
                            <p style="padding-left: 10px">Thời gian kết thúc</p>
                            <input name="enddate" id="enddate" class="form-control"
                                   style="border: none;-webkit-box-shadow: none;" type="date">
                        </div>
                    </div>
                    <div class="filter">
                        <div class="search">
                            <p style="padding-left: 10px">Giá tối thiểu (USD/đêm)</p>
                            <input name="price1" class="form-control" style="border: none;-webkit-box-shadow: none;" id="price1"
                                   type="number" value="0">
                        </div>
                        <div class="search">
                            <p style="padding-left: 10px">Giá tối đa (USD/đêm)</p>
                            <input name="price2" class="form-control" style="border: none;-webkit-box-shadow: none;" id="price2"
                                   type="number" value="1000">
                        </div>
                    </div>

                </div>
                <div class="modal-footer" style="border-top:none">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-light">Tìm kiếm</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--==============================footer=================================-->
<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>
<%--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=initMap&v=weekly"--%>
<%--        defer--%>
<%--></script>--%>
<%@ include file="/WEB-INF/views/layouts/keyMapAPI.jsp" %>
<script src="/asset/map/showmap.js" ></script>

<script>
    document.getElementById("startdate").valueAsDate = new Date();
    document.getElementById("enddate").valueAsDate = new Date();

    //search advanced
    function filter() {
        const filter = document.getElementById("filter").value;
        console.log(filter);
        var search = "<c:out value='${search}'/>";
        var category = "<c:out value='${category}'/>";
        window.location="/map/1?search="+search+"&filter="+filter+"&category="+category;
    }
    var litlecategory = '<c:out value="${litlecategory}"/>';
    document.getElementById("litlecategory").value = litlecategory;
    var address = '<c:out value="${address}"/>';
    document.getElementById("address").value = address;

    var people = '<c:out value="${people}"/>';
    if(people != "") {
        document.getElementById("people").value = people;
    }

    var phongngu = '<c:out value="${phongngu}"/>';
    if(phongngu != "") {
        document.getElementById("phongngu").value = phongngu;
    }

    var giuong = '<c:out value="${giuong}"/>';
    if(giuong != "") {
        document.getElementById("giuong").value = giuong;
    }

    var phongtam = '<c:out value="${phongtam}"/>';
    if(phongtam != "") {
        document.getElementById("phongtam").value = phongtam;
    }

    var startdate = '<c:out value="${startdate}"/>';
    if(startdate != "") {
        document.getElementById("startdate").value = startdate;
    }

    var enddate = '<c:out value="${enddate}"/>';
    if(enddate != "") {
        document.getElementById("enddate").value = enddate;
    }

    var price1 = '<c:out value="${price1}"/>';
    if(price1 != "") {
        document.getElementById("price1").value = price1;
    }

    var price2 = '<c:out value="${price2}"/>';
    if(price2 != "") {
        document.getElementById("price2").value = price2;
    }



    jQuery('.con1 a').click(function(evt) {
        evt.preventDefault();

        var placeId = jQuery(this).attr("data-id");
        var item = 'item-'+placeId;

        $.ajax({
            type : "GET",
            contentType : "application/json",
            url : "/AddLovePlace",
            data : {
                placeId : placeId,
            },
            timeout : 2000,
            success : function(data) {
                console.log("SUCCESS: ");
                if(document.getElementById(item).style.color == "red")
                    document.getElementById(item).style.color = "white";
                else document.getElementById(item).style.color = "red";
            },
            error : function(e) {
                console.log("ERROR: ", e);
            }
        });

    });
</script>

</body>
</html>