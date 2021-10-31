<%--
  Created by IntelliJ IDEA.
  User: teo20
  Date: 10/20/2021
  Time: 9:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>My Course</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
    <meta content="Coderthemes" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- third party css -->
    <link href="../assets/css/vendor/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css">
    <!-- third party css end -->

    <!-- App css -->
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css">
    <link href="../assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
    <link href="../assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style">
    <style>
        .car-hover:hover{
            transform: translateY(-4px) translateX(4px);
            box-shadow: rgba(0,0,0,0.1);
        }
    </style>


</head>

<body class="loading" data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": false}'>
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
                        <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <span class="account-user-avatar">
                                        <img src="../assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
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
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-account-edit me-1"></i>
                                <span>Settings</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-lifebuoy me-1"></i>
                                <span>Support</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="mdi mdi-lock-outline me-1"></i>
                                <span>Lock Screen</span>
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
                            <input type="text" class="form-control dropdown-toggle" placeholder="Search Courses..." id="top-search">
                            <span class="mdi mdi-magnify search-icon"></span>
                            <button class="input-group-text btn-primary" type="submit">Search</button>
                        </div>
                    </form>

                    <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">

                    </div>
                </div>
            </div>
            <!-- end Topbar -->

            <!-- Start Content-->
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <h4 class="page-title">My Courses</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">
                    <div class="col-sm-4">
                        <a href="<c:out value="AddCourse.jsp"/> " class="btn btn-danger btn-rounded mb-3"><i class="mdi mdi-plus"></i> Add Courses</a>
                    </div>
                    <div class="col-sm-8">
                        <div class="text-sm-end">
                            <div class="btn-group mb-3">
                                <button type="button" class="btn btn-primary">All</button>
                            </div>
                            <div class="btn-group mb-3 ms-1">
                                <button type="button" class="btn btn-light">Unfinished</button>
                                <button type="button" class="btn btn-light">Finished</button>
                            </div>
                        </div>
                    </div><!-- end col-->
                </div>
                <!-- end row-->

                <div class="row">
                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->

                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->

                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->

                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->

                    <div class="col-md-6 col-xxl-3">
                        <!-- project card -->
                        <div class="card d-block car-hover">
                            <!-- project-thumbnail -->
                            <a href="<c:out value="Exam.jsp"/> ">
                                <img class="card-img-top" src="../assets/images/projects/project-1.jpg" alt="project image cap">
                                <div class="card-img-overlay">
                                    <div class="badge bg-secondary text-light p-1">Unfinished</div>
                                </div>

                                <div class="card-body position-relative">
                                    <!-- project title-->
                                    <h4 class="mt-0">
                                        <div class="text-title">
                                            Course Name
                                            <span class="pe-2 text-nowrap" style="font-size: 12px">
                                                <i class="mdi mdi-format-list-bulleted-type"></i>
                                                <b>3</b> Exams
                                        </span>
                                        </div>
                                    </h4>


                                    <!-- project progress-->
                                    <p class="mb-2 fw-bold">Progress <span class="float-end">45%</span></p>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;">
                                        </div><!-- /.progress-bar -->
                                    </div><!-- /.progress -->
                                </div> <!-- end card-body-->
                            </a>
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
                <!-- end row-->


                <!-- end row--> <!-- container -->
            </div>
        </div> <!-- content -->

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <script>
                            document.write(new Date().getFullYear())
                        </script> © FIT - Ho Chi Minh University of Technology and Education
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


<div class="rightbar-overlay"></div>
<!-- /End-bar -->

<!-- bundle -->
<script src="../assets/js/vendor.min.js"></script>
<script src="../assets/js/app.min.js"></script>

<!-- third party js -->
<script src="../assets/js/vendor/apexcharts.min.js"></script>
<script src="../assets/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../assets/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
<!-- third party js ends -->

<!-- demo app -->
<script src="../assets/js/pages/demo.dashboard.js"></script>
<!-- end demo js-->
</div>
</body>
</html>
