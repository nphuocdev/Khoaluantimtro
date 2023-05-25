<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Tạo Phòng</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
            crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/asset/carousel/css/owl.carousel.min.css" />">
    <link rel="stylesheet" href="<c:url value="/asset/carousel/css/owl.theme.default.min.css" />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
    <link rel="stylesheet" href="<c:url value="/asset/carousel/css/style.css" />">
    <link rel="stylesheet" href="<c:url value="/asset/carousel/css/main.css" />">


    <%--	  RTE--%>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/asset/richtextediter/richtext.min.css">

    <style>
        .richText .richText-editor {
            height: 400px;
        }
        input[type="checkbox"] {
            transform: scale(2);
            margin-right: 10px;
        }
        b{
            font-size: 18px;
        }

    </style>

    <style>
        /**
 * @license
 * Copyright 2019 Google LLC. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */
        /*
         * Always set the map height explicitly to define the size of the div element
         * that contains the map.
         */
        #map {
            height: 100%;
            width: 100%;
        }

        /*
         * Optional: Makes the sample page fill the window.
         */
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        input[type=text] {
            background-color: #fff;
            border: 0;
            border-radius: 2px;
            box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
            margin: 10px;
            padding: 0 0.5em;
            font: 400 18px Roboto, Arial, sans-serif;
            overflow: hidden;
            line-height: 40px;
            margin-right: 0;
            min-width: 25%;
        }

        input[type=button] {
            background-color: #fff;
            border: 0;
            border-radius: 2px;
            box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
            margin: 10px;
            padding: 0 0.5em;
            font: 400 18px Roboto, Arial, sans-serif;
            overflow: hidden;
            height: 40px;
            cursor: pointer;
            margin-left: 5px;
        }

        input[type=button]:hover {
            background: rgb(235, 235, 235);
        }

        input[type=button].button-primary {
            background-color: #1a73e8;
            color: white;
        }

        input[type=button].button-primary:hover {
            background-color: #1765cc;
        }

        input[type=button].button-secondary {
            background-color: white;
            color: #1a73e8;
        }

        input[type=button].button-secondary:hover {
            background-color: #d2e3fc;
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Next & previous buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 0;
            top: 50%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev:hover, .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 13px;
            width: 13px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active, .dot:hover {
            background-color: #717171;
        }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }
    </style>

<%--    <%@ include file="/WEB-INF/views/layouts/head2.jsp" %>--%>
<%--    <%@ include file="/WEB-INF/views/layouts/header.jsp" %>--%>
    <script>$(document).ready(function () {
        $().UItoTop({easingType: 'easeOutQuart'});
    });
    </script>
</head>


<%@ include file="/WEB-INF/views/host/head3.jsp" %>
<%@ include file="/WEB-INF/views/host/header3.jsp" %>
<body>

<!-- Page Header Start -->



