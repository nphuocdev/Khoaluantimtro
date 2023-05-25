<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Phòng trọ</title>
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
                            <input type="text" name="search" value="${search}" class="search-query form-control" placeholder="Tìm kiếm phòng..." />
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
                            <li><a style="font-weight: bold;font-size: 20px" href="<c:url value="become-a-host/listings" />">TẠO PHÒNG </a></li>
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
<div class="content" style="padding-top: 10px;padding-bottom: 50px">
<%--    <a href="/show-map" class="showmap1"><i class="fas fa-map"></i>Hiện bản đồ</a>--%>
    <div class=" ">
        <div style="margin: 20px auto; width: 90%; font-size: 16px">
            <div style="float: left;width: 75%">
                <c:if test="${categoryList.size() > 0 }">
                    <ul class="category" class="category">
                        <a href="/places">
                            <li><i class="fas fa-home"></i> Tất cả</li>
                        </a>
                        <c:forEach var="item" items="${categoryList }">
                            <c:if test="${category==item.categoryId}">
                                <a href="/places/page/1?search=${search}&category=${item.categoryId}&filter=${filter}">
                                    <li class="active">${item.name }</li>
                                </a>
                            </c:if>
                            <c:if test="${item.categoryId != category}">
                                <a href="/places/page/1?search=${search}&category=${item.categoryId}&filter=${filter}">
                                    <li>${item.name }</li>
                                </a>
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
                        <c:if test="${filter.equals(\"pricethap500\")}">
                            <option value="pricethap500" selected>Giá dưới 500.000đ/phòng</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"pricethap500\")}">
                            <option value="pricethap500">Giá dưới 500.000đ/phòng</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price500\")}">
                            <option value="price500" selected>Giá từ 500-1 triệu/phòng</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price500\")}">
                            <option value="price500">Giá từ  500 -1 triệu/phòng</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price1000\")}">
                            <option value="price1000" selected>Giá từ 1 - 1.5 triệu/phòng</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price1000\")}">
                            <option value="price1000">Giá từ  1 - 1.5 triệu</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price1500\")}">
                            <option value="price1500" selected>Giá từ 1.5 -2 triệu/phòng</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price1500\")}">
                            <option value="price1500">Giá từ 1.5 -2 triệu/phòng</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price2000\")}">
                            <option value="price2000" selected>Giá từ 2 -2.5 triệu/phòng</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price2000\")}">
                            <option value="price2000">Giá từ từ 2 -2.5 triệu/phòng</option>
                        </c:if>
                        <c:if test="${filter.equals(\"price2500\")}">
                            <option value="price2500" selected>Giá trên 2.5 triệu/phòng</option>
                        </c:if>
                        <c:if test="${!filter.equals(\"price2500\")}">
                            <option value="price2500">Giá trên 2.5 triệu/phòng</option>
                        </c:if>
                    </select>
                </div>
                <div style="float: left;width: 5%">
                    <button class="btn btn-light" data-toggle="modal" data-target="#exampleModal">
                        <i class="fas fa-filter" style="margin-top: 5px"></i> Bộ lọc
                    </button>
                </div>
            </div>
        </div>

        <table class="table itable" style="max-width: 80%">
            <tr>
                <c:choose>
                <c:when test="${listPost.size() > 0 }">
                <c:forEach var="item" items="${listPost }" varStatus="loop">
                <c:forEach var="rate" items="${ratings }" varStatus="i">
                <c:if test="${loop.index == i.index}">
                <input id="ed" value="${ item.placeId }" hidden/>
                <td style="width:33%">
                    <div class="wow fadeInUp" data-wow-delay="0.2s">
                        <div class="iPlace">
                            <div class="cha">
											<span style="z-index: 2;cursor: pointer; "class="con1">

												 <c:choose>

                                                     <c:when test="${!Cart.containsKey(item.placeId) }">
														<a data-id="${item.placeId }">
															<i class="fas fa-heart" id="item-${ item.placeId }"
                                                               style="color:white"></i>
														</a>
                                                     </c:when>
                                                     <c:otherwise>
														<a data-id="${item.placeId }">
															<i class="fas fa-heart" id="item-${ item.placeId }"
                                                               style="color:red"></i>
														</a>
                                                     </c:otherwise>
                                                 </c:choose>
											</span>
                                <img src="/asset/images/${item.images[0].name }" alt="" height="330px">
                            </div>
                            <div class="label1" style="margin-top: 10px; margin-bottom: 20px; ">
                            <div class="float-left " >
                                <i class="fas fa-star"
                                   style="color:#e8d105;font-size: 18px; margin-right: 10px"></i><span
                                    style="font-size: 15px">${rate}</span>
                            </div>
                            <div class="float-right" >
                                <i class="fas fa-phone"
                                   style="color:#077acc;font-size: 18px; margin-right: 10px"></i>
                                <span style="font-size: 15px"> <a style="font-weight: bold;color: #0d6efd"href="tel:${item.phone}">${item.phone}</a> </span>
                            </div>
                            </div>

                            <div class="label1">
                                <div style="padding-bottom: 7px"> ${item.price } đồng/ phòng</div>
