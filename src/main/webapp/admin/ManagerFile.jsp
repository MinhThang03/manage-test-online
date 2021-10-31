<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>File Manager</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
    <meta content="Coderthemes" name="author">
    <!-- App favicon -->
    <link rel="shortcut icon" href="../assets/images/favicon.ico">

    <!-- App css -->
    <link href="../assets/css/icons.min.css" rel="stylesheet" type="text/css">
    <link href="../assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
    <link href="../assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style">
    <style>
        .active{
            display: block;
        }
    </style>

</head>

<body class="loading" data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": false}'>
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

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <span class="account-user-avatar">
                                        <img src="../assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                                    </span>
                            <span>
                                        <span class="account-user-name">Phan Thanh Tài</span>
                                        <span class="account-position">Admin</span>
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
                            <input type="text" class="form-control dropdown-toggle" placeholder="Search..." id="top-search">
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
                            <h4 class="page-title">File Manager</h4>
                        </div>
                    </div>
                </div>
                <!-- end page title -->

                <div class="row">

                    <!-- Right Sidebar -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <!-- Left sidebar -->
                                <div class="page-aside-left">

                                    <div class="btn-group d-block mb-2">
                                        <button type="button" class="btn btn-success dropdown-toggle w-100" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="mdi mdi-plus"></i> Create New </button>
                                        <div class="dropdown-menu">
                                            <button  class="dropdown-item Add-course"><i class="uil uil-scenery me-1"></i>Add Course</button>
                                            <button  class="dropdown-item Add-file"><i class="mdi mdi-file-plus-outline me-1"></i>Add File Exam</button>
                                        </div>
                                    </div>

                                </div>
                                <!-- End Left sidebar -->

                                <div class="page-aside-right">

                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="app-search">
                                            <form>
                                                <div class="mb-2 position-relative">
                                                    <input type="text" class="form-control" placeholder="Search files...">
                                                    <span class="mdi mdi-magnify search-icon"></span>
                                                </div>
                                            </form>
                                        </div>
                                        <div>
                                            <nav aria-label="breadcrumb">
                                                <ol class="breadcrumb mb-0">
                                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                                    <li class="breadcrumb-item active" aria-current="page">Manager Courses</li>
                                                </ol>
                                            </nav>
                                        </div>
                                    </div>

                                    <div class="mt-3">
                                        <div class="page-title-box">
                                            <h4 class="page-title">Courses</h4>
                                        </div>
                                        <table class="table table-striped table-centered mb-0">
                                            <thead>
                                            <tr>
                                                <th>Course ID</th>
                                                <th>Course Name</th>
                                                <th>Description</th>
                                                <th>Update</th>
                                                <th>Admin Name</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img src="../assets/images/users/avatar-9.jpg" alt="image" class="img-fluid avatar-sm">
                                                            <span>Math</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>No Description</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img src="../assets/images/users/avatar-9.jpg" alt="image" class="img-fluid avatar-sm">
                                                            <span>Math</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>No Description</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img src="../assets/images/users/avatar-9.jpg" alt="image" class="img-fluid avatar-sm">
                                                            <span>Math</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>No Description</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img src="../assets/images/users/avatar-9.jpg" alt="image" class="img-fluid avatar-sm">
                                                            <span>Math</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>No Description</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="mt-3">
                                        <div class="page-title-box">
                                            <h4 class="page-title">File Exam</h4>
                                        </div>
                                        <table class="table table-striped table-centered mb-0">
                                            <thead>
                                            <tr>
                                                <th>File ID</th>
                                                <th>File Name</th>
                                                <th>Course Name</th>
                                                <th>Update</th>
                                                <th>Admin Name</th>
                                                <th>Action</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar-sm">
                                                                            <span class="avatar-title bg-light text-secondary rounded">
                                                                                <i class="mdi mdi-file-table-outline font-18"></i>
                                                                            </span>
                                                            </div>
                                                        </div>
                                                        <div class="col ps-0">
                                                            <a href="javascript:void(0);" class="text-muted fw-bold">Example.xlxs</a>
                                                            <p class="mb-0 font-13">3.6 MB</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Toán</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar-sm">
                                                                            <span class="avatar-title bg-light text-secondary rounded">
                                                                                <i class="mdi mdi-file-table-outline font-18"></i>
                                                                            </span>
                                                            </div>
                                                        </div>
                                                        <div class="col ps-0">
                                                            <a href="javascript:void(0);" class="text-muted fw-bold">Example.xlxs</a>
                                                            <p class="mb-0 font-13">3.6 MB</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Toán</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar-sm">
                                                                            <span class="avatar-title bg-light text-secondary rounded">
                                                                                <i class="mdi mdi-file-table-outline font-18"></i>
                                                                            </span>
                                                            </div>
                                                        </div>
                                                        <div class="col ps-0">
                                                            <a href="javascript:void(0);" class="text-muted fw-bold">Example.xlxs</a>
                                                            <p class="mb-0 font-13">3.6 MB</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Toán</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td class="table-user">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar-sm">
                                                                            <span class="avatar-title bg-light text-secondary rounded">
                                                                                <i class="mdi mdi-file-table-outline font-18"></i>
                                                                            </span>
                                                            </div>
                                                        </div>
                                                        <div class="col ps-0">
                                                            <a href="javascript:void(0);" class="text-muted fw-bold">Example.xlxs</a>
                                                            <p class="mb-0 font-13">3.6 MB</p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>Toán</td>
                                                <td>29-09-2021</td>
                                                <td>Admin1</td>
                                                <td class="table-action">
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-pencil"></i></a>
                                                    <a href="javascript: void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                </td>
                                            </tr>

                                            </tbody>
                                        </table>

                                    </div> <!-- end .mt-3-->


                                </div>
                                <!-- end inbox-rightbar-->
                            </div>
                            <!-- end card-body -->
                            <div class="clearfix"></div>
                        </div> <!-- end card-box -->

                    </div> <!-- end Col -->
                </div><!-- End row -->

            </div> <!-- container -->

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

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->


