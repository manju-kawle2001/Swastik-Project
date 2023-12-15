<%-- 
    Document   : documentupdate
    Created on : Nov 27, 2023, 7:25:06 PM
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



        <script>
            function validate() {}
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
            function Fvalidate()
            {
                var Fname = document.getElementById("Fname");
                var fdisplay = document.getElementById("fdisplay");
                if (Fname.value.trim() == "") {
                    fdisplay.innerHTML = "FatherName Required";
                    fdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(Fname.value)) {
                        fdisplay.innerHTML = "";
                        fdisplay.style.color = "green";
                        return true;
                    } else {
                        fdisplay.innerHTML = "Only letters are allowed";
                        fdisplay.style.color = "red";
                        return false;
                    }
                     }
                    }
            function Movalidate()
            {
                var mobile = document.getElementById("mobile");
                var mdisplay = document.getElementById("mdisplay");
                if (mobile.value.trim() == "") {
                    mdisplay.innerHTML = "Mobile Number Required";
                    mdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[6789][0-9]{9}/;
                    if (reg.test(mobile.value)) {
                        mdisplay.innerHTML = "Valid";
                        mdisplay.style.color = "Green";
                        return true;
                    } else {
                        mdisplay.innerHTML = "Number should start with 6, 7, 8, or 9 and have 10 digits";
                        mdisplay.style.color = "red";
                        return false;
                    }
                     }
                    }
            function validateEmail() {
                var emailInput = document.getElementById("email");
                var emailDisplay = document.getElementById("edisplay");
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                if (emailInput.value.trim() === "") {
                    emailDisplay.innerHTML = "Email is required";
                    emailDisplay.style.color = "red";
                    return false;
                } else if (!emailPattern.test(emailInput.value)) {
                    emailDisplay.innerHTML = "Invalid email format";
                    emailDisplay.style.color = "red";
                    return false;
                } else {
                    emailDisplay.innerHTML = "";
                    return true;
                }
            }


            function passValidate() {
                var pass = document.getElementById("pass");
                var confirmPass = document.getElementById("confirmPass");
                var pdisplay = document.getElementById("pdisplay");

                if (pass.value.trim() === "" || confirmPass.value.trim() === "") {
                    pdisplay.innerHTML = "Passwords are required";
                    pdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^(?=.+?[0-9])(?=.+[A-Z])(?=.+?[a-z])(?=.+?[~!@#$%^&*()-+]).{8,}$/;
                    if (reg.test(pass.value)) {
                        pdisplay.innerHTML = "Valid";
                        pdisplay.style.color = "green";
                        return true;
                    } else {
                        pdisplay.innerHTML = "Please enter at least one number, uppercase, lowercase, special character, and a minimum of 8 characters";
                        pdisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function passValidate2() {
                var pass = document.getElementById("pass");
                var confirmPass = document.getElementById("confirmPass");
                var pdisplay = document.getElementById("pdisplay");

                if (pass.value.trim() === "" || confirmPass.value.trim() === "") {
                    pdisplay.innerHTML = "Passwords are required";
                    pdisplay.style.color = "red";
                    return false;
                } else if (pass.value !== confirmPass.value) {
                    pdisplay.innerHTML = "Passwords do not match";
                    pdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^(?=.+?[0-9])(?=.+[A-Z])(?=.+?[a-z])(?=.+?[~!@#$%^&*()-+]).{8,}$/;
                    if (reg.test(pass.value)) {
                        pdisplay.innerHTML = "Valid";
                        pdisplay.style.color = "green";
                        return true;
                    } else {
                        pdisplay.innerHTML = "Please enter at least one number, uppercase, lowercase, special character, and a minimum of 8 characters";
                        pdisplay.style.color = "red";
                        return false;
                    }
                }
            }

        </script>
    </head>



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
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section dashboard my-3 ml-3">
                <div class="container border p-20">
                    <h4 class="text-center my-3 mb-4">Details Update</h4>
                    <fieldset>
                        <form class="row g-3 border mb-5" action="../UpdationServlet" method="post">
                            <h4 class="my-3 mb-4">Identity Details</h4>
                            <%@include file="../Components/alert_message.jsp" %>
                            <div class="col-md-6">
                                <label for="updateType" class="form-label">Select What you want to Update</label>
                                <select id="updateType"  class="form-select" name="updateType">
                                    <option selected disabled>Choose...</option>
                                    <option value="Name">Name</option>
                                    <option value="FatherName">Father Name</option>
                                    <option value="MotherName">Mother Name</option>
                                    <option value="Email">Email ID</option>
                                    <option value="MobileNumber">Mobile Number</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="name" class="form-label">Name</label>
                                <input onkeyup="namevalidate()" id="name" type="text" class="form-control" name="name" >
                                <span id="udisplay" style="color:red; font-size: 14px;">*</span>
                            </div>

                            <div class="col-md-6">
                                <label for="fathername" class="form-label">Father Name</label>
                                <input onkeyup="Fvalidate()"  id="fathername" type="text" class="form-control" name="fatherName">
                                <span id="fdisplay" style="color:red; font-size: 14px;">*</span>
                            </div>

                            <div class="col-md-6">
                                <label for="mothername" class="form-label">Mother Name</label>
                                <input id="mothername" type="text" class="form-control"  name="motherName">
                            </div>

                            <div class="col-md-4 my-4">
                                <label for="gender" class="form-label">Gender <font face="Lato" color="red">*</font></label><br>
                                <input type="radio" name="gender" class="mr-3 ml-2" value="Male">&nbsp;&nbsp;&nbsp;&nbsp;Male&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="gender" class="mr-3 ml-2" value="Female">&nbsp;&nbsp;&nbsp;&nbsp;Female&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="gender" class="mr-3 ml-2" value="Other">&nbsp;&nbsp;&nbsp;&nbsp;Other
                            </div>

                            <div class="col-md-4">
                                <label for="dob" class="form-label">Date of Birth</label>
                                <input type="date" class="form-control"  name="dob">
                            </div>

                            <div class="col-md-4">
                                <label for="maritalStatus" class="form-label">Marital Status</label>
                                <select  class="form-select" name="maritalStatus">
                                    <option selected>Choose...</option>
                                    <option value="Single">Single</option>
                                    <option value="Married">Married</option>
                                    <option value="Divorced">Divorced</option>
                                    <option value="Widowed">Widowed</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="mobile" class="form-label">Mobile Number</label>
                                <input onkeyup="Movalidate()"  maxlength="10" type="text" class="form-control"  id="mobile" name="mobile">
                                <span id="mdisplay" style="color:red; font-size: 14px;">*</span>
                            </div>

                            <div class="col-md-6">
                                <label for="email" class="form-label">Email-id</label>
                                <input onkeyup="validateEmail()" id="email" type="text" class="form-control" name="email" >
                                <span id="edisplay" style="color:red; font-size: 14px;">*</span>
                            </div>

                            <div class="col-md-12">
                                <h4 class="">Address Details</h4>
                            </div>

                            <div class="col-md-6">
                                <label for="streetHomeNumber" class="form-label">Street HomeNumber</label>
                                <input type="text" class="form-control" name="streetHomeNumber">
                            </div>

                            <div class="col-md-6">
                                <label for="city" class="form-label">City </label>
                                <input type="text" class="form-control" name="city">
                            </div>

                            <div class="col-md-6">
                                <label for="district" class="form-label">District </label>
                                <input type="text" class="form-control"  name="district">
                            </div>

                            <div class="col-md-6">
                                <label for="state" class="form-label">State</label>
                                <select  class="form-select" name="state">
                                    <!-- ... (options for states) ... -->
                                    <option selected>Choose...</option>
                                    <option value="Andhra Pradesh">
                                        Andhra Pradesh
                                    </option>
                                    <option value="Arunachal Pradesh">
                                        Arunachal Pradesh
                                    </option>
                                    <option value="Assam">Assam</option>
                                    <option value="Bihar">Bihar</option>
                                    <option value="Chhattisgarh">Chhattisgarh</option>
                                    <option value="Goa">Goa</option>
                                    <option value="Gujarat">Gujarat</option>
                                    <option value="Haryana">Haryana</option>
                                    <option value="Himachal Pradesh">
                                        Himachal Pradesh
                                    </option>
                                    <option value="Jharkhand">Jharkhand</option>
                                    <option value="Karnataka">Karnataka</option>
                                    <option value="Kerala">Kerala</option>
                                    <option value="Madhya Pradesh">
                                        Madhya Pradesh
                                    </option>
                                    <option value="Maharashtra">Maharashtra</option>
                                    <option value="Manipur">Manipur</option>
                                    <option value="Meghalaya">Meghalaya</option>
                                    <option value="Mizoram">Mizoram</option>
                                    <option value="Nagaland">Nagaland</option>
                                    <option value="Odisha">Odisha</option>
                                    <option value="Punjab">Punjab</option>
                                    <option value="Rajasthan">Rajasthan</option>
                                    <option value="Sikkim">Sikkim</option>
                                    <option value="Tamil Nadu">Tamil Nadu</option>
                                    <option value="Telangana">Telangana</option>
                                    <option value="Tripura">Tripura</option>
                                    <option value="Uttar Pradesh">Uttar Pradesh</option>
                                    <option value="Uttarakhand">Uttarakhand</option>
                                    <option value="West Bengal">West Bengal</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="pincode" class="form-label">Pincode</label>
                                <input  type="text" class="form-control" name="pincode">
                            </div>

                            <div class="col-md-12 my-3 mt-3">
                                <h4 class="text-center">Nominee Details</h4>
                            </div>

                            <div class="col-md-6">
                                <label for="nomineeName" class="form-label">Nominee Name</label>
                                <input  type="text" class="form-control" name="nomineeName">
                            </div>

                            <div class="col-md-6">
                                <label for="nomineeFatherName" class="form-label">Nominee Father Name</label>
                                <input  type="text" class="form-control" name="nomineeFatherName">
                            </div>

                            <div class="col-md-6">
                                <label for="nomineeMobile" class="form-label">Nominee Mobile Number </label>
                                <input  type="text" class="form-control" name="nomineeMobile">
                            </div>

                            <div class="col-md-6">
                                <label for="nomineeEmail" class="form-label">Nominee Email Id </label>
                                <input type="text" class="form-control"  name="nomineeEmail">
                            </div>

                            <div class="col-md-6">
                                <label for="nomineeAadhar" class="form-label">Nominee Aadhar Number</label>
                                <input  type="text" class="form-control" name="nomineeAadhar">
                            </div>

                            <div class="text-center mb-3">
                                <button class="btn btn-primary waves-effect waves-light" id="btn-submit" type="submit">
                                    Submit
                                </button>
                            </div>
                        </form>
                    </fieldset>
                </div>
            </section>


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