<div  style="padding: 100px 15% 10px 15%" class="table-responsive cart_info" >
    <h4><b style="font-size: 24px"><a href="/become-a-host/listings"><i  class="fas fa-angle-left"></i></a> Tạo phòng mới</b></h4>
    <br>
    <div class="border">
        <form action="/become-a-host/add" method="post" id="myform" enctype="multipart/form-data">
            <div class="1">
                <div class="text text-left  px-xl-5 d-flex align-items-center">
                    <div  >
                        <h2 style="padding-left:20px; font-size: 20px;font-weight: bold;color: #0c5460">Chọn loại phòng bạn muốn cho thuê?</h2>

                        <div style="font-size: 16px;padding-left: 30px"class="category ">
                            <c:forEach var="item" items="${categoryList }">
                                <input type="radio" name="category" class="setradio"
                                       value="${item.categoryId }">
                                <label>${item.name }</label>
                                <br>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class=" d-md-flex">
                    <div class="py-md-5">
                        <h2 style="padding-left:50px;font-size: 20px;font-weight: bold;color: #0c5460">Mô tả chính xác phòng bạn cho thuê?</h2>

                        <div style="font-size: 16px;padding-left:70px;"class="category">
                            <c:forEach var="item" items="${litleList }">
                                <div class="group-form">
                                    <input type="radio" name="litleCategory" class="setradio"
                                           value="${item.litleCategoryId }">
                                    <label>${item.litleName }</label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div style="padding-bottom:20px;">
                <div class="text text-left py-2 px-4 px-xl-5  align-items-center">
                    <div   class="py-md-10">
                        <h3 style="font-size: 20px;font-weight: bold;color: #0c5460">
                           Tên phòng trọ
                        </h3>
                        <br>
                        <textarea name="tieude" rows="2" cols="27" style="border-radius: 10px;border-style: ridge;width: 100%;background-color: #90C9DC; font-size: 16px;padding-top: 20px" id="title"placeholder="Nhập tên phòng trọ..."></textarea>
                    </div>
                </div>
            </div>
            <div class=" ">
                <div  class="item">
                    <h3 style="padding-left:50px;font-size: 20px;font-weight: bold;color: #0c5460">
                   Nhập địa chỉ của bạn
                </h3>
                    <div style="width:100%; height: 400px"class="work-wrap ">

                        <div class=" text-left align-items-center setaddcha">
                            <div style="width:100%; height: 300px; align-items: center" id="map"></div>

                            <input  class="setaddress" type="text" name="address" id="inputaddress" style="border-radius: 20px !important;border-style:groove;width: 50%;background-color: #90C9DC"
                                   placeholder="Nhập địa chỉ của bạn..."/>
                            <div style="padding-left: 45%">
                                <input style="align-items: center" type="button" class="button button-primary" id="search" value="Tìm kiếm" />
                                <input  type="button" class="button button-secondary" id="clear" value="Clear" /></div>

                        </div>
                    </div>
                </div>
            </div>
            <div class=" 4">
                <div
                        class="text text-left  p-2 px-xl-5 d-flex align-items-center">
                    <div style="color:#0c5460;width: 100%"class="py-md-5">
                        <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;">
                           Thêm hình ảnh phòng trọ
                        </h3>

                        <div class="py-md-5">
                            <img id="imgSrc1" style="display:none" width="200px" height="200px"
                                 src="<c:url value="" />"/>
                            <img id="imgSrc2" style="display:none" width="200px" height="200px"
                                 src="<c:url value="" />"/>
                            <img id="imgSrc3" style="display:none" width="200px" height="200px"
                                 src="<c:url value="" />"/>
                            <img id="imgSrc4" style="display:none" width="200px" height="200px"
                                 src="<c:url value="" />"/>
                            <img id="imgSrc5" style="display:none" width="200px" height="200px"
                                 src="<c:url value="" />"/>
                            <img id="imgSrc6" style="display:none" width="200px" height="200px"
                                 src="<c:url value="" />"/>

                            <input style="font-size: 16px" type="file" name="imageFile" id="imageFile"
                                   onchange="chooseFile(this)"
                                   accept="image/*" multiple="multiple" max="5" min="1">


                        </div>
                    </div>
                </div>

            </div>

            <div class=" ">
                <div class="item">
                    <div class=" d-md-flex">
                        <div
                                class=" text-left   px-xl-5  align-items-center">
                            <div class="py-md-5">
                                <table class="bnkhach">
                                    <tr>
                                        <h3 style="font-size: 20px;font-weight: bold;color: #0c5460"><b >Phòng có thể ở bao nhiêu người?</b></h3>
                                    </tr>
                                    <tr>
                                        <td><b st>Người </b></td>
                                        <td><input type="number" name="khach" value="1"/></td>
                                    </tr>
                                    <tr>
                                        <td><b>Phòng ngủ </b></td>
                                        <td><input type="number" name="phongngu" value="1"/></td>
                                    </tr>
                                    <tr>
                                        <td><b>Giường </b></td>
                                        <td><input type="number" name="giuong" value="1"/></td>
                                    </tr>
                                    <tr>
                                        <td><b>Phòng vệ sinh </b></td>
                                        <td><input type="number" name="phongvs" value="1"/></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class=" ">
                <div class="item">
                    <div class="d-md-flex">
                        <div class="text text-left   px-xl-5 d-flex align-items-center">
                            <div class="py-md-5" style="margin: 0 auto">
                                <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;">
                                   Số lượng phòng cho thuê
                                </h3>

                                <div class="numberplace_added" style="text-align: center;">
                                    <input class="iminus iis-form" type="button" value="-">
                                    <input type="number" name="numberPlace" class="numberPlace" max="1000"
                                           min="1" value="1">
                                    <input class="iplus iis-form" type="button" value="+">
                                </div>
                                <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;">
                                    <b>Giá cho thuê (giá/phòng)</b>
                                </h3>

                                <div class="buttons_added" style="text-align: center;">
                                    <input class="minus is-form" type="button" value="-">
                                    <input class="input-qty" max="1000000000"
                                           min="0" name="price" type="number" value="100000">
                                    <input class="plus is-form" type="button" value="+">
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class=" ">
                <div class="item">
                    <div class=" d-md-flex">

                        <div class="text text-left px-xl-5 d-flex align-items-center">
                            <div class="py-md-5" style="margin: 0 auto">
                                <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;" >
                                  Thời gian bạn cho thuê
                                </h3>

                                <table style="font-size: 16px" class="startdate">
                                    <tr>
                                        <td class="ngay"><b>Ngày bắt đầu </b></td>
                                        <td><input type="date" name="startDay" id="startDay"
                                                   placeholder="Chọn ngày bắt đầu cho thuế"/></td>
                                    </tr>
                                    <tr>
                                        <td class="ngay "><b >Ngày kết thúc </b></td>
                                        <td><input type="date" name="endDay" id="endDay"
                                                   placeholder="Chọn ngày kết thúc cho thuế"/></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class=" ">
                <div class="item">
                    <div class="d-md-flex">

                        <div class="text text-left  px-xl-5 d-flex align-items-center">
                            <div style="font-size: 16px">
                                <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;">
                                   Tạo phần mô tả
                                </h3>
                                <br>
                                <textarea name="detail" rows="4" cols="60" class="ftd" maxlength="500"
                                          id="content"></textarea>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" ">
                <div class="item">
                    <div class="d-md-flex">

                        <div    class="text text-left   px-xl-5 d-flex align-items-center">
                            <div class="">
                                <div>   <br>
                                    <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;">Địa điểm gần phòng trọ của bạn?</h3>

                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="bệnh viện">
                                        <label> Bệnh viện</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="chợ">
                                        <label> Chợ</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="siêu thị">
                                        <label> Siêu thị</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Đồn công an">
                                        <label> Đồn công an</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="UBND">
                                        <label> UBND phường</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi"
                                               value="trương đại học">
                                        <label> Gần trường đại học</label><br>
                                    </div>
                                </div>    <br>
                                <div> <br>
                                    <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;">Các tiện nghi ở phòng trọ?</h3>

                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Wi-fi">
                                        <label> Wi-fi</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="TV">
                                        <label> TV</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Bếp">
                                        <label> Bếp</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Máy giặt">
                                        <label> Máy giặt</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Điều hòa nhiệt độ">
                                        <label> Điều hòa</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi"
                                               value="Không gian riêng để làm việc">
                                        <label> Không gian riêng để làm việc</label><br>
                                    </div>
                                </div>

                                <div> <br>
                                    <h3 style="color:#0c5460;font-size: 20px;font-weight: bold;">Đảm bảo an toàn này khẩn cấp?</h3>

                                    <div  style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Bộ sơ cứu">
                                        <label> Bộ sơ cứu</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Bình chữa cháy">
                                        <label> Bình chữa cháy</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Thang thoát hiểm">
                                        <label> Thang thoát hiểm</label><br>
                                    </div>
                                    <div style="padding-left: 10px;" class="group-form f20">
                                        <input type="checkbox" name="tiennghi" value="Khóa cửa phòng ngủ">
                                        <label> Khóa cửa phòng ngủ</label><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class=" ">
                <div class="item">
                    <div class=" d-md-flex">
                        <div  class="py-md-5">
                            <h3 style="text-align:center; color:#0c5460;font-size: 20px;font-weight: bold;">
                                <b>Chào mừng bạn! Nhấn xác nhận để hoàn thành đăng kí</b>
                            </h3>
                            <button onclick="return validate()"   style="padding:10px;background-color: #0d6efd;border:none;border-radius:5px;font-size: 20px; color:#ffffff;">Hoàn thành</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<div style="font-size: 16px">
    <%@ include file="/WEB-INF/views/layouts/footer.jsp" %>
