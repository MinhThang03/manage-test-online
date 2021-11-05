<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%--<c:url value = ""/>--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Profile Student</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
    <meta content="Coderthemes" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="<c:url value = "/assets/images/favicon.ico"/>">
    <!-- third party css -->
    <link href="<c:url value = "/assets/css/vendor/jquery-jvectormap-1.2.2.css"/>" rel="stylesheet" type="text/css">
    <!-- third party css end -->

    <!-- App css -->
    <link href="<c:url value = "/assets/css/icons.min.css"/>" rel="stylesheet" type="text/css">
    <link href="<c:url value = "/assets/css/app.min.css"/>" rel="stylesheet" type="text/css" id="light-style">
    <link href="<c:url value = "/assets/css/app-dark.min.css"/>" rel="stylesheet" type="text/css" id="dark-style">
    <link href="<c:url value = "/assets/css/profile.css"/>" rel="stylesheet" type="text/css">
</head>
<body class="loading" data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
<!-- Begin page -->
<div class="wrapper">
    <!-- ========== Left Sidebar Start ========== -->
    <div class="leftside-menu">

        <!-- LOGO -->
        <a href="<c:url value="../index.jsp"/>" class="logo text-center logo-light">
                    <span class="logo-lg">
                        <img src="<c:url value = "../assets/images/logo.png"/>" alt="" height="16">
                    </span>
            <span class="logo-sm">
                        <img src="<c:url value = "../assets/images/logo_sm.png"/>" alt="" height="16">
                    </span>
        </a>

        <!-- LOGO -->
        <a href="<c:url value="../index.jsp"/>" class="logo text-center logo-dark">
                    <span class="logo-lg">

                        <img src="<c:url value = "../assets/images/logo-dark.png"/>" alt="" height="16">
                    </span>
            <span class="logo-sm">
                        <img src="<c:url value = "../assets/images/logo_sm_dark.png"/>" alt="" height="16">
                    </span>
        </a>

        <div class="h-100" id="leftside-menu-container" data-simplebar="">

            <!--- Sidemenu -->
            <ul class="side-nav">

                <li class="side-nav-item menuitem-active">
                    <a href="<c:url value = "./stats_admin.jsp"/>" class="side-nav-link">
                        <%--                <a href="<c:url value = "apps-calendar.jsp"/>" class="side-nav-link">--%>
                        <i class="uil-graph-bar"></i>
                        <span> Stats </span>
                    </a>
                </li>

                <li class="side-nav-item">
                    <a data-bs-toggle="collapse" href="#sidebarEcommerce" aria-expanded="false" aria-controls="sidebarEcommerce" class="side-nav-link">
                        <i class="uil-layer-group"></i>
                        <span> Manage </span>
                        <span class="menu-arrow"></span>
                    </a>
                    <div class="collapse" id="sidebarEcommerce">
                        <ul class="side-nav-second-level">
                            <li>

                                <a href="<c:url value = "ManagerFile.jsp"/>">Courses</a>
                            </li>
                            <li>
                                <a href="<c:url value = "#"/>">Users</a>
                                <%--                            <a href="<c:url value = "apps-ecommerce-products-details.jsp"/>">Users</a>--%>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="side-nav-item">
                    <a href="<c:url value = "profile-admin.jsp"/>" class="side-nav-link">
                        <i class="uil-user"></i>
                        <span> My account </span>
                    </a>
                </li>

            </ul>

            <!-- End Sidebar -->

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
                    <li class="dropdown notification-list d-lg-none">
                        <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <i class="dripicons-search noti-icon"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                            <form class="p-3">
                                <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                            </form>
                        </div>
                    </li>

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <span class="account-user-avatar">
                                        <img src="<c:url value = "../assets/images/users/avatar-1.jpg"/>" alt="user-image" class="rounded-circle">
                                    </span>
                            <span>
                                        <span class="account-user-name">Van Tinh</span>
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
                            <input type="text" class="form-control dropdown-toggle" placeholder="Search..." id="top-search">
                            <span class="mdi mdi-magnify search-icon"></span>
                            <button class="input-group-text btn-primary" type="submit">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- end Topbar -->
        <!-- ---------------------------------------------------------------------------------------------------------------------------- -->
        <!-- Start Content-->
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <h4 class="page-title">My profile</h4>
                    </div>
                </div>
            </div>

            <form class="needs-validation" novalidate>

                <div class="row">
                    <div class="col-lg-3">
                        <div class="card card-profile">
                            <div class="card-body card-body-img">
                                <!-- Avatar Extra Large -->
                                <div class="mt-3 text-center">
                                    <img id="frame" src="<c:url value = "../assets/images/users/avatar-5.jpg"/>" alt="shreyu" class="img-thumbnail avatar-xl rounded-circle"/>
                                    <h4>Shreyu N</h4>
                                    <div class="upload-image file btn btn-lg btn-primary btn-sm mt-1">
                                        Upload
                                        <input class = "input-image" accept=".jpg, .jpeg, .png"  type="file" onchange="preview()">
                                        <!-- <input id="fileUploader"  type="file"/> -->
                                    </div>
                                </div>
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                    <div class="col-lg-9">
                        <div class="card card-profile">
                            <div class="card-body">

                                <div class="mb-3">
                                    <label class="form-label"  for="validationCustom01">Name</label>
                                    <input type="text" class="form-control" placeholder="Họ và tên" value="Tính đẹp trai" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="mb-3 position-relative">
                                    <label class="form-label">Birthdate</label>
                                    <input type="text" class="form-control" value = "19/07/2001" data-provide="datepicker" data-date-container="#datepicker1">
                                </div>

                                <div class="mb-3">
                                    <label for="example-select" class="form-label">Gender</label>
                                    <select class="form-select" id="example-select">
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email</label>
                                    <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">

                                </div>

                                <div class="text-center row">
                                    <div class="row-cols-5">
                                        <small id="emailHelp" class="form-text text-muted">Chúng tôi cam kết sẽ không chia sẻ thông tin của bạn đến bất cứ ai.</small><br><br>
                                        <button class="btn btn-primary"  type="submit">Edit</button>
                                    </div>
                                </div>
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>

            </form>
            <div class="row">
                <div style="height: 24px;"></div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <h4 class="page-title">Change password</h4>
                    </div>
                </div>
            </div>

            <form class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card ">
                            <div class="card-body">
                                <div class="mb-3">
                                    <label class="form-label"  for="validationCustom01">Name</label>
                                    <input type="text" class="form-control" id="validationCustom01" placeholder="Họ và tên" value="Van Tinh" required>
                                    <div class="valid-feedback">
                                        Looks good!
                                    </div>
                                </div>
                                <div class="mb-3 position-relative" id="datepicker1">
                                    <label class="form-label">Password</label>
                                    <input type="password" class="form-control" value = "" name="">
                                </div>

                                <div class="mb-3">
                                    <label for="example-select" class="form-label">New passowrd</label>
                                    <input type="password" class="form-control" value = "" name="" >
                                </div>

                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Confirm password</label>
                                    <input type="password" class="form-control" id="exampleInputEmail1"  >

                                </div>

                                <div class="mb-3">
                                    <div class="form-check d-inline-block">
                                        <input type="checkbox" class="form-check-input" id="customCheck3">
                                        <label class="form-check-label" for="customCheck3">I agree change my password</label>
                                    </div>
                                </div>


                                <div class="text-center row">
                                    <div class="row-cols-8">
                                        <button class="btn btn-primary"  type="submit">Edit</button>
                                    </div>
                                </div>
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
            </form>

        </div>
        <!-- container -->
        <!-- -------------------------------------------------------------------------------------------------------------------------- -->
    </div>
    <!-- content -->

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

<!-- bundle -->
<script src="<c:url value = "../assets/js/vendor.min.js"/>"></script>
<script src="<c:url value = "../assets/js/app.min.js"/>"></script>

<!-- third party js -->
<script src="<c:url value = "../assets/js/vendor/apexcharts.min.js"/>"></script>
<script src="<c:url value = "../assets/js/vendor/jquery-jvectormap-1.2.2.min.js"/>"></script>
<script src="<c:url value = "../assets/js/vendor/jquery-jvectormap-world-mill-en.js"/>"></script>
<!-- third party js ends -->

<!-- demo app -->
<script src="<c:url value = "../assets/js/pages/demo.dashboard.js"/>"></script>
<!-- end demo js-->


<script>
    function preview() {
        frame.src=URL.createObjectURL(event.target.files[0]);
    }

</script>

</body>
</html>
