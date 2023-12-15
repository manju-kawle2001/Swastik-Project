<%-- 
    Document   : transfermoney2
    Created on : Nov 27, 2023, 7:07:32 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.swastik.model.BeneficiaryDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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


        <!-- form link -->



        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->



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

            <section class="section dashboard my-5 ml-3">
                <h2 class="text-center mb-4">Transfer Money</h2>
                <%
              ArrayList<BeneficiaryDao> beneficiaryDao  = (ArrayList<BeneficiaryDao>)session.getAttribute("BeneficiaryDao");
                
                  for(BeneficiaryDao bdao: beneficiaryDao){
                        if(bdao.getAccNum().equals(request.getParameter("beneficiaryAccNum"))){
                %>
                <form class="form-horizontal" action="../MonyTransfer" method="post" onsubmit="return allvalidate()" >
                    <div class="row">
                        <div class="col-sm-6 mx-auto">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Name</label>
                                <div class="col-sm-8">
                                    <!------------------------only for get value on server side------------------------------>
                                    <input

                                        value="<%= bdao.getAccNum()%>"
                                        id="id"
                                        type="hidden"
                                        class="form-control"
                                        name="beniacc"
                                        />
                                    <!------------------------------------------------------>
                                    <input
                                        readonly
                                        value="<%= bdao.getName()%>"
                                        id="ammount"
                                        type="text"
                                        class="form-control"
                                        name="beneficiaryName"
                                        />

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 mx-auto">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Account Number</label>
                                <div class="col-sm-8">
                                    <input
                                        readonly
                                        value="<%=bdao.getAccNum()%>"
                                        id="cammount"
                                        type="text"
                                        name="beneficiaryAccount"
                                        class="form-control"
                                        />
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-sm-6 mx-auto">
                            <div class="form-group">

                                <label class="col-sm-4 control-label">Enter Amount *</label>
                                <div class="col-sm-8">

                                    <input
                                        onkeyup="validateNumberFields()" id="firstamm"
                                        type="text"
                                        class="form-control"

                                        />
                                     <span id="displayacc" style="color:red; font-size: 14px;"></span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 mx-auto">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Confirm Amount *</label>
                                <div class="col-sm-8">
                                    <input
                                       onkeyup="validateNumberFields()" id="secondamm"
                                        type="text"
                                        class="form-control"
                                        name="amount"
                                        />
                                    <span id="display2acc" style="color:red; font-size: 14px;"></span>
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row my-5">
                        <div class="col-sm-6 mx-auto">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Transaction Type *</label>
                                <div class="col-sm-8">
                                    <select class="form-control" name="tranType"> 
                                        <option>Select Type </option>
                                        <option value="NEFT">NEFT</option>
                                        <option value="RTGS">RTGS</option>
                                    </select>

                                    <span
                                        id="errordisplay"
                                        style="color: red; font-size: 14px"
                                        >
                                    </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 mx-auto">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Description *</label>
                                <div class="col-sm-8">
                                    <input

                                        id="Description"
                                        type="text"
                                        class="form-control"
                                        name="description"
                                        />
                                    <span
                                        id="errordisplay"
                                        style="color: red; font-size: 14px"
                                        ></span>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-sm-6 mx-auto">
                            <div class="form-group">
                                <label class="col-sm-4 control-label">Enter PIN *</label>
                                <div class="col-sm-8">
                                    <input

                                        id="pin"
                                        type="password"
                                        class="form-control"
                                        name="pass"
                                        />

                                    <span
                                        id="errordisplay"
                                        style="color: red; font-size: 14px"
                                        ></span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 mx-auto my-4">
                            <button
                                class="btn btn-primary waves-effect waves-light"
                                id="btn-submit"
                                >
                                Send
                            </button>
                        </div>
                    </div>
                </form>
                <%
                    break;
                    }}%>
                <%@include file="../Components/alert_message.jsp" %>
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

        <script>
            function validateNumberFields() {
                var firstInput = document.getElementById("firstamm");
                var secondInput = document.getElementById("secondamm");
                var display = document.getElementById("displayacc");
                var display2 = document.getElementById("display2acc");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "First field is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^[0-9]+$/;
                if (!reg.test(firstInput.value)) {
                    display.innerHTML = "Only numbers are allowed in the Account Number";
                    display.style.color = "red";
                    return false;
                } else {
                    // Clear the first field's error message if it's valid
                    display.innerHTML = "";
                }

                // Check if the second input is empty
                if (secondInput.value.trim() === "") {
                    display2.innerHTML = "Second field is required";
                    display2.style.color = "red";
                    return false;
                }

                // Check if both inputs contain only numbers
                if (reg.test(firstInput.value) && reg.test(secondInput.value)) {
                    // Check if the values are the same
                    if (firstInput.value === secondInput.value) {
                        display2.innerHTML = "Valid";
                        display2.style.color = "green";
                        return true;
                    } else {
                        display2.innerHTML = "Ammount Number and Confirm Ammount Number do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Only numbers are allowed in the Account Number";
                    display2.style.color = "red";
                    return false;
                }
            }
        </script>
    </body>
</html>