</div>


<script src="/asset/richtextediter/jquery.richtext.js"></script>
<script src="/asset/richtextediter/jquery.richtext.min.js"></script>

<script>
    $('#content').richText();
</script>

<script type="text/javascript">

    function validate() {
        var flag = true;

        if ($('input[name=category]:checked').length <= 0) {
            flag = false;
            alert("Vui lòng chọn loại phòng !");
        }
        if ($('input[name=litleCategory]:checked').length <= 0) {
            flag = false;
            alert("Vui lòng chọn loại nhà!");
        }
        if ($('#title').val() == '') {
            flag = false;
            alert("Vui lòng nhập tên phòng!");
        }
        if ($('#inputaddress').val() == '') {
            flag = false;
            alert("Vui lòng nhập địa chỉ chính xác!");
        }
        if ($('#content').val() == '') {
            flag = false;
            alert("Vui lòng nhập mô tả nhà phòng!");
        }
        if ($('#imageFile').val() == '') {
            flag = false;
            alert("Vui lòng chọn ít nhất 5 ảnh!");
        }

        return flag;
    }

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imgSrc1').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
        if (input.files && input.files[1]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imgSrc2').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[1]);
        }
        if (input.files && input.files[2]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imgSrc3').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[2]);
        }
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imgSrc4').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[3]);
        }
        if (input.files && input.files[4]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imgSrc5').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[4]);
        }

    }

    $("#imageFile").change(function () {
        readURL(this);
        $("#imgSrc1").show();
        $("#imgSrc2").show();
        $("#imgSrc3").show();
        $("#imgSrc4").show();
        $("#imgSrc5").show();

    });
