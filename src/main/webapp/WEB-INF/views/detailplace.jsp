<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Detail Place</title>
		<script src="https://kit.fontawesome.com/a076d05399.js"></script>		
		<link rel="stylesheet" href="<%=request.getContextPath() %>/asset/css/stylenew.css">
		<%@ include file="/WEB-INF/views/layouts/head2.jsp" %>
		<%@ include file="/WEB-INF/views/layouts/header.jsp" %>
		<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

		<style>
			#map {
				height: 500px;
				width: 75%;
				margin: 0 auto;
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

			/* Optional: Makes the sample page fill the window. */
			html,
			body {
				height: 100%;
				margin: 0;
				padding: 0;
			}

			#container {
				height: 100%;
				display: flex;
			}

			#sidebar {
				flex-basis: 15rem;
				flex-grow: 1;
				padding: 1rem;
				max-width: 30rem;
				height: 100%;
				box-sizing: border-box;
				overflow: auto;
			}

			#map {
				flex-basis: 0;
				flex-grow: 4;
				height: 100%;
			}

			#floating-panel {
				position: absolute;
				top: 10px;
				left: 25%;
				z-index: 5;
				background-color: #fff;
				padding: 5px;
				border: 1px solid #999;
				text-align: center;
				font-family: "Roboto", "sans-serif";
				line-height: 30px;
				padding-left: 10px;
			}

			#floating-panel {
				background-color: #fff;
				border: 0;
				border-radius: 2px;
				box-shadow: 0 1px 4px -1px rgba(0, 0, 0, 0.3);
				margin: 10px;
				padding: 0 0.5em;
				font: 400 18px Roboto, Arial, sans-serif;
				overflow: hidden;
				padding: 5px;
				font-size: 14px;
				text-align: center;
				line-height: 30px;
				height: auto;
			}

			#map {
				flex: auto;
			}

			#sidebar {
				flex: 0 1 auto;
				padding: 0;
			}
			#sidebar > div {
				padding: 0.5rem;
			}

		</style>
	</head>
	<body style="background: #fff !important">
<%--	<%@ include file="/WEB-INF/views/layouts/header2.jsp" %>	--%>

<header>
	<div class="i-head">
		<div class="row  ">
			<div class="col-sm-2">
				<div class="logo pull-left">

					<div style="margin-top: 20px">
						<a href="<c:url value="/places" />"><b class="head3 " style="color: #fff; ">
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
                                    <button class="btn btn-primary" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
						</div>
					</div>
				</form>
			</div>
			<div class=" col-sm-5 ">
				<%--                <div class="grid_12">--%>
				<div class="menu_block">
					<nav class="horizontal-nav full-width horizontalNav-notprocessed">
						<ul class="sf-menu">
							<li ><a href="<c:url value="/places" />">PHÒNG TRỌ</a></li>
							<li><a href="<c:url value="/become-a-host" />">TẠO PHÒNG </a></li>
							<li><a href="<c:url value="/blog" />">BLOG</a></li>
							<li><a href="<c:url value="/contact" />">HỖ TRỢ</a></li>
						</ul>
					</nav>
					<div class="clear"></div>
				</div>
			</div>
			<%@ include file="/WEB-INF/views/layouts/menu.jsp" %>
		</div>
	</div>