</div>
<!-- END wrapper -->


<!-- Right Sidebar -->
<div class="end-bar">

    <div class="rightbar-title">
        <a href="javascript:void(0);" class="end-bar-toggle float-end">
            <i class="dripicons-cross noti-icon"></i>
        </a>
        <h5 class="m-0">Settings</h5>
    </div>

    <div class="rightbar-content h-100" data-simplebar="">

        <div class="p-3">
            <div class="alert alert-warning" role="alert">
                <strong>Customize </strong> the overall color scheme, sidebar menu, etc.
            </div>

            <!-- Settings -->
            <h5 class="mt-3">Color Scheme</h5>
            <hr class="mt-1">

            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check" checked="">
                <label class="form-check-label" for="light-mode-check">Light Mode</label>
            </div>

            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check">
                <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
            </div>


            <!-- Width -->
            <h5 class="mt-4">Width</h5>
            <hr class="mt-1">
            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked="">
                <label class="form-check-label" for="fluid-check">Fluid</label>
            </div>

            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check">
                <label class="form-check-label" for="boxed-check">Boxed</label>
            </div>


            <!-- Left Sidebar-->
            <h5 class="mt-4">Left Sidebar</h5>
            <hr class="mt-1">
            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="theme" value="default" id="default-check">
                <label class="form-check-label" for="default-check">Default</label>
            </div>

            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check" checked="">
                <label class="form-check-label" for="light-check">Light</label>
            </div>

            <div class="form-check form-switch mb-3">
                <input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check">
                <label class="form-check-label" for="dark-check">Dark</label>
            </div>

            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check" checked="">
                <label class="form-check-label" for="fixed-check">Fixed</label>
            </div>

            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="compact" value="condensed" id="condensed-check">
                <label class="form-check-label" for="condensed-check">Condensed</label>
            </div>

            <div class="form-check form-switch mb-1">
                <input class="form-check-input" type="checkbox" name="compact" value="scrollable" id="scrollable-check">
                <label class="form-check-label" for="scrollable-check">Scrollable</label>
            </div>

            <div class="d-grid mt-4">
                <button class="btn btn-primary" id="resetBtn">Reset to Default</button>

                <a href="../../product/hyper-responsive-admin-dashboard-template/index.htm" class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
            </div>
        </div> <!-- end padding-->

    </div>
</div>

