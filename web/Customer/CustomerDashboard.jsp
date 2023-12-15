<%-- 
    Document   : CustomerDashboard
    Created on : Nov 24, 2023, 10:06:13 AM
    Author     : Sohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.swastik.model.AccountOpenDao"%>
<% 
    response.setHeader("Cache-Control", "No-Cache");
response.setHeader("Cache-Control", "No-Store");
 AccountOpenDao userDao =  (AccountOpenDao) session.getAttribute("activeUser");
if(userDao!=null){
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
        <!-- fa fac cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
            .icon-color
            {
                color: orange;
            }
            pagetitle {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .balance-button {
                margin-top: -30px;
                background-color: #4CAF50; /* Green background color */
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .balance-display {
                display: none;
                margin-left: 600px;
                margin-top: -28px;
            }
            .balance-container{
                /*/position-ri/*/
            }

            /*/==========================================================/*/
        </style>
    </head>
    <body>
        <!-- ======= Header ======= -->
        <%@include file="navbar2.jsp" %>
        <!-- End Sidebar-->

        <main id="main" class="main">
            <div class="pagetitle">
                <h1>Dashboard</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                        <strong><div id="balanceDisplay" class="balance-display ">Account Balance :  <%= userDao.getBalance()%></div> </strong>  
                        <button id="balanceButton" class="balance-button ms-auto" onclick="toggleBalance()">Show Balance</button>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section dashboard">
                <h3>Banking Services</h3>

                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between">
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-compact-disc fa-3x mt-3"></i>
                                    <p>Quick MR Plus</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-compact-disc fa-3x mt-3"></i>
                                    <p>ICIC MR Plus</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-credit-card fa-3x mt-3"></i>
                                    <p>Credit Card Icon</p>
                                </div>
                            </a>

                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-mobile fa-3x mt-3"></i>
                                    <p class="my-2">M ATM Card</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-mobile fa-3x mt-3"></i>
                                    <p class="my-2">mATM-MP63</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-mobile fa-3x mt-3"></i>
                                    <p class="my-2">mATM-MP63</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="section dashboard">
                <h3>Banking Services</h3>

                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between">
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-compact-disc fa-3x mt-3"></i>
                                    <p>Quick MR Plus</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-compact-disc fa-3x mt-3"></i>
                                    <p>ICIC MR Plus</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-credit-card fa-3x mt-3"></i>
                                    <p>Credit Card Icon</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-money-bill-wave fa-3x mt-3"></i>
                                    <p>Indo Nepal MR</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-mobile fa-3x mt-3"></i>
                                    <p class="my-2">M ATM Card</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-mobile fa-3x mt-3"></i>
                                    <p class="my-2">mATM-MP63</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- sgdg -->
            <section class="section dashboard my-5 ml-3">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between">

                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-university fa-3x mt-3"></i>
                                    <p>Banking Icon</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-wallet fa-3x mt-3"></i>
                                    <p>Credit card Bill</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-laptop fa-3x mt-3"></i>
                                    <p>DTH Recharge</p>
                                </div>
                            </a>
                            <a href="Recharge.jsp"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-tablet-alt fa-3x mt-3"></i>
                                    <p>Mobile Recharge</p>
                                </div>
                            </a>
                            <a href="BillPayment.jsp"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-sun fa-3x mt-3"></i>
                                    <p>Elecricity Payment</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-wallet fa-3x mt-3"></i>
                                    <p class="mx-4">Wallet Icon</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>


            <!-- sgdg -->

            <section class="section dashboard my-5 ml-3">
                <h3>Travel Services</h3>
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between">

                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-hotel fa-3x mt-3"></i>
                                    <p>Hotel Booking</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-train fa-3x mt-1"></i>
                                    <p >Rail-E-Ticket (OTP Based)</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-train  fa-3x mt-1"></i>
                                    <p>Ticket (Dongel Based)</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-bus fa-3x mt-3"></i>
                                    <p class="my-1">Bus Booking</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fa fa-plane fa-3x mt-3"></i>
                                    <p class="my-1">Air Ticketing</p>
                                </div>
                            </a>
                            <a href="#"  class="icon-color">
                                <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                    <i class="fas fa-ticket-alt fa-3x mt-3"></i>
                                    <p class="my-1">Movie Ticket</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <section class="section dashboard">
                <h3>Utility Services</h3>

                <section class="section dashboard my-5 ml-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="d-flex justify-content-between">

                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fa fa-inr fa-3x mt-3" aria-hidden="true"></i>
                                        <p class="my-3">Collections</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fa fa-wallet fa-3x mt-3"></i>
                                        <p class="my-1">Digital Wallet</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-laptop-house fa-3x mt-3"></i>
                                        <p class="my-1">DTH Recharge</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-tablet-alt fa-3x mt-3"></i>
                                        <p class="my-1">Mobile Recharge</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-sun fa-3x mt-3"></i>
                                        <p class="my-1">Elecricity Payment</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-car fa-3x mt-3"></i>
                                        <p class="my-1">FASTag Payments</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- sgdg -->
                <section class="section dashboard my-5 ml-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="d-flex justify-content-between">

                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-university fa-3x mt-3"></i>
                                        <p>Banking Icon</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-money-check-alt fa-3x mt-3"></i>
                                        <p>Check Icon</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-credit-card fa-3x mt-3"></i>
                                        <p>Credit Card Icon</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-money-bill-wave fa-3x mt-3"></i>
                                        <p>Money Icon</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-chart-pie fa-3x mt-3"></i>
                                        <p>Chart Icon</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-wallet fa-3x mt-3"></i>
                                        <p class="mx-4">Wallet Icon</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- E-governance -->
                <section class="section dashboard my-5 ml-3">
                    <h3>E-Governance Services</h3>
                    <div class="row">
                        <div class="col-12">
                            <div class="d-flex justify-content-between">

                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fa fa-cc-diners-club fa-3x mt-3" aria-hidden="true"></i>
                                        <p>Digi Gold</p>
                                    </div>
                                </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fa fa-id-card fa-3x mt-3" aria-hidden="true"></i>
                                        <p class="my-3">Pan Card</p>
                                    </div> </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-university fa-3x mt-3"></i>
                                        <p>G2G Service</p>
                                    </div> </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fas fa-university fa-3x mt-3"></i>
                                        <p>Account Opening</p>
                                    </div> </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fa fa-file fa-3x mt-3"></i>
                                        <p class="my-2">ITR-Filling</p>
                                    </div> </a>
                                <a href="#"  class="icon-color">
                                    <div class="box box-custom col-4 col-md-2 mx-3 ml-3">
                                        <i class="fa fa-sack fa-3x mt-3"></i>
                                        <p>Mutual Funds</p>
                                    </div> </a>

                            </div>
                        </div>
                    </div>
                </section>
                <!-- shhshend -->
        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>SwastikBank</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">

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
        <script>
                            function toggleBalance() {
                                var balanceDisplay = document.getElementById('balanceDisplay');
                                var balanceButton = document.getElementById('balanceButton');

                                if (balanceDisplay.style.display === 'none') {
                                    // Show balance
                                    balanceDisplay.style.display = 'block';
                                    balanceButton.innerHTML = 'Hide Balance';
                                } else {
                                    // Hide balance
                                    balanceDisplay.style.display = 'none';
                                    balanceButton.innerHTML = 'Show Balance';
                                }
                            }
        </script>

    </body>

</html>

<%
    }else
{ 
response.sendRedirect("../index.jsp");
}
%>