</header>
	<div class="w-detail">
		<div>
			<div>
				<div>
					<div style="float: left; width: 100%">
						<p class="d1" style="line-height: 1.5;">${detailPlace.name }</p>
					</div>
					<br>
					<div style="float: left; width: 70%">
						<p class="dtieude" style="padding-bottom: 30px">${detailPlace.address}

					</div>
					<div class="lovedetail" style="float: left">
						<div style="padding-top: 20px;margin-right: 40px; text-align: right">
							<c:choose>
								<c:when test="${!Cart.containsKey(item.placeId) }">
									<a data-id="${detailPlace.placeId }">
										<i class="fas fa-heart" id="item-${detailPlace.placeId }"
										   style="color:white"></i> &nbsp;
										<b>Yêu thích</b>
									</a>
								</c:when>
								<c:otherwise>
									<a data-id="${detailPlace.placeId }"><i class="fas fa-heart" id="item-${detailPlace.placeId }" style="color:red"></i> &nbsp;
										<b>Yêu thích</b>
									</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<div >
				<table class="dtable " >
					  <tr>
						  <th rowspan="2" width="50%" height="100%">
							  <a href="/show-image/${detailPlace.placeId}" >
							  <img src="<c:url value="/asset/images/${detailPlace.images[0].name }" />" height="361px" width="540px" class="setimgdetail1" style="border-top-left-radius: 20px;border-bottom-left-radius: 20px;">
							  </a>
						  </th>
						  <td width="25%" height="50%"><a href="/show-image/${detailPlace.placeId}" ><img src="<c:url value="/asset/images/${detailPlace.images[1].name }" />" height="100%" class="setimgdetail" ></a></td>
						  <td width="25%" height="50%"><a href="/show-image/${detailPlace.placeId}" ><img src="<c:url value="/asset/images/${detailPlace.images[2].name }" />" height="100%" class="setimgdetail" style="    border-top-right-radius: 20px;"></a></td>
					  </tr>
					  <tr>
						  <td width="25%" height="50%"><a href="/show-image/${detailPlace.placeId}" ><img src="<c:url value="/asset/images/${detailPlace.images[3].name }" />" height="100%" class="setimgdetail" ></a></td>
						  <td width="25%" height="50%"><a href="/show-image/${detailPlace.placeId}" ><img src="<c:url value="/asset/images/${detailPlace.images[4].name }" />" height="100%" class="setimgdetail" style="border-bottom-right-radius: 20px;"></a></td>
					  </tr>
				</table>
				<div style="float: right; padding-top: 15px">
					<a href="/show-image/${detailPlace.placeId}" class="btn btn-light" style="margin-right: 20px; padding: 10px"><i class="fas fa-th" style="margin: 5px 5px 0 0"></i>Xem tất cả ảnh</a>
				</div>
				<br>
				<div style="width: 100%">
					<div class="dleft"style="padding:0 50px">
						<p class="u1">Thông tin cơ bản</p>
						<div class="u2">
							${detailPlace.detailPlace.phongkhach } người <i class="fas fa-circle" style="font-size: 5px; line-height: 20px; margin: 0 15px"></i>
							${detailPlace.detailPlace.giuong } giường <i class="fas fa-circle" style="font-size: 5px; line-height: 20px; margin: 0 15px"></i>
							${detailPlace.detailPlace.phongvs } phòng vệ sinh
						</div>
						<hr>
						<p class="u1">Mô tả nhà</p>
						<p class="d-detail">${detailPlace.detail }</p>
						<hr>

						<p class="dtiennghi">Phòng trọ có:</p>
						<div class="sewcpu6 dir dir-ltr" style="padding-bottom: calc( color: rgb(34, 34, 34); font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sans-serif; font-size: 16px; --spacingBottom:3;"><div class="t5p7tdn dir dir-ltr" style="color: var(--f-k-smk-x); font-family: var(--e-ls-qkw); font-weight: var(--jx-zk-pv); font-size: var(--lhy-d-yl); line-height: var(--fme-bf-w);"><h2 tabindex="-1" class="hnwb2pb dir dir-ltr" elementtiming="LCP-target" style="box-sizing: border-box; margin: 0px; color: inherit; font-size: 1em; font-weight: inherit; line-height: inherit; outline: 0px; padding: 0px;"></h2><h2 tabindex="-1" class="hnwb2pb dir dir-ltr" elementtiming="LCP-target" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: inherit; font-size: 1em; font-weight: inherit; line-height: inherit; padding: 0px;"><div class="sewcpu6 dir dir-ltr" style="padding-bottom: calc( var(--spacingBottomLargeAndAbove,var(--spacingBottom)) * var(--fgg-f-l-a) ); text-transform: none; --spacingBottom:3;"><div class="t5p7tdn dir dir-ltr" style="color: var(--f-k-smk-x); font-family: var(--e-ls-qkw); font-weight: var(--jx-zk-pv); font-size: var(--lhy-d-yl); line-height: var(--fme-bf-w);"></div></div><div class="_1byskwn" style="text-transform: none; -webkit-box-pack: start !important; -webkit-box-align: stretch !important; display: flex !important; align-items: stretch !important; justify-content: flex-start !important; flex-wrap: wrap !important; width: calc(100% + 16px) !important; margin-left: -8px !important; margin-right: -8px !important;"><div class="_19xnuo97" style="width: 334.663px; margin-left: 0px; margin-right: 0px; position: relative !important; padding-left: 8px !important; padding-right: 8px !important;"><div class="iikjzje i10xc1ab dir dir-ltr" style="display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: end; justify-content: flex-end; flex-direction: row-reverse; max-width: 83.3333%; padding-bottom: 16px;"><div>Wi-fi</div>
								<div class="i4wvyiy i1fpqhzs dir dir-ltr" style="min-width: 24px; margin-left: 0px; margin-right: 16px;"><svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="m15.9999 20.33323c2.0250459 0 3.66667 1.6416241 3.66667 3.66667s-1.6416241 3.66667-3.66667 3.66667-3.66667-1.6416241-3.66667-3.66667 1.6416241-3.66667 3.66667-3.66667zm0 2c-.9204764 0-1.66667.7461936-1.66667 1.66667s.7461936 1.66667 1.66667 1.66667 1.66667-.7461936 1.66667-1.66667-.7461936-1.66667-1.66667-1.66667zm.0001-7.33323c3.5168171 0 6.5625093 2.0171251 8.0432368 4.9575354l-1.5143264 1.5127043c-1.0142061-2.615688-3.5549814-4.4702397-6.5289104-4.4702397s-5.5147043 1.8545517-6.52891042 4.4702397l-1.51382132-1.5137072c1.48091492-2.939866 4.52631444-4.9565325 8.04273174-4.9565325zm.0001-5.3332c4.9804693 0 9.3676401 2.540213 11.9365919 6.3957185l-1.4470949 1.4473863c-2.1746764-3.5072732-6.0593053-5.8431048-10.489497-5.8431048s-8.31482064 2.3358316-10.48949703 5.8431048l-1.44709488-1.4473863c2.56895177-3.8555055 6.95612261-6.3957185 11.93659191-6.3957185zm-.0002-5.3336c6.4510616 0 12.1766693 3.10603731 15.7629187 7.9042075l-1.4304978 1.4309874c-3.2086497-4.44342277-8.4328305-7.3351949-14.3324209-7.3351949-5.8991465 0-11.12298511 2.89133703-14.33169668 7.334192l-1.43047422-1.4309849c3.58629751-4.79760153 9.31155768-7.9032071 15.7621709-7.9032071z"></path></svg></div></div></div><div class="_19xnuo97" style="width: 334.663px; margin-left: 0px; margin-right: 0px; position: relative !important; padding-left: 8px !important; padding-right: 8px !important;"><div class="iikjzje i10xc1ab dir dir-ltr" style="display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: end; justify-content: flex-end; flex-direction: row-reverse; max-width: 83.3333%; padding-bottom: 16px;"><div>Chỗ ở thuận tiện đi lại</div>
							<div class="i4wvyiy i1fpqhzs dir dir-ltr" style="min-width: 24px; margin-left: 0px; margin-right: 16px;"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M26 19a1 1 0 1 1-2 0 1 1 0 0 1 2 0zM7 18a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm20.693-5l.42 1.119C29.253 15.036 30 16.426 30 18v9c0 1.103-.897 2-2 2h-2c-1.103 0-2-.897-2-2v-2H8v2c0 1.103-.897 2-2 2H4c-1.103 0-2-.897-2-2v-9c0-1.575.746-2.965 1.888-3.882L4.308 13H2v-2h3v.152l1.82-4.854A2.009 2.009 0 0 1 8.693 5h14.614c.829 0 1.58.521 1.873 1.297L27 11.151V11h3v2h-2.307zM6 25H4v2h2v-2zm22 0h-2v2h2v-2zm0-2v-5c0-1.654-1.346-3-3-3H7c-1.654 0-3 1.346-3 3v5h24zm-3-10h.557l-2.25-6H8.693l-2.25 6H25zm-15 7h12v-2H10v2z"></path></svg></div></div></div><div class="_19xnuo97" style="width: 334.663px; margin-left: 0px; margin-right: 0px; position: relative !important; padding-left: 8px !important; padding-right: 8px !important;"><div class="iikjzje i10xc1ab dir dir-ltr" style="display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: end; justify-content: flex-end; flex-direction: row-reverse; max-width: 83.3333%; padding-bottom: 16px;"><div>Máy sấy tóc</div>
							<div class="i4wvyiy i1fpqhzs dir dir-ltr" style="min-width: 24px; margin-left: 0px; margin-right: 16px;"><svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M14 27l-.005.2a4 4 0 0 1-3.789 3.795L10 31H4v-2h6l.15-.005a2 2 0 0 0 1.844-1.838L12 27zM10 1c.536 0 1.067.047 1.58.138l.38.077 17.448 3.64a2 2 0 0 1 1.585 1.792l.007.166v6.374a2 2 0 0 1-1.431 1.917l-.16.04-13.554 2.826 1.767 6.506a2 2 0 0 1-1.753 2.516l-.177.008H11.76a2 2 0 0 1-1.879-1.315l-.048-.15-1.88-6.769A9 9 0 0 1 10 1zm5.692 24l-1.799-6.621-1.806.378a8.998 8.998 0 0 1-1.663.233l-.331.008L11.76 25zM10 3a7 7 0 1 0 1.32 13.875l.331-.07L29 13.187V6.813L11.538 3.169A7.027 7.027 0 0 0 10 3zm0 2a5 5 0 1 1 0 10 5 5 0 0 1 0-10zm0 2a3 3 0 1 0 0 6 3 3 0 0 0 0-6z"></path></svg></div></div></div><div class="_19xnuo97" style="width: 334.663px; margin-left: 0px; margin-right: 0px; position: relative !important; padding-left: 8px !important; padding-right: 8px !important;"><div class="iikjzje i10xc1ab dir dir-ltr" style="display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: end; justify-content: flex-end; flex-direction: row-reverse; max-width: 83.3333%; padding-bottom: 16px;"><div>Bếp nấu ăn</div>
							<div class="i4wvyiy i1fpqhzs dir dir-ltr" style="min-width: 24px; margin-left: 0px; margin-right: 16px;"><svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M2 31a1 1 0 0 1-1-1 9 9 0 0 1 17.945-1H21c.736 0 1.428-.265 1.971-.739a2.99 2.99 0 0 0 1.022-2.06L24 26V14H13v6h-2v-7a1 1 0 0 1 .883-.993L12 12h13a1 1 0 0 1 .993.883L26 13v2h4a1 1 0 0 1 .993.883L31 16v9a1 1 0 0 1-.883.993L30 26h-4a4.99 4.99 0 0 1-1.714 3.768 4.982 4.982 0 0 1-3.025 1.225L21 31zm3.85-6.637a7.003 7.003 0 0 0-2.693 4.154l-.058.301-.028.182h4.103zM10 23c-.823 0-1.612.142-2.346.403L9.254 29h1.491l1.6-5.598a6.968 6.968 0 0 0-1.854-.385l-.25-.013zm4.151 1.363L12.825 29h4.103l-.027-.182a6.999 6.999 0 0 0-2.75-4.455zM29 17h-3v7h3zM19.994 1c-.002 2.062-.471 3.344-1.765 5.424l-.753 1.183C16.61 8.998 16.198 9.908 16.058 11h-2.015c.15-1.613.708-2.836 1.91-4.728l.563-.88C17.632 3.6 17.993 2.607 17.994.998zm5 0c-.002 2.062-.471 3.344-1.765 5.424l-.753 1.183C21.61 8.998 21.198 9.908 21.058 11h-2.015c.15-1.613.708-2.836 1.91-4.728l.563-.88C22.632 3.6 22.993 2.607 22.994.998z"></path></svg></div></div></div><div class="_19xnuo97" style="width: 334.663px; margin-left: 0px; margin-right: 0px; position: relative !important; padding-left: 8px !important; padding-right: 8px !important;"><div class="iikjzje i10xc1ab dir dir-ltr" style="display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: end; justify-content: flex-end; flex-direction: row-reverse; max-width: 83.3333%; padding-bottom: 16px;"><div> An ninh trật tự tốt</div><div class="i4wvyiy i1fpqhzs dir dir-ltr" style="min-width: 24px; margin-left: 0px; margin-right: 16px;"><svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="m11.6667 0-.00095 1.666h8.667l.00055-1.666h2l-.00055 1.666 6.00065.00063c1.0543745 0 1.9181663.81587127 1.9945143 1.85073677l.0054857.14926323v15.91907c0 .4715696-.1664445.9258658-.4669028 1.2844692l-.1188904.1298308-8.7476886 8.7476953c-.3334303.3332526-.7723097.5367561-1.2381975.5778649l-.1758207.0077398h-12.91915c-2.68874373 0-4.88181754-2.1223321-4.99538046-4.7831124l-.00461954-.2168876v-21.66668c0-1.05436021.81587582-1.91815587 1.85073739-1.99450431l.14926261-.00548569 5.999-.00063.00095-1.666zm16.66605 11.666h-24.666v13.6673c0 1.5976581 1.24893332 2.9036593 2.82372864 2.9949072l.17627136.0050928 10.999-.0003.00095-5.6664c0-2.6887355 2.122362-4.8818171 4.7832071-4.9953804l.2168929-.0046196 5.66595-.0006zm-.081 8-5.58495.0006c-1.5977285 0-2.9037573 1.2489454-2.9950071 2.8237299l-.0050929.1762701-.00095 5.5864zm-18.586-16-5.999.00062v5.99938h24.666l.00065-5.99938-6.00065-.00062.00055 1.66733h-2l-.00055-1.66733h-8.667l.00095 1.66733h-2z"></path></svg></div></div></div><div class="_19xnuo97" style="width: 334.663px; margin-left: 0px; margin-right: 0px; position: relative !important; padding-left: 8px !important; padding-right: 8px !important;"><div class="iikjzje i10xc1ab dir dir-ltr" style="display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: end; justify-content: flex-end; flex-direction: row-reverse; max-width: 83.3333%; padding-bottom: 16px;"></div></div></div></h2></div></div>

						<hr>
