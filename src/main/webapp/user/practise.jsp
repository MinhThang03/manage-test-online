<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/20/2021
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Project Dashboard | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
    <meta content="Coderthemes" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- App css -->
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css">
    <link href="../assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
    <link href="../assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style">
    <link rel="stylesheet" href="../assets/css/practise.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="../assets/js/vendor/jquery.twbsPagination.js"></script>

</head>

<body class="loading"
      data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
<!-- Begin page -->
<div class="wrapper">
    <!-- ========== Left Sidebar Start ========== -->
    <div class="leftside-menu">

        <!-- LOGO -->
        <a href="<c:out value="/"/> " class="logo text-center logo-light">
                    <span class="logo-lg">
                        <img src="../assets/images/logo.png" alt="" height="16">
                    </span>
            <span class="logo-sm">
                        <img src="../assets/images/logo_sm.png" alt="" height="16">
                    </span>
        </a>

        <!-- LOGO -->

        <div class="h-100" id="leftside-menu-container" data-simplebar="">

            <!--- Sidemenu -->
            <ul class="side-nav">


                <li class="side-nav-item">
                    <a href="<c:out value="MyCourse.jsp"/> " class="side-nav-link">
                        <i class="uil-book-reader"></i>
                        <span> My Courses </span>
                    </a>
                </li>

                <li class="side-nav-item">
                    <a href="<c:out value="AddCourse.jsp"/> " class="side-nav-link">
                        <i class=" uil-parcel"></i>
                        <span>  Courses </span>
                    </a>
                </li>


                <li class="side-nav-item">
                    <a href="<c:out value="profile-student.jsp"/> " class="side-nav-link">
                        <i class=" uil-user"></i>
                        <span> My account</span>
                    </a>
                </li>

            </ul>

            <div class="clearfix"></div>

        </div>
        <!-- Sidebar -left -->

    </div>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">

            <!-- Topbar Start -->
            <div class="navbar-custom">
                <ul class="list-unstyled topbar-menu float-end mb-0">

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#"
                           role="button" aria-haspopup="false" aria-expanded="false">
                                    <span class="account-user-avatar">
                                        <img src="../assets/images/users/avatar-1.jpg" alt="user-image"
                                             class="rounded-circle">
                                    </span>
                            <span>
                                        <span class="account-user-name">Phan Thanh Tài</span>
                                        <span class="account-position">Student</span>
                                    </span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
                            <!-- item-->
                            <div class=" dropdown-header noti-title">
                                <h6 class="text-overflow m-0">Welcome !</h6>
                            </div>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-account-circle me-1"></i>
                                <span>My Account</span>
                            </a>


                            <!-- item-->
                            <a href="<c:url value="../index.jsp"/>" class="dropdown-item notify-item">
                                <i class="mdi mdi-logout me-1"></i>
                                <span>Logout</span>
                            </a>
                        </div>
                    </li>

                </ul>

                <button class="button-menu-mobile open-left">
                    <i class="mdi mdi-menu"></i>
                </button>
                <div class="app-search dropdown d-none d-lg-block">
                    <form>
                        <div class="input-group">
                            <input type="text" class="form-control dropdown-toggle" placeholder="Search..."
                                   id="top-search">
                            <span class="mdi mdi-magnify search-icon"></span>
                            <button class="input-group-text btn-primary" type="submit">Search</button>
                        </div>
                    </form>


                </div>
            </div>
            <!-- end Topbar -->

            <!-- Start Content-->
            <div class="container-fluid">
                <form action="<c:url value='/user-view-question'/>" id="formSubmit" method="post">
                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item "><a href="javascript: void(0);">My courses</a></li>
                                        <li class="breadcrumb-item "><a href="javascript: void(0);">Exam</a></li>
                                        <li class="breadcrumb-item  active">Practice</li>
                                    </ol>
                                </div>
                                <h4 class="page-title">Practice</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->


                    <div class="row">
                        <c:forEach var="item" items="${question.listResult}">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4>Câu ${item.getQuestionNo()}</h4><!--dat so thu tu cau o day-->
                                        <p class="fw-bold">${item.getQuestionName()}</p>
                                        <div class="form-check mb-2">
                                            <input type="radio" name="${item.getId()}" class="form-check-input" value="A">
                                            <label class="form-check-label">${item.getResultA()}</label><!--Dap an cau a-->
                                        </div>
                                        <div class="form-check mb-2">
                                            <input type="radio" name="${item.getId()}" class="form-check-input" value="B">
                                            <label class="form-check-label">${item.getResultB()}</label><!--Dap an cau b-->
                                        </div>
                                        <div class="form-check mb-2">
                                            <input type="radio" name="${item.getId()}" class="form-check-input" value="C">
                                            <label class="form-check-label">${item.getResultC()}</label><!--Dap an cau c-->
                                        </div>
                                        <div class="form-check mb-2">
                                            <input type="radio" name="${item.getId()}" class="form-check-input" value="D">
                                            <label class="form-check-label">${item.getResultD()}</label><!--Dap an cau d-->
                                        </div>
                                    </div> <!-- end card body-->
                                </div> <!-- end card -->
                            </div>
                            <!-- end col-->
                        </c:forEach>
                    </div>


                    <!-- Colors -->

                    <!-- <div class="form-check form-radio-success mb-2">
                        <input type="radio" id="customRadiocolor2" name="customRadiocolor2" class="form-check-input" checked>
                        <label class="form-check-label" for="customRadiocolor2">Success Radio</label>
                    </div>

                    <div class="form-check form-radio-danger mb-2">
                        <input type="radio" id="customRadiocolor5" name="customRadiocolor5" class="form-check-input" checked>
                        <label class="form-check-label" for="customRadiocolor5">Danger Radio</label>
                    </div> -->

                    <div class="row ">
                        <div class="col-12 ">
                            <!-- <nav aria-label="Page navigation example" class="table-responsive mb-2"></nav> -->
                            <ul class="pagination  justify-content-center flex-wrap" id="pagination"></ul>
                            <input type="hidden" value="" id="page" name="page"/>
                            <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                            <input type="hidden" value="" id="sortName" name="sortName"/>
                            <input type="hidden" value="" id="sortBy" name="sortBy"/>
                            <input type="hidden" value="" id="type" name="type"/>
                            <input type="hidden" value="${question.getExamID()}" id="examID" name="examID"/>
                        </div>
                    </div>
                </form>


            </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        © FIT - Ho Chi Minh University of Technology and Education
                    </div>
                    <div class="col-md-6">
                        <div class="text-md-end footer-links d-none d-md-block">
                            <a href="javascript: void(0);">Group 1</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->


