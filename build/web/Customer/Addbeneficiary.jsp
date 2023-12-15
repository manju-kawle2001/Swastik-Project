<%-- 
    Document   : Addbeneficiary
    Created on : Nov 27, 2023, 6:41:23 PM
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

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet" />


        <!-- fafa icons -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">


        <!-- responsive link -->

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
            <!-- End Page Title -->



            <!-- E-governance -->
            <section class="section dashboard my-3 ml-3 ">
                <div class="container border p-20 mb-4" >
                    <h4 class="text-center my-3 mb-4">Add Beneficiary</h4>
                    <form class="row g-3 mb-3" action="../AddBeneficiary2" method="post">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-sm-2">Beneficiary Name</label>
                                <div class="col-sm-12">
                                    <!-- <textarea type="text" class="form-control" rows="2"></textarea> -->
                                    <input onkeyup="namevalidate()" id="name" type="text" class="form-control" name="bName">
                                    <span id="udisplay" style="color:red; font-size: 14px;"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Select Bank</label>
                            <select id="inputState" class="form-select" name="bank">
                                <option selected>Choose</option>
                                <option>PNB</option>
                                <option>Bank Of Baroda</option>
                                <option>ICIC BANK</option>
                                <option>HDFC BANK</option>
                                <option>SWASTIK BANK</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="inputifsc" class="form-label">Enter IFSC</label>
                            <input type="text" class="form-control" id="inputifsc" name="ifscCode">
                        </div>
                        <div class="col-md-6">
                            <label for="inputAccNum" class="form-label">Enter Account Number</label>
                            <input onkeyup="validateNumberFields()" id="firstamm" type="tex" class="form-control" id="inputAccNum" name="accNum">
                             <span id="displayacc" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputCAccNum" class="form-label">Confirm Account Number</label>
                            <input onkeyup="validateNumberFields()" id="secondamm" type="text" class="form-control" id="inputCAccNum" name="CAccNum">
                            <span id="display2acc" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputlimit" class="form-label">Enter Daily Amount Limit</label>
                            <input onkeyup="amountvalidate()" id="amount" type="text" class="form-control" id="inputlimit" name="limit">
                            <span id="displaydailyamount" style="color:red; font-size: 14px;"></span>
                        </div>
                        <%@include file="../Components/alert_message.jsp" %>
                        <div class="text-center my-5">
                            <button class="btn btn-primary waves-effect waves-light " id="btn-submit">Add</button>
                        </div>
                    </form>
                </div>
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
                               function namevalidate()
                               {
                                   var name = document.getElementById("name");
                                   var udisplay = document.getElementById("udisplay");
                                   if (name.value.trim() == "") {
                                       udisplay.innerHTML = "Name Required";
                                       udisplay.style.color = "red";
                                       return false;
                                   } else {
                                       var reg = /^[A-Z a-z]+$/;
                                       if (reg.test(name.value)) {
                                           udisplay.innerHTML = "";
                                           udisplay.style.color = "Green";
                                           return true;
                                       } else {
                                           udisplay.innerHTML = "Only letters are allowed";
                                           udisplay.style.color = "red";
                                           return false;
                                       }
                                        }
                                       }

                               function amountvalidate() {
                                   var name = document.getElementById("amount");
                                   var udisplay = document.getElementById("displaydailyamount");

                                   if (name.value.trim() == " ") {
                                       udisplay.innerHTML = "Amount Required";
                                       udisplay.style.color = "red";
                                       return false;
                                   } else {
                                       var reg = /^[0-9]+$/; // Only allow numbers
                                       if (reg.test(name.value)) {
                                           udisplay.innerHTML = "valid";
                                           udisplay.style.color = "green";
                                           return true;
                                       } else {
                                           udisplay.innerHTML = "Only numbers are allowed in AmoutntLimit";
                                           udisplay.style.color = "red";
                                           return false;
                                       }
                                   }
                               }
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
    </head>
</body>
</html>