<div class="rightbar-overlay" id ="file" style=" background-color: rgba(0,0,0,0.5); opacity: 1;">
    <div class="file-upload col-md-6" style="transform: translate(50%, 120px);">
        <!-- File Upload -->
        <form action="/" method="post" class="dropzone" id="myAwesomeDropzone" data-plugin="dropzone" data-previews-container="#file-previews"
              data-upload-preview-template="#uploadPreviewTemplate">
            <div class="fallback">
                <input name="file" type="file" multiple />
            </div>

            <div class="dz-message needsclick">
                <i class="h1 text-muted dripicons-cloud-upload"></i>
                <h3>Drop files here or click to upload.</h3>
                <span class="text-muted font-13">(This is just a demo dropzone. Selected files are
                            <strong>not</strong> actually uploaded.)</span>
            </div>
            <div class="btn" style="right: 0; top: 160px;; position: absolute;">
                <select id = "courses" required style="border-radius: 5px; margin-top: 6px;">
                    <option value="" selected disabled hidden>Choose a Subject</option>
                    <option value="0">Math</option>
                    <option value="1">Physics</option>
                    <option value="2">Biology</option>
                    <option value="3">Chemistry</option>
                </select>
                <button type="button" id = "cancel-file" class="btn btn-danger" style="margin: 0 10px">Cancel</button>
                <button type="submit" class="btn btn-success">Upload</button>
            </div>
        </form>


        <!-- Preview -->
        <div data-bs-spy="scroll" class="scrollspy-example" style="height: 320px;">
            <div class="dropzone-previews mt-3" id="file-previews"></div>
        </div>

        <!-- file preview template -->
        <div class="d-none" id="uploadPreviewTemplate">
            <div class="card mt-1 mb-0 shadow-none border">
                <div class="p-2">
                    <div class="row align-items-center">
                        <div class="col-auto">
                            <img data-dz-thumbnail src="#" class="avatar-sm rounded bg-light" alt="">
                        </div>
                        <div class="col ps-0">
                            <a href="javascript:void(0);" class="text-muted fw-bold" data-dz-name></a>
                            <p class="mb-0" data-dz-size></p>
                        </div>
                        <div class="col-auto">
                            <!-- Button -->
                            <a href="" class="btn btn-link btn-lg text-muted" data-dz-remove>
                                <i class="dripicons-cross"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="rightbar-overlay " id ="course" style=" background-color: rgba(0,0,0,0.5); opacity: 1;">
    <div class="course-upload col-md-4" style="transform: translate(100%, 100px); color: #6c757d; background-color: #FFF;padding: 40px 0; border-radius: 4px;">
        <form class="needs-validation col-md-6" novalidate style="transform: translate(50%, 0);">
            <div class="mb-0">
                <label class="form-label" for="validationCustom01">Course Name</label>
                <input type="text" class="form-control" id="validationCustom01" placeholder="First name" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
            </div>
            <div class="mb-0">
                <label class="form-label" for="validationCustom02" style="margin-top: 16px;">Description</label>
                <input type="text" class="form-control" id="validationCustom02" placeholder="Last name" required>
                <div class="valid-feedback">
                    Looks good!
                </div>
            </div>
            <div style="margin-top: 16px; ">
                <label class="form-label" for="validationCustom02">Course Image: </label>
                <input type="file" id="file-uploader" accept=".jpg, .jpeg, .png" required>

                <div id="image-grid" style="margin: 16px 0;">
                </div>
            </div>
            <div class="mb-0">
                <button type="button" id = "cancel-course" class="btn btn-danger" style="margin-right: 8px;min-width: 120px">Cancel</button>
                <button class="btn btn-success" type="submit" style="min-width: 120px;">Submit form</button>
            </div>
        </form>
    </div>
</div>
<!-- /End-bar -->
<script src="../assets/js/TuViet/active.js"></script>
<script>
    handle('.Add-course', '#course');
    handle('.Add-file', '#file');
    Cancel('#cancel-course', '#course','#image-grid')
    Cancel('#cancel-file', '#file','#file-previews')
</script>
<script>
    const fileUploader = document.getElementById('file-uploader');
    const reader = new FileReader();
    const imageGrid = document.getElementById('image-grid');

    fileUploader.addEventListener('change', (event) => {
        const files = event.target.files;
        const file = files[0];

        const img = document.createElement('img');
        imageGrid.appendChild(img);
        img.src = URL.createObjectURL(file);
        img.alt = file.name;
        img.style.maxHeight = "100px"
    });

</script>

<!-- bundle -->
<script src="../assets/js/vendor.min.js"></script>
<script src="../assets/js/app.min.js"></script>
<!-- plugin js -->
<script src="../assets/js/vendor/dropzone.min.js"></script>
<!-- init js -->
<script src="../assets/js/ui/component.fileupload.js"></script>

</body>

</html>