</div>
<!-- END wrapper -->


<!-- Right Sidebar -->


<div class="rightbar-overlay " id="course">
    <div class="row ">
        <div class="course-upload ">
            <h4>Do you want submit the exercise?</h4>
            <div class="button-wrap">
                <button type="btn button" id="cancel-course" class="btn btn-danger"
                        style="margin-right: 8px;min-width: 120px">Cancel
                </button>
                <button class="btn btn-success" type="submit" style="min-width: 120px;">Submit</button>
            </div>
        </div>
    </div>
</div>
<!-- /End-bar -->


<script src="../assets/js/active.js"></script>
<%--<script>--%>
<%--    handle('.submit', '#course');--%>
<%--    Cancel('#cancel-course', '#course', '#image-grid')--%>
<%--</script>--%>

<!-- bundle -->
<%--<script src="../assets/js/vendor.min.js"></script>--%>
<script src="../assets/js/app.min.js"></script>

<!-- third party js -->
<script src="../assets/js/vendor/Chart.bundle.min.js"></script>
<!-- third party js ends -->

<!-- demo app -->
<script src="../assets/js/pages/demo.dashboard-projects.js"></script>
<!-- end demo js-->

<script type="text/javascript">
    var totalPages = ${question.totalPage};
    var currentPage = ${question.page};
    var limit = 5;
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 10,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#sortName').val('questionNo');
                    $('#sortBy').val('asc');
                    $('#type').val('list');
                    $('#formSubmit').submit();
                }
            }
        });
    });
</script>


</body>
</html>
