<%-- 
    Document   : header
    Created on : 08-Dec-2023, 12:25:48?pm
    Author     : Sohan_Maali
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
            />
        <link rel="stylesheet" href="View/AllComponent/style.css" />
    </head>

    <body>
        <div class="shadow bg-white rounded fixed-top">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                    <a class="navbar-brand " href="#"
                       ><img src="AllComponent/img/Logo_New-3.png" height="40px" width="140px" alt=""
                          /></a>
                    <button
                        class="navbar-toggler bg-light"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-auto">
                            <li class="nav-item ms-4">
                                <a class="nav-link active text-white" id="top-nav" href="index.jsp"
                                   >Home</a
                                >
                            </li>
                            <li class="nav-item ms-4">
                                <a class="nav-link active text-white " id="top-nav" href="View/About.jsp"
                                   >About Us</a
                                >
                            </li>
                            <li class="nav-item ms-4">
                                <a class="nav-link active text-white" id="top-nav" href="View/Accountd.jsp"
                                   >Account</a
                                >
                            </li>
                            <li class="nav-item ms-4">
                                <a class="nav-link active text-white" id="top-nav" href="View/Loan.jsp"
                                   >Loans</a
                                >
                            </li>
                            <li class="nav-item ms-4">
                                <a class="nav-link active text-white "   id="top-nav" href="View/Cards.jsp"
                                   >Cards</a
                                >
                            </li>
                            <li class="nav-item ms-4">
                                <a class="nav-link active text-white " id="top-nav" href="View/Offers.jsp"
                                   >Offers</a
                                >
                            </li>
                            <li class="nav-item dropdown ml-5 text-white">
                                <a
                                    class="nav-link dropdown-toggle ms-5 text-white"
                                    style="font-size: 20px"
                                    href="#"
                                    id="navbarDropdown"
                                    role="button"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                    >
                                    Login
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li>
                                        <a class="dropdown-item" href="View/Login.jsp">Customer</a>
                                    </li>
                                    <li><a class="dropdown-item" href="Employee/EmployeeLogin.jsp">Employee</a></li>
                                    <li><a class="dropdown-item" href="Manager/AdminLogin.jsp">Admin</a></li>
                                    <li><hr class="dropdown-divider"></li> 
                                    <li><a class="dropdown-item" href="#">Something else here</a></li> 
                                </ul>
                            </li>
                        </ul>

                    </div>
                </div>
            </nav>
        </div>


        <!-- ======= Header ======= -->

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