</script>

<%--<script--%>

<%--        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=initMap&v=weekly"--%>
<%--        defer--%>
<%--></script>--%>
<%@ include file="/WEB-INF/views/layouts/keyMapAPI.jsp" %>
-----------------------------
<script
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
        integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
        crossorigin="anonymous"></script>
------------------------------

<script type="text/javascript">
    $(document).ready(function () {
        $('#goAdd').on('click', function () {
            var href = $(this).attr('href');
            jQuery.noConflict();
            $('#myform').attr('action', href);
        });
    });
</script>
<script src="asset/carousel/js/popper.js"></script>
<script src="asset/carousel/js/bootstrap.min.js"></script>
<script>//<![CDATA[
$('input.input-qty').each(function () {
    var $this = $(this),
        qty = $this.parent().find('.is-form'),
        min = Number($this.attr('min')),
        max = Number($this.attr('max'))
    if (min == 0) {
        var d = 0
    } else d = min
    $(qty).on('click', function () {
        if ($(this).hasClass('minus')) {
            if (d > min) d += -50000
        } else if ($(this).hasClass('plus')) {
            var x = Number($this.val()) + 1
            if (x <= max) d += 50000
        }
        $this.attr('value', d).val(d)
    })
})
$('input.numberPlace').each(function () {
    var $this = $(this),
        num = $this.parent().find('.iis-form'),
        min = Number($this.attr('min')),
        max = Number($this.attr('max'))
    if (min == 1) {
        var e = 1
    } else e = min
    $(num).on('click', function () {
        if ($(this).hasClass('iminus')) {
            if e > min) e += -1
        } else if ($(this).hasClass('iplus')) {
            var x = Number($this.val()) + 1
            if (x <= max)e += 1
        }
        $this.attr('value', e).val(e)
    })
})
document.getElementById("startDay").valueAsDate = new Date();
document.getElementById("endDay").valueAsDate = new Date();


//]]></script>

<script src="/asset/map/host.js"></script>
</body>
</html>