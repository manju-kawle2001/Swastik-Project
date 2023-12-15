<%-- 
    Document   : BillPayment
    Created on : 03-Dec-2023, 11:04:11 am
    Author     : Sohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            html,
            body {
                height: 100%;
            }
            /* 
        body{
                display: -ms-flexbox;
                display: -webkit-box;
                display: flex;
                -ms-flex-align: center;
                -ms-flex-pack: center;
                -webkit-box-align: center;
                align-items: center;
                -webkit-box-pack: center;
                justify-content: center;
                background-color: #f5f5f5;
        } */


            /* form {
              padding-top: 10px;
              font-size: 14px;
              margin-top: 30px;
            } */

            .card-title {
                font-weight: 300;
            }

            .btn {
                font-size: 14px;
                margin-top: 20px;
            }

            .login-form {
                width: 320px;
                margin: 20px;
            }

            .sign-up {
                text-align: center;
                padding: 20px 0 0;
            }

            span {
                font-size: 14px;
            }
        </style>
    </head>

    <body>


        <%@include file="navbar2.jsp" %>
        <!-- ======= Header ======= -->

        <!-- End Header -->

        <!-- ======= Sidebar ======= -->

        <!-- End Sidebar-->
        <main id="main" class="main">
            <div class="pagetitle">
                <h1>Dashboard</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section dashboard">
                <h4 class="text-center">Bill & Payment</h4>
                <div class="d-flex justify-content-center"> 
                    <div class="card login-form">
                        <div class="card-body">
                            <h3 class="card-title text-center">Bill & Payment</h3>

                            <div class="card-text">
                                <form>
                                    <div class="form-group">
                                        <input
                                            type="email"
                                            class="form-control form-control-sm"
                                            placeholder="Enter Customer Id"
                                            />
                                    </div>
                                    <div class="form-group my-4">
                                        <label for="form_need">Select operator</label>
                                        <select
                                            id="form_need"
                                            name="need"
                                            class="form-control form-control-sm"
                                            required="required"
                                            data-error="Please specify your need."
                                            >
                                            <option value="" selected disabled>--Select--</option>
                                            <option>Jio</option>
                                            <option>Airtel</option>
                                            <option>Vodafone Idea</option>
                                            <option>Other</option>
                                        </select>
                                    </div>
                                    <div class="form-group my-4">
                                        <label for="form_need">Select Circle</label>
                                        <select
                                            id="form_need"
                                            name="need"
                                            class="form-control form-control-sm"
                                            required="required"
                                            data-error="Please specify your need."
                                            >
                                            <option value="" selected disabled>--Select--</option>
                                            <option>Madhyapradesh</option>
                                            <option>Maharastra</option>
                                            <option>Gujrat</option>
                                            <option>Other</option>
                                        </select>
                                    </div>
                                    <div class="form-group my-4">
                                        <input
                                            type="email"
                                            class="form-control form-control-sm"
                                            placeholder="Enter Ammount"
                                            />
                                    </div>
                                    <div class="form-group my-4">
                                        <input
                                            type="email"
                                            class="form-control form-control-sm"
                                            placeholder="Enter Pin"
                                            />
                                    </div>

                                    <div class="form-group my-4">
                                        <input
                                            type="email"
                                            class="form-control form-control-sm"
                                            placeholder="Confirm Pin"
                                            />
                                    </div>

                                    <button type="submit" class="btn btn-primary btn-block">
                                        Submit
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- End #main -->

        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>SwastikBank</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="index.html">Tech Nerds</a>
            </div>
        </footer>
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