<%--                                <div>--%>
<%--                                    Tình trạng phòng:--%>
<%--                                    <c:choose>--%>
<%--                                        <c:when test="${item.placeId.isEmpty == false }">--%>
<%--                                            Đã hết--%>
<%--                                        </c:when>--%>
<%--                                        <c:otherwise>Còn phòng</c:otherwise>--%>
<%--                                    </c:choose>--%>
<%--                                </div>--%>
                                <div class="float-left title-place1">
                                    <a style="color: #0c5460    " href="/detailplace/${item.placeId }">
                                        <b class="textoverflow1">${item.name }</b>
                                    </a>
                                </div>

                            </div>


                        </div>
                    </div>
                </td>
                <c:if test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1) == placeList.size() }">
            </tr>
            </c:if>
            </c:if>
            </c:forEach>
            </c:forEach>
            </c:when>

            <c:otherwise>
                <h5 style="text-align: center;"><b>Không có kết quả nào được tìm thấy</b></h5>
            </c:otherwise>
            </c:choose>

        </table>
    </div>
    <c:if test="${msg == null }">
        <div class="pagination" style="padding-bottom: 100px">
            <c:if test="${currentPage > 1}">
                <a href="/places/page/${currentPage-1 }?search=${search}&category=${category}&filter=${filter}">«</a>
            </c:if>
            <c:forEach begin="1" end="${totalPages }" varStatus="loop">
                <c:if test="${currentPage == loop.index}">
                    <a class="active"
                       href="/places/page/${loop.index }?search=${search}&category=${category}&filter=${filter}">${loop.index }</a>
                </c:if>
                <c:if test="${currentPage != loop.index}">
                    <a href="/places/page/${loop.index }?search=${search}&category=${category}&filter=${filter}">${loop.index }</a>
                </c:if>
            </c:forEach>
            <c:if test="${currentPage < totalPages}">
                <a href="/places/page/${currentPage+1 }?search=${search}&category=${category}&filter=${filter}">»</a>
            </c:if>
        </div>
    </c:if>

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
            <form action="/search-advanced" method="post">
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
                            <p style="padding-left: 10px">Giá tối thiểu</p>
                            <input name="price1" class="form-control" style="border: none;-webkit-box-shadow: none;" id="price1"
                                   type="number" value="0">
                        </div>
                        <div class="search">
                            <p style="padding-left: 10px">Giá tối đa </p>
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
<script>
    document.getElementById("startdate").valueAsDate = new Date();
    document.getElementById("enddate").valueAsDate = new Date();
    //search advanced
    function filter() {
        const filter = document.getElementById("filter").value;
        console.log(filter);
        var search = "<c:out value='${search}'/>";
        var category = "<c:out value='${category}'/>";
        window.location = "/places/page/1?search=" + search + "&filter=" + filter + "&category=" + category;
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



    jQuery('.con1 a').click(function (evt) {
        evt.preventDefault();

        var placeId = jQuery(this).attr("data-id");
        var item = 'item-' + placeId;

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/AddLovePlace",
            data: {
                placeId: placeId,
            },
            timeout: 2000,
            success: function (data) {
                console.log("SUCCESS: ");
                if (document.getElementById(item).style.color == "red")
                    document.getElementById(item).style.color = "white";
                else document.getElementById(item).style.color = "red";
            },
            error: function (e) {
                console.log("ERROR: ", e);
            }
        });

    });


</script>

</body>
<%@ include file="/WEB-INF/views/host/libfooter.jsp" %>
</html>