<%--						<div class="rating">--%>
							<div class="dtieude">
								<i style="color: #ee731f" class="fa fa-star"></i> ${rating } . ${reviewList.size() } đánh giá
							</div>
<%--							<div>--%>
<%--								<c:forEach var="item" items="${reviewList }">--%>
<%--									<div class="item-review" style="margin-bottom: 30px">--%>
<%--										<div class="d-avt">--%>
<%--											<div class="avt">--%>
<%--												<a href="/detail-account/${item.account.accountId}">--%>
<%--													<img alt="" width="50px" height="50px" src="<c:url value="/asset/images/${item.account.image }" />">--%>
<%--												</a>--%>
<%--											</div>--%>
<%--											<div class="right">--%>
<%--												<a href="/detail-account/${item.account.accountId}">--%>
<%--													<b>${item.account.name }</b>--%>
<%--												</a>--%>
<%--												<p>--%>
<%--														${item.dateSubmit.split(" ")[1].substring(0,5) } &nbsp;${item.dateSubmit.split(" ")[0].split("-")[2] }-${item.dateSubmit.split(" ")[0].split("-")[1] }-${item.dateSubmit.split(" ")[0].split("-")[0] }--%>
<%--												</p>--%>
<%--												<c:forEach begin="1" end="${item.rate }" varStatus="loop">--%>
<%--													<i class="fas fa-star item-star"></i>--%>
<%--												</c:forEach>--%>
<%--											</div>--%>
<%--										</div>--%>
<%--										<div>--%>
<%--											<p>${item.content }</p>--%>
<%--										</div>--%>
<%--										<div id="reaction-${item.reviewId }" class="reaction">--%>
<%--												<c:forEach var="itemReaction" items="${reactionList }">--%>
<%--													<c:if test="${itemReaction.review.reviewId == item.reviewId }">--%>
<%--														<div class="reac">--%>
<%--															<div class="avt left">--%>
<%--																<a href="/detail-account/${itemReaction.account.accountId}">--%>
<%--																	<img alt="" width="50px" height="50px" src="<c:url value="/asset/images/${itemReaction.account.image }" />">--%>
<%--																</a>--%>
<%--															</div>--%>
<%--															<div >--%>
<%--																<a href="/detail-account/${itemReaction.account.accountId}">--%>
<%--																	<b>${itemReaction.account.name }</b>--%>
<%--																</a>--%>
<%--																<p>--%>
<%--																		${itemReaction.dateSubmit.split(" ")[1].substring(0,5) } &nbsp;${itemReaction.dateSubmit.split(" ")[0].split("-")[2] }-${itemReaction.dateSubmit.split(" ")[0].split("-")[1] }-${itemReaction.dateSubmit.split(" ")[0].split("-")[0] }--%>
<%--																</p>--%>
<%--															</div>--%>
<%--															<br>--%>
<%--															<p class="">${itemReaction.details }</p>--%>
<%--														</div>--%>
<%--													</c:if>--%>
<%--												</c:forEach>--%>
<%--											</div>--%>
<%--									</div>--%>
<%--								</c:forEach>--%>
<%--							</div>--%>
<%--						</div>--%>

