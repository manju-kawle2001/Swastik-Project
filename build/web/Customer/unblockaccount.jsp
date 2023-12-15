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
    <script>
        function inputvalidate() {
            var name = document.getElementById("pan");
            var udisplay = document.getElementById("display");

            if (name.value.trim() == "") {
                udisplay.innerHTML = "Pan Number Required";
                udisplay.style.color = "red";
                return false;
            } else {
                var reg = /^[A-Za-z]{5}\d{4}[A-Za-z]$/; // 5 characters, 4 digits, 1 character
                if (reg.test(name.value)) {
                    udisplay.innerHTML = "";
                    udisplay.style.color = "green";
                    return true;
                } else {
                    udisplay.innerHTML = "Please enter the valid pattern";
                    udisplay.style.color = "red";
                    return false;
                }
            }
        }

        function inputvalidate2() {
            var name = document.getElementById("aadhar");
            var udisplay = document.getElementById("display2");

            if (name.value.trim() == "") {
                udisplay.innerHTML = "Aadhar Number Required";
                udisplay.style.color = "red";
                return false;
            } else {
                var reg = /^\d{12}$/; // Exactly 12 digits
                if (reg.test(name.value)) {
                    udisplay.innerHTML = "";
                    udisplay.style.color = "green";
                    return true;
                } else {
                    udisplay.innerHTML = "Please enter exactly 12 digits";
                    udisplay.style.color = "red";
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


    </script>
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

            <!-- E-governance -->
            <section class="section dashboard my-3 ml-3 ">
                <div class="container border p-20 mb-4" >
                    <h4 class="text-center my-3 mb-4"></h4>
                    <form class="row g-3 mb-3" action="../UnblockRequestUser">
<!--                        action="../Unblockservlet"-->
                        <h4 class="text-center my-3 mb-4">Unblock Account Request </h4>
                        <%@include file="../Components/alert_message.jsp" %>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Enter Pan Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="inputvalidate()" id="pan" type="text" class="form-control" id="inputEmail4" name="pannumber">
                            <span id="display" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Enter Aadhar Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="inputvalidate2()" id="aadhar" type="text" class="form-control" id="inputEmail4" name="adharnumber">
                            <span id="display2" style="color:red; font-size: 14px;"></span>
                        </div>

                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Enter Mobile <font face="Lato" color="red">*</font> </label>
                            <input onkeyup="Movalidate()" id="mobile" type="text" class="form-control" id="inputEmail4" name="mobile">
                            <span id="mdisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Enter Email Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="validateEmail()" id="email" type="email" class="form-control" id="inputPassword4" name="email">
                            <span id="edisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class=" justify-content-center col-md-6 my-5">

                            <input type="password" class="form-control" id="inputPassword4" placeholder="Captcha">
                        </div>
                        <div class=" justify-content-center col-md-6 ">
                            <label for="inputPassword4" class="form-label">Enter Captcha</label>
                            <input type="password" class="form-control" id="inputPassword4">
                        </div>
                        <div class="text-center my-3">
                            <button class="btn btn-danger waves-effect waves-light " id="btn-submit">Request</button>
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
    </body>
</html>