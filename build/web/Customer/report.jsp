<%-- 
    Document   : report
    Created on : Nov 30, 2023, 4:26:37 PM
    Author     : dell
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
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet" />
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet" />
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet" />

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet" />


        <!-- link css -->
        <style>
            body {
                font-family: 'Lato', sans-serif;
            }

            h1 {
                margin-top: 0px;
                margin-bottom: 5px;
            }

            label {
                color: #333;
            }

            .btn-send {
                font-weight: 300;
                text-transform: uppercase;
                letter-spacing: 0.2em;
                width: 100%;
                margin-left: 3px;
            }
            .btn {
                background-color: #9F1945;
            }
            .btn:hover {
                background-color: #9F1945;
            }
            .help-block.with-errors {
                color: #ff5050;
                margin-top: 5px;

            }

            .card{
                margin-left: 10px;
                margin-right: 10px;
            }

        </style>

    </head>

    <body>
        <!-- ======= Header ======= -->        
        <%@include file="navbar2.jsp" %>
        <!-- End Sidebar-->    
        <main id="main" class="main">
            <div class="pagetitle">
                <h1>General Tables</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Tables</li>
                        <li class="breadcrumb-item active">General</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section">
                <div class="container-fulid">
                    <div class=" text-center mt-2 ">

                        <h2 >Report Of Any Problem</h2>


                    </div>


                    <div class="row ">
                        <div class="col-lg-7 mx-auto">
                            <div class="card mt-2 mx-auto p-4 bg-light">
                                <div class="card-body bg-light">

                                    <div class = "container-fulid">
                                        <form id="contact-form" role="form" action="../Reportservlet">
                                            <div class="controls">

                                                <div class="row my-3">
                                                    <%@include file="../Components/alert_message.jsp" %>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="form_need">Please specify your need *</label>
                                                            <select id="form_need"  class="form-control" required="required" data-error="Please specify your need." name="reporttype">
                                                                <option value="" selected disabled>--Select Your Issue--</option>
                                                                <option >Amount transferred to wrong account</option>
                                                                <option >The amount has been deducted from our 
                                                                    account 
                                                                <option >Haven't received cashback yet</option>
                                                                <option >Other</option>
                                                            </select>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row my-3">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label for="form_message">Complaint Message</label>
                                                            <textarea id="form_message" class="form-control" placeholder="Write your message here." rows="4" required="required" data-error="Please, leave us a message."  name="reportmessage"></textarea
                                                            >
                                                        </div>

                                                    </div>


                                                    <div class="col-md-12 my-3">

                                                        <button type="submit" class="btn btn-danger btn-send  pt-2 btn-block">Submit</button>

                                                    </div>

                                                </div>


                                            </div>
                                        </form>
                                    </div>
                                </div>


                            </div>
                            <!-- /.8 -->

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