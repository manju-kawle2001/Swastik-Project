<%-- 
    Document   : navbar
    Created on : Nov 24, 2023, 10:13:16 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.swastik.model.*"%>
<% 
 
   response.setHeader("Cache-Control", "No-Cache");
   response.setHeader("Cache-Control", "No-Store");
   AccountOpenDao activeUser = (AccountOpenDao) session.getAttribute("activeUser");
   if (activeUser != null) {
%>
<!-- ======= Header ======= -->
<header style="background-color: #861F41" id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
        <a href="CustomerDashboard.jsp" class="logo d-flex align-items-center">
            <img src="assets/img/Logo_New-3.png" alt="Swastik Bank Logo" />
            <!-- <span class="d-none d-lg-block">Swastik</span> -->
        </a>
    </div>
    <div >
        <i class="bi bi-list toggle-sidebar-btn" style="color: white"></i>
    </div>

    <!-- End Logo -->

    <!--      <div class="search-bar">
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
          </div>-->
    <!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">
            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle" href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li>
            <!-- End Search Icon-->

            <!-- End Notification Nav -->

            <li class="nav-item dropdown pe-3">
                <a
                    class="nav-link nav-profile d-flex align-items-center pe-0"
                    href="#"
                    data-bs-toggle="dropdown"
                    >
                    <img
                        src="assets/img/messages-3.jpg"
                        alt="Profile"
                        class="rounded-circle"
                        />
                    <span class="d-none d-md-block dropdown-toggle ps-2" style="color: white"
                          >
                        <%=
                              activeUser.getName()
                        %>
                    </span
                    > </a
                ><!-- End Profile Iamge Icon -->

                <ul
                    class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"
                    >
                    <li class="dropdown-header">

                        <h6> <%=
                              activeUser.getName()
                            %>
                        </h6>

                        <!-- <span>Manager</span> -->
                    </li>
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
<!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
        <li class="nav-item">
            <a class="nav-link" href="CustomerDashboard.jsp">
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
                <i class="bi bi-menu-button-wide"></i><span>Transfer Money</span
                ><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul
                id="components-nav"
                class="nav-content collapse"
                data-bs-parent="#sidebar-nav"
                >
                <li>
                    <a href="Addbeneficiary.jsp">
                        <i class="bi bi-circle"></i><span>Add Beneficiary</span>
                    </a>
                </li>
                <li>
                    <a href="../TransfermoneyControlar">
                        <i class="bi bi-circle"></i
                        ><span>Transfer Money From Account Number </span>
                    </a>
                </li>

            </ul>
        </li>
        <!-- End Components Nav -->

        <li class="nav-item">
            <a
                class="nav-link collapsed"
                data-bs-target="#forms-nav"
                data-bs-toggle="collapse"
                href="#"
                >
                <i class="bi bi-journal-text"></i><span>Request</span
                ><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul
                id="forms-nav"
                class="nav-content collapse"
                data-bs-parent="#sidebar-nav"
                >
                <li>
                    <a href="documentupdate.jsp">
                        <i class="bi bi-circle"></i><span>Document Update Request</span>
                    </a>
                </li>
                <li>
                    <a href="../Loantypecontroller">
                        <i class="bi bi-circle"></i><span>Loan Apply Request</span>
                    </a>
                </li>
                <li>
                    <a href="unblockaccount.jsp">
                        <i class="bi bi-circle"></i><span>Unblock Account</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- utility -->
        <li class="nav-item">
            <a
                class="nav-link collapsed"
                data-bs-target="#utility-nav"
                data-bs-toggle="collapse"
                href="#"
                >
                <i class="bi bi-journal-text"></i><span>Utility Service</span
                ><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul
                id="utility-nav"
                class="nav-content collapse"
                data-bs-parent="#sidebar-nav"
                >
                <li>
                    <a href="Recharge.jsp">
                        <i class="bi bi-circle"></i><span>Recharge</span>
                    </a>
                </li>
                <li>
                    <a href="BillPayment.jsp">
                        <i class="bi bi-circle"></i><span>Bill & Payment</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="bi bi-circle"></i><span>EMI Payment</span>
                    </a>
                </li>
            </ul>
        </li>

        <!-- End Forms Nav -->

        <li class="nav-item">
            <a
                class="nav-link collapsed"
                data-bs-target="#tables-nav"
                data-bs-toggle="collapse"
                href="#"
                >
                <i class="bi bi-layout-text-window-reverse"></i
                ><span>Customer Reports</span
                ><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul
                id="tables-nav"
                class="nav-content collapse"
                data-bs-parent="#sidebar-nav"
                >
                <li>
                    <a href="civilreport.jsp">
                        <i class="bi bi-circle"></i><span>Civil Report</span>
                    </a>
                </li>

                <li>
                    <a href="../TransactionHistory">
                        <i class="bi bi-circle"></i><span>Transaction History</span>
                    </a>
                </li>
                <li>
              <a href="report.jsp">
                <i class="bi bi-circle"></i><span>Problem Report </span>
              </a>
            </li>
            </ul>
        </li>
        <li class="nav-item">
            <a
                class="nav-link collapsed"
                data-bs-target="#feedback-nav"
                data-bs-toggle="collapse"
                href="#"
                >
                <i class="bi bi-layout-text-window-reverse"></i
                ><span> Feedback</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul
                id="feedback-nav"
                class="nav-content collapse"
                data-bs-parent="#sidebar-nav"
                >
                <li>
              <a href="feedback.jsp">
                <i class="bi bi-circle"></i><span>Review & Feedback</span>
              </a>
            </li>


            </ul>
        </li>

        <li class="nav-heading">Pages</li>

        <!-- End F.A.Q Page Nav -->

        <li class="nav-item">
          <a class="nav-link collapsed" href="Contact-us.jsp">
            <i class="bi bi-envelope"></i>
            <span>Contact</span>
          </a>
        </li>

        </li>
    </ul>
</aside>
<!-- End Sidebar-->
<%
   }else
{ 
response.sendRedirect("../index.jsp");
}
%>