<%--					</div>--%>

					
				</div>
					<div style="height: fit-content!important;" class="dright d-table">

						<div class="info" style="font-weight:bold">
							<p class="u1">Thông tin về chủ trọ</p>

							<div >
								<a href="/detail-account/${detailPlace.account.accountId}">
									<img src="/asset/images/${detailPlace.account.image}" style="border-radius: 50%; width: 100px !important;height: 100px; "/>
								</a>
							</div>

							<a href="/detail-account/${detailPlace.account.accountId}"><b>${detailPlace.account.name }</b></a>
							<p>Số điện thoại:<a style="color: #0d6efd" href="tel:${detailPlace.account.phone }"> ${detailPlace.account.phone }</a></p>
							<p>Địa chỉ: ${detailPlace.account.address }</p>


						</div>
<%--						<div class="login-form">--%>
<%--							<form action="" method="post" class="has-error">--%>
<%--								<h4 style="padding-top: 0">$ ${detailPlace.price } / đêm</h4>--%>
<%--								<br>--%>
<%--								<p>Nhận phòng</p>--%>
<%--								<input type="date" placeholder="dd-mm-yyyy" id="startDay" name="startDay" value="${detailPlace.startDay }"  min="${detailPlace.startDay }" max="${detailPlace.endDay }" />--%>
<%--								<p>Trả phòng</p>--%>
<%--								<input type="date" placeholder="dd-mm-yyyy" id="endDay" name="endDay" value="${detailPlace.endDay }" min="${detailPlace.startDay }" max="${detailPlace.endDay }" />--%>
<%--								<p>Số người</p>--%>
<%--								<input type="number" placeholder="0" id="people" name="people" value="1" max="${detailPlace.detailPlace.phongkhach }" />--%>
<%--								<input id="placeId" value="${detailPlace.placeId }" style="display:none" />--%>
<%--								<br>--%>
<%--								<p style="color:darkred" id="error"></p>--%>
<%--								<c:choose>--%>
<%--									<c:when test="${accLogin.accountId == detailPlace.account.accountId || accLogin.name == null  || detailPlace.isEmpty == false }">--%>
<%--										<button disabled="disabled" type="submit" class="btn btn-default btnlogin d-dat" >Đặt phòng</button>--%>
<%--									</c:when>--%>

