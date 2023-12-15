<%-- 
    Document   : navbar
    Created on : 28-Nov-2023, 8:03:28 pm
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <link rel="stylesheet" href="style.css" />
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
                <a class="nav-link active text-white" id="top-nav" href="../index.jsp"
                  >Home</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white " id="top-nav" href="About.jsp"
                  >About Us</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white" id="top-nav" href="Accountd.jsp"
                  >Account</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white" id="top-nav" href="Loan.jsp"
                  >Loans</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white "   id="top-nav" href="Cards.jsp"
                  >Cards</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white " id="top-nav" href="Offers.jsp"
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
                    <a class="dropdown-item" href="Login.jsp">Customer</a>
                  </li>
                  <li><a class="dropdown-item" href="Employee/EmployeeLogin.jsp">Employee</a></li>
                  <li><a class="dropdown-item" href="Manager/AdminLogin.jsp">Admin</a></li>
                  <!-- <li><hr class="dropdown-divider"></li> -->
                  <!-- <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                </ul>
              </li>
            </ul>
           
          </div>
        </div>
      </nav>
    </div>
    </body>
</html>
