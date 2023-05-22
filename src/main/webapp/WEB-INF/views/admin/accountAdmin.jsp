<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>
        Danh sách Admin
    </title>
    <%@ include file="/WEB-INF/views/admin/layout/head.jsp" %>
</head>

<body class="light-edition">
<div class="wrapper ">
    <%@ include file="/WEB-INF/views/admin/layout/sidebar.jsp" %>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top" style="background-color: darkslategrey !important;color:#fff">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <a class="navbar-brand" href="<c:url value="/admin/manager-account" />">DANH SÁCH ADMIN</a>
                </div>

                <div class="collapse navbar-collapse justify-content-end">



                    <%@ include file="/WEB-INF/views/admin/layout/nav-link.jsp" %>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->

        <div class="content">

            <%@ include file="/WEB-INF/views/admin/layout/message.jsp" %>



            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <button style="background-color: #0c5460; color: white; margin-left: 20px" type="button" class="btn " data-toggle="modal" data-target="#modalThem">
                            <i class="material-icons large">add_box</i> Thêm tài khoản
                        </button>

                            <div class="bg-white mt-3 card-body">
                                <div class="table-responsive">
                                    <c:choose>
                                        <c:when test="${accountAdmins.size() > 0 }">
                                            <table style="border: #4C5B5C" class="table">
                                                <thead style="background-color: #0c5460; color: white" class=" text-black">
                                                <th> STT  </th>
                                                <th> Họ và tên </th>
                                                <th> Tên đăng nhập </th>
                                                <th>  Số điện thoại  </th>
                                                <th>  Email </th>
                                                <th>  Địa chỉ </th>

<%--                                                <th>  Chức năng  </th>--%>
                                                </thead>
                                                <tbody id="noidung" >
                                                <c:forEach var="item" items="${accountAdmins }" varStatus="loop">
                                                    <tr>
                                                        <td>
                                                                ${loop.index + 1 }
                                                        </td>
                                                        <td>
                                                            <a style="color: #0c5460;font-weight:bold " href="/admin/detail-account/${item.accountId }">
                                                                    ${item.name }
                                                            </a>
                                                        </td>
                                                        <td>
                                                                ${item.username }
                                                        </td>
                                                        <td>
                                                                ${item.phone }
                                                        </td>
                                                        <td>
                                                                ${item.email }
                                                        </td>
                                                        <td>
                                                                ${item.address }
                                                        </td>

<%--                                                        <td class="chucnang">--%>
<%--                                                            <a href="<c:url value="/admin/detail-account/${item.accountId }" />"><i class="material-icons detail">event_note</i></a>--%>
<%--                                                            <a data-f="${item.accountId }" id="editButton"><i class="material-icons edit">mode_edit</i></a>--%>
<%--                                                            <a href="<c:url value="/admin/manager-account/delete/${item.accountId }" />" id="deleteButton"><i class="material-icons delete">delete</i></a>--%>
<%--                                                        </td>--%>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </c:when>
                                        <c:otherwise>
                                            Không tìm thấy kết quả nào
                                        </c:otherwise>
                                    </c:choose>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal ADD-->
<div class="modal fade" id="modalThem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Thêm Tài khoản</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action ="<c:url value="/admin/account-admin/add" />" method="post">

                    <div class="">
                        <label  class="">Tên khách hàng</label>
                        <input type="text" class="form-control-file "  name="name" >
                    </div>
                    <div class="">
                        <label  class="">Số điện thoại</label>
                        <input type="text" class="form-control-file "  name="phone" >
                    </div>
                    <div class="">
                        <label  class="">Địa chỉ</label>
                        <input type="text" class="form-control-file "  name="address" >
                    </div>
                    <div class="">
                        <label  class="">Email</label>
                        <input type="text" class="form-control-file "  name="email" >
                    </div>
                    <div class="">
                        <label  class="">Tên đăng nhập</label>
                        <input type="text" class="form-control-file "  name="username">
                    </div>
                    <div class="">
                        <label  class="">Mật khẩu</label>
                        <input type="text" class="form-control-file "  name="password">
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                        <button type="submit" class="btn btn-primary">Thêm</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@ include file="/WEB-INF/views/admin/layout/footer.jsp" %>

</html>