<%--									<c:otherwise>--%>
<%--										<button data-toggle="modal" data-target="#modalThem" data-id="${detailPlace.placeId }" type="submit" class="btn btn-default btnlogin d-dat" >Đặt phòng</button>--%>
<%--									</c:otherwise>--%>
<%--								</c:choose>--%>
<%--							</form>--%>
<%--							<br>--%>
<%--							<!-- <h4>Tổng tiền:</h4> -->--%>
<%--						</div>--%>
					</div>
			</div>
		</div>
		<br>

		<div class="d2" >
		<p class="u1">Địa chỉ phòng: <a style="font-style: italic;font-weight: lighter">${detailPlace.address }</a> </p>
			<input value="Huế" id="start" hidden>

		</div>

	<div id="container">
		<div id="map"></div>
		<div id="sidebar" style="border: 1px solid #909090"></div>
	</div>


	</div>
	
	
	 <!-- DELETE MODAL -->
	 
<%--	<div class="modal" id="modalThem" tabindex="-1" role="dialog">--%>
<%--	  <div class="modal-dialog" role="document">--%>
<%--	    <div class="modal-content">--%>
<%--	      <div class="modal-header">--%>
<%--	        <p class="modal-title">Xác nhận yêu cầu đặt phòng</p>--%>
<%--	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--	          <span aria-hidden="true">&times;</span>--%>
<%--	        </button>--%>
<%--	      </div>--%>
<%--	      <div class="modal-body">--%>
<%--	        <p>Bạn có chắc chắn yêu cầu đặt nhà / phòng này?</p>--%>
<%--	      </div>--%>
<%--	      <div class="modal-footer" style="border-top: none !important">--%>
<%--	        <a class="btn" id="confirm" href="">Đặt phòng</a>--%>
<%--	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>--%>
<%--	      </div>--%>
<%--	    </div>--%>
<%--	  </div>--%>
<%--	</div>--%>

	<%@ include file="/WEB-INF/views/layouts/keyMapAPI.jsp" %>
	<script src="/asset/map/detailPlace.js" ></script>
	
