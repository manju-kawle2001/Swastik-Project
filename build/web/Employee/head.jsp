<%-- 
    Document   : head
    Created on : 27-Nov-2023, 4:34:49?pm
    Author     : Hp
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>Dashboard - NiceAdmin Bootstrap Template</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
        <style>

        </style>
    </head>

    <body>
        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center"  style=" background-color: #9F1945">
            <div class="d-flex align-items-center justify-content-between">
                <a href="..//index.jsp" class="logo d-flex align-items-center">
                    <img src="assets/img/Logo_New-3.png" alt="" />
                    <!-- <span class="d-none d-lg-block">Swastik</span> -->
                </a>
                <i class="bi bi-list toggle-sidebar-btn" style="color: white;"></i>
            </div>
            <!-- End Logo -->

            <div class="search-bar">
                <form
                    class="search-form d-flex align-items-center"
                    method="POST"
                    action="#"
                    >
                    <input
                        type="text"
                        name="query"
                        placeholder="Search"
                        title="Enter search keyword"
                        />
                    <button type="submit" title="Search">
                        <i class="bi bi-search"></i>
                    </button>
                </form>
            </div>
            <!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">
                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle" href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li>
                    <!-- </ul>
                    </nav> -->

                    <li class="nav-item dropdown pe-3">
                        <a
                            class="nav-link nav-profile d-flex align-items-center pe-0"
                            href="#"
                            data-bs-toggle="dropdown"
                            >
                            <img
                                src="assets/img/messages-2.jpg"
                                alt="Profile"
                                class="rounded-circle"
                                />
                            <span class="d-none d-md-block dropdown-toggle ps-2" style="color: white;">

                            </span>
                        </a
                        ><!-- End Profile Iamge Icon -->

                        <ul
                            class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"
                            >
                            <li class="dropdown-header">
                                <h6></h6>
                                <!-- <span>Employee</span> -->
                                <span><b>id :  </b></span></li>
                            <li><center><a href="../Employee/users-profile.jsp">Profile</a></center></li>


                    <li>
                        <hr class="dropdown-divider" />
                    </li>

                    <li>
                        <a
                            class="dropdown-item d-flex align-items-center"
                            href="users-profile.jsp"
                            >
                            <i class="bi bi-person"></i>
                            <span>Change Password</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider" />
                    </li>

                    <li>
                        <hr class="dropdown-divider" />
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="../LogOut">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
                        </a>
                    </li>
                </ul>
                <!-- End Profile Dropdown Items -->
                </li>
                <!-- End Profile Nav -->
                </ul>
            </nav>
            <!-- End Icons Navigation -->
        </header>

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">
            <ul class="sidebar-nav" id="sidebar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="EmployeeDashBoard.jsp">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <!-- End Dashboard Nav -->

                <li class="nav-item">
                    <a
                        class="nav-link collapsed"
                        data-bs-target="#components-nav"
                        data-bs-toggle="collapse"
                        href="#"
                        >
                        <i class="bi bi-menu-button-wide"></i><span>Customer</span
                        ><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul
                        id="components-nav"
                        class="nav-content collapse"
                        data-bs-parent="#sidebar-nav"
                        >
                        <li>
                            <a href="../CustomerControlar?managerCustomerList=managerCustomerList">
                                <i class="bi bi-circle"></i><span>Customer List</span>
                            </a>
                        </li>
                        <li>
                            <a href="Transactiontable.jsp">
                                <i class="bi bi-circle"></i><span>Transaction Record</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- End Components Nav -->

                <!-- --------Customer Start----------- -->
                <li class="nav-item">
                    <a
                        class="nav-link collapsed"
                        data-bs-target="#tables-nav"
                        data-bs-toggle="collapse"
                        href="#"
                        >
                        <i class="fa-solid fa-user-group"></i><span>Request</span
                        ><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul
                        id="tables-nav"
                        class="nav-content collapse"
                        data-bs-parent="#sidebar-nav"
                        >
                        <li>
                            <a href="UpdateRecord.jsp">
                                <i class="bi bi-circle"></i><span> Updation Request</span>
                            </a>
                        </li>

                        <li>
                            <a href="ActivationTable.jsp">
                                <i class="bi bi-circle"></i><span>Activation Request</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- --------Customer End----------- -->
                <!-- --------Employee Start----------- -->
                <li class="nav-item">
                    <a
                        class="nav-link collapsed"
                        data-bs-target="#icons-nav"
                        data-bs-toggle="collapse"
                        href="#"
                        >
                        <i class="fa-solid fa-users"></i><span>Reports</span
                        ><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul
                        id="icons-nav"
                        class="nav-content collapse"
                        data-bs-parent="#sidebar-nav"
                        >
                        <li>
                            <a href="CustomerTransaction.jsp">
                                <i class="bi bi-circle"></i><span>Customer Transaction</span>
                            </a>
                        </li>
                        <li>
                            <a href="DailyLedger.jsp">
                                <i class="bi bi-circle"></i><span>Daily Ledger</span>
                            </a>
                        </li>
                        <!-- </ul> -->
                </li>
                <li>
                    <a href="CivilReportTable.jsp">
                        <i class="bi bi-circle"></i><span>Civil Records</span>
                    </a>
                </li>
            </ul>
        </li>
    </aside>
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






