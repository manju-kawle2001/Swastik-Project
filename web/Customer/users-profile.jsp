<%-- 
    Document   : users-profile
    Created on : Nov 27, 2023, 7:55:41 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.swastik.model.*"%>
<% 
    response.setHeader("Cache-Control", "No-Cache");
response.setHeader("Cache-Control", "No-Store");
   AccountOpenDao activeUser =  (AccountOpenDao)session.getAttribute("activeUser");
if(activeUser!=null){
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>User-Dashboard</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />

        <!-- Favicons -->
        <link href="assets/img/logo.png" rel="icon" />
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect" />
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet"
            />

        <!-- Vendor CSS Files -->
        <link
            href="assets/vendor/bootstrap/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <link
            href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
            rel="stylesheet"
            />

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <!-- fa fa link -->
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

        <!-- fafa icons -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />


        <!-- responsive link -->

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />

        <!-- css code -->
        <style>
            .box-custom {
                background-color: white;
                height: 150px;
                width: 120px;
                text-align: center;
                padding: 17px;
                margin-left: 15px;
            }
        </style>
    </head>
    <body>
        <!--hshh-->
        <%@include file="navbar2.jsp" %>
        <!-- End Sidebar-->


        <main id="main" class="main">
            <div class="pagetitle">
                <h1>Profile</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Users</li>
                        <li class="breadcrumb-item active">Profile</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section profile">
                <div class="row">
                    <div class="col-xl-4">
                        <div class="card">
                            <div
                                class="card-body profile-card pt-4 d-flex flex-column align-items-center"
                                >
                                <img
                                    src="assets/img/messages-3.jpg"
                                    alt="Profile"
                                    class="rounded-circle"
                                    />
                                <h2>
                                    <%=
                                        activeUser.getName()
                                    %>
                                    </h6>
                                </h2>

                            </div>
                        </div>
                    </div>

                    <div class="col-xl-8">
                        <div class="card">
                            <div class="card-body pt-3">
                                <!-- Bordered Tabs -->
                                <ul class="nav nav-tabs nav-tabs-bordered">

                                    <li class="nav-item">
                                        Change Password
                                    </li>
                                </ul>

                                <div class="tab-pane fade pt-3" id="profile-change-password">
                                    <!-- Change Password Form -->
                                    <form action="ChangePassWord" method="post">
                                        <div class="row mb-3">
                                            <label
                                                for="currentPassword"
                                                class="col-md-4 col-lg-3 col-form-label"
                                                >Current Password</label
                                            >
                                            <div class="col-md-8 col-lg-9">
                                                <input
                                                    name="password"
                                                    type="password"
                                                    class="form-control"
                                                    id="currentPassword"
                                                    />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label
                                                for="newPassword"
                                                class="col-md-4 col-lg-3 col-form-label"
                                                >New Password</label
                                            >
                                            <div class="col-md-8 col-lg-9">
                                                <input
                                                    name="newpassword"
                                                    type="password"
                                                    class="form-control"
                                                    id="newPassword"
                                                    />
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label
                                                for="renewPassword"
                                                class="col-md-4 col-lg-3 col-form-label"
                                                >Re-enter New Password</label
                                            >
                                            <div class="col-md-8 col-lg-9">
                                                <input
                                                    name="renewpassword"
                                                    type="password"
                                                    class="form-control"
                                                    id="renewPassword"
                                                    />
                                            </div>
                                        </div>

                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">
                                                Change Password
                                            </button>
                                        </div>
                                    </form>
                                    <!-- End Change Password Form -->
                                </div>
                            </div>
                            <!-- End Bordered Tabs -->
                        </div>
                    </div>
                </div>
                </div>
            </section>
        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <%@include file="footer.jsp" %>
        <!-- End Footer -->

        <a
            href="#"
            class="back-to-top d-flex align-items-center justify-content-center"
            ><i class="bi bi-arrow-up-short"></i
            ></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
    </body>
</html>
<%
    }else
{ 
response.sendRedirect("../index.jsp");
}
%>