<%--	<script>--%>

<%--		const acc = '<c:out value="${detailPlace.account.accountId}"/>';--%>
<%--		const accLogin = '<c:out value="${accLogin.accountId}"/>';--%>

<%--		if(accLogin == "") {--%>
<%--			document.getElementById("error").innerHTML = "Vui lòng đăng nhập để thực hiện đặt phòng.";--%>
<%--			console.log("ok")--%>
<%--		}else if(acc == accLogin) {--%>
<%--			document.getElementById("error").innerHTML = "Bạn là chủ nhà.";--%>
<%--		}--%>


<%--		const isEmpty = '<c:out value="${detailPlace.isEmpty}"/>';--%>
<%--		if(isEmpty == "false") {--%>
<%--			console.log(isEmpty)--%>
<%--			document.getElementById("error").innerHTML = "Đã hết phòng còn trống.";--%>
<%--		}--%>

<%--		jQuery('#confirm').click(function(evt) {--%>
<%--			  evt.preventDefault();--%>

<%--			  var placeId = $("#placeId").val();--%>
<%--			  var startDay = $("#startDay").val();--%>
<%--			  var endDay = $("#endDay").val();--%>
<%--			  var people = $("#people").val();--%>
<%--			  --%>
<%--			  --%>
<%--			  $.ajax({--%>
<%--					type : "GET",--%>
<%--					contentType : "application/json",--%>
<%--					url : "/AddBookRoom",--%>
<%--					data : {--%>
<%--						placeId : placeId,--%>
<%--						startDay : startDay,--%>
<%--						endDay : endDay,--%>
<%--						people : people,--%>
<%--						--%>
<%--					},--%>
<%--					timeout : 2000,--%>
<%--					success : function(data) {		--%>
<%--						console.log("SUCCESS: ");--%>
<%--						window.location.href = "/bookroom";--%>
<%--					},--%>
<%--					error : function(e) {--%>
<%--						console.log("ERROR: ", e);--%>
<%--					}--%>
<%--				});--%>
<%--			  --%>
<%--			});--%>
<%--		--%>
<%--		</script>--%>
		
	<script>

		jQuery('.lovedetail a').click(function(evt) {
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


		// function getDefaultDate(){
	//
	// 	var startDay = document.getElementById("endDay").value;
	//     var day = ("0" + startDay.getDate()).slice(-2);
	//     var month = ("0" + (startDay.getMonth() + 1)).slice(-2);
	//     var today = startDay.getFullYear()+"-"+(month)+"-"+(day) ;
	//
	//     return today;
	// }
	//
	// $(document).ready(function(){
	//     $("#endDay").val( getDefaultDate());
	// });
	</script>
	<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>
	</body>
</html>