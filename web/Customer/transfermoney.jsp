<%-- 
    Document   : transfermoney
    Created on : Nov 27, 2023, 7:01:15 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.swastik.model.*"%>
<%
ArrayList<BeneficiaryDao> beneficiaryDao  = (ArrayList<BeneficiaryDao>)session.getAttribute("BeneficiaryDao");
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

        <!-- fafa icons -->

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />


        <!-- responsive link -->

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />
        <!-- form link -->


        <!-- <link
          rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        /> -->

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
            body{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <!-- ======= Header ======= -->
        <%@include file="navbar2.jsp" %>
        <!--navbar-end-->
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

            <!-- E-governance -->
            <section class="section">
                <!--<form action="../TransferControl" method="post">-->
                <table class="table table-striped table-hover border">
                    <thead class="bg-light">
                        <tr>
                    <h4 class="text-center my-3 mb-4">Transfer Money</h4>
                    </tr>
                     <%@include file="../Components/alert_message.jsp" %>
                    <tr>
                        <th>Beneficiary Name</th>
                        <th>Bank Name</th>
                        <th>Account Number</th>
                        <th>IFSC Code</th>
                        <th colspan="3" class="text-center"><center>Action</center></th>
                    <!--<th><input type="text" value="sohannsdcbh" name="sohan" disabled></th>-->

                    </tr>
                    <%
                          for(BeneficiaryDao bdao: beneficiaryDao)
                                      {
                    %>
                    <tr>

                        <td>
                            <input class="form-control" type="text" value="<%= bdao.getName()%>" name="beneficiaryName" readonly>
                        </td>
                        <td>
                            <input class="form-control" type="text" value="<%= bdao.getBank()%>" name="beneficiaryBank" readonly>

                        </td>

                        <td >
                            <input class="form-control" type="text" value="<%=bdao.getAccNum()%>" name="beneficiaryAccNum" readonly></td>

                        </td>
                        <td >
                            <input class="form-control" type="text" value="<%=bdao.getIfsc()%>" name="beneficiaryifsc" readonly >

                        </td>
                        <td>
                        <td>

                        <a type="button" class="btn btn-secondary" data-toggle="modal" data-target="#transfermoney2" href="transfermoney2.jsp?beneficiaryAccNum=<%= bdao.getAccNum()%>">Send</a>
                        </td>
<!--                        <a type="button" class="btn btn-secondary" data-toggle="modal" data-target="#transfermoney" href="editbeneficiary.jsp?beniId=<%= bdao.getAccNum()%>">Edit</a>-->
                        <td>
                        <a type="button" class="btn btn-secondary" data-toggle="modal" data-target="#transfermoney" href="../deletebeneficiaryservlet?benid=<%= bdao.getBeneId()%>">Delete</a>
                        </td>
                    
                    </td>
                    </tr>
                    <%
                        }
                    %>
                    </thead>

                </table>
                <!--</form>-->
            </section>
            <!-- shhshend -->
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
        <!-- <input type=""> -->
    </body>
</html>