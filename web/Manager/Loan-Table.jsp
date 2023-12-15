<%-- 
    Document   : Loan-Table
    Created on : 30-Nov-2023, 4:33:24 pm
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@ page import=" com.swastik.model.*" %>
<%@ page import="com.swastik.controlar.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Favicons -->
        <link href="assets/img/logo.png" rel="icon" />
        <!-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" /> -->

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
    </head>
    <body>
        <% 
       List<LoanInformationDao> d =LoanInformationDto.alldataLoan();
        
        %>
       <header
      style="background-color: #861F41"
      id="header"
      class="header fixed-top d-flex align-items-center"
    >
      <div class="d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
          <img src="assets/img/Logo_New-3.png" alt="" />
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
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
                src="assets/img/profile-img.jpg"
                alt="Profile"
                class="rounded-circle"
              />
              <span class="d-none d-md-block dropdown-toggle ps-2"
                >SK Maali</span
              > </a
            ><!-- End Profile Iamge Icon -->

            <ul
              class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile"
            >
              <li class="dropdown-header">
                <h6>Sohan Maali</h6>
                <span>Manager</span>
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
                  <span>My Profile</span>
                </a>
              </li>
              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <hr class="dropdown-divider" />
              </li>

              <li>
                <a class="dropdown-item d-flex align-items-center" href="#">
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
          <a class="nav-link" href="AdminDashBoard.jsp">
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
            <i class="bi bi-menu-button-wide"></i><span>Department</span
            ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul
            id="components-nav"
            class="nav-content collapse"
            data-bs-parent="#sidebar-nav"
          >
            <li>
              <a href="Loan-Table.jsp">
                <i class="bi bi-circle"></i><span>Loan</span>
              </a>
            </li>
            <li>
              <a href="Account-Table.jsp">
                <i class="bi bi-circle"></i><span>Account</span>
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
            <i class="fa-solid fa-user-group"></i><span>Customer</span
            ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul
            id="tables-nav"
            class="nav-content collapse"
            data-bs-parent="#sidebar-nav"
          >
            <li>
              <a href="Customer-List.jsp">
                <i class="bi bi-circle"></i><span>Customer List</span>
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
            <i class="fa-solid fa-users"></i><span>Employee</span
            ><i class="bi bi-chevron-down ms-auto"></i>
          </a>
          <ul
            id="icons-nav"
            class="nav-content collapse"
            data-bs-parent="#sidebar-nav"
          >
            <li>
              <a href="EmployeeRequest.jsp">
                <i class="bi bi-circle"></i><span>Employee List</span>
              </a>
            </li>           
            <li>
              <a href="Registration.jsp">
                <i class="bi bi-circle"></i><span>Add Employee</span>
              </a>
            </li>
            <li>
              <a href="AllBlockEmployee.jsp">
                <i class="bi bi-circle"></i><span>Block Employee</span>
              </a>
            </li>
          </ul>
        </li>
        <!-----------Employee  End------------- -->
        <!-- -----Request Start------- -->
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
              <a href="forms-elements.jsp">
                <i class="bi bi-circle"></i><span>Loan Request</span>
              </a>
            </li>
            <li>
              <a href="Approveal.jsp">
                <i class="bi bi-circle"></i><span>Employee Request</span>
              </a>
            </li>
          </ul>
        </li>
        <!-- -----Request End------- -->
        <li class="nav-heading">Other</li>

        <!-- End Profile Page Nav -->

        <li class="nav-item">
          <a class="nav-link collapsed" href="Review-And-Rating.jsp">
            <i class="bi bi-question-circle"></i>
            <span>Review</span>
          </a>
        </li>
      </ul>
    </aside>

        <main id="main" class="main">
            <div class="pagetitle">
                <h1>Loans Data Table</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item">Department</li>
                        <li class="breadcrumb-item active">Loans table</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section">
                <div class="row">

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Loan Table</h5>

                                <!-- Table with stripped rows -->
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>                     
                                            <th>Loan Id</th>
                                            <th>Loan Name</th>
                                            <th>Interest Rate</th>
                                            <th>Duration</th>
                                        </tr>

                                    </thead>
                                    <tbody>
                                        <%
                                 if(!d.isEmpty()){
                                    for(LoanInformationDao p : d){                                
                
                                        %>
                                        <tr>
                                            <td><%=p.getLoanID() %></td>                    
                                            <td><%=p.getLoanName() %></td>
                                            <td><%=p.getIntrest()%></td>
                                            <td><%=p.getDuration()%></td>
                                            <!--                      <td>
                                                                    <a href="#" class="edit-btn btn btn-primary">Edit</a>
                                                                  </td>-->
                                        </tr>
                                        <% }
                                            }else{
                                            out.print("kdkkdd");
                                                }
                                        %>  
                                        <!-- Add more rows here -->
                                    </tbody>
                                </table>

                                <!-- End Table with stripped rows -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>Tech Nerds</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">Designed by <a href="#">Sohan</a></div>
        </footer>
        <!-- End Footer -->

        <a
            href="#"
            class="back-to-top d-flex align-items-center justify-content-center"
            ><i class="bi bi-arrow-up-short"></i
            ></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function () {
                // When the "Edit" button is clicked
                $(".edit-btn").click(function () {
                    var row = $(this).closest("tr");
                    var interestRateCell = row.find("td:nth-child(4)"); // Select the 4th column (Interest Rate)

                    if ($(this).text() === "Edit") {
                        $(this).text("Save");

                        var cellText = interestRateCell.text();
                        var input = $('<input type="text">');
                        input.val(cellText);
                        interestRateCell.html(input);
                    } else if ($(this).text() === "Save") {
                        $(this).text("Edit");

                        var input = interestRateCell.find("input");
                        var cellText = input.val();
                        interestRateCell.text(cellText);
                    }
                });
            });
        </script>
    </body>
</html>