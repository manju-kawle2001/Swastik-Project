<%-- 
    Document   : Accountd
    Created on : 28-Nov-2023, 8:44:30 pm
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="AllComponent/style.css"/>
         <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
    />
      <style>
      /* .bg-custom{
    background-color: #81d4fa;
    position: sticky;
} */
      .navbar .nav-item1:hover {
        background-color: rgba(255, 255, 255, 0.4);
        color: black;
        border-radius: 15px;
      }
      .navbar {
        /* background-color: #00abe4; */
        background-color: #9f1945;
      }
      .back-img {
        /* background-image: url('https://sultanchandfoundation.org/wp-content/uploads/2021/04/book.jpg'); */
        height: 80vh;
        width: 100%;
        background-repeat: no-repeat;
        background-size: cover;
      }
      #top-nav {
        font-size: 20px;
        color: black;
      }
      #top-nav:hover {
        color: #0d6efd;
      }
      #navbarDropdownMenuLink {
        font-size: 20px;
        margin-left: 40px;
      }

      .lead {
        font-size: 20px;
      }
      #icon {
        color: blue;
        font-size: 25px;
        margin-left: 30px;
      }
      .img-fluid {
        height: 250px;
        width: 400px;
      }
      #side-nav {
        font-size: 10px;
      }
      #nnn {
        height: 500px;
        width: 350px;
      }
      li {
        font-size: 13px;
      }
      #sec {
        margin-left: -120px;
        margin-left: 1px;
        height: 400px;
        width: 400px;
        /* background-color: #f8f8f8; */
        background-color: whitesmoke;
      }
      #navbarDropdownMenuLink {
        font-size: 20px;
        margin-left: 40px;
      }
      #ss {
        margin-top: 70px;
        height: 600px;
        /* margin: auto; */
        /* background-color: #f8f8f8; */
      }
      .nav-link #line:hover {
        color: red;
      }
      #third-row {
        width: 300px;
        background-color: #f8f9fa;
      }
      #footer {
        display: flex;
        justify-content: space-around;
      }
    </style>
    </head>
    <body>
         <%@include file="AllComponent/navbar.jsp" %>
       <div class="row row-cols-lg-2 row-cols-md-2 row-cols-1" id="ss">
        <div class="col" id="third-row">
          <ul class="nav flex-column">
            <li class="nav-item ms-5 mt-5">
              <a
                class="nav-link active text-dark"
                id="line"
                aria-current="page"
                href="Accountd.jsp"
                >SAVING ACCOUNT &nbsp; &nbsp;&nbsp; &nbsp;<i
                  class="bi bi-caret-right-fill"
                  id="arrow
              "
                ></i
              ></a>
            </li>
            <li class="nav-item1 ms-5 mt-3">
              <a class="nav-link active text-dark" href="Deposit.jsp"
                >DEPOSIT &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<i
                  class="bi bi-caret-right-fill"
                ></i
              ></a>
            </li>
            <li class="nav-item1 ms-5 mt-3">
              <a class="nav-link active text-dark" href="Forex.jsp"
                >FOREX &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
                  class="bi bi-caret-right-fill"
                ></i
              ></a>
            </li>
            <li class="nav-item1 ms-5 mt-3">
              <a class="nav-link active text-dark" href="WaystoBank.jsp"
                >WAYS TO BANK &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<i
                  class="bi bi-caret-right-fill"
                ></i
              ></a>
            </li>
          </ul>
        </div>
        <div class="col w-75" style="background-color: #fafaf6">
          <div class="row row-cols-lg-3 row-cols-md-2 row-cols-1 mt-3">
            <div class="col">
              <div class="card bg-LIGHT pb-2 ms-3">
                <div class="card-body">
                  <ul>
                    <a href="Saving.jsp" class="nav-link text-dark">
                      SAVINGS ACCOUNT</a
                    >
                    <li>
                      <a href="Saving.jsp" class="nav-link text-dark"
                        >Savings Account</a
                      >
                    </li>
                    <li>
                      <a href="" class="nav-link text-dark"
                        >Track Your Application</a
                      >
                    </li>
                    <li>
                      <a href="CampusPower.jsp" class="nav-link text-dark"
                        >Campus Power Account</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card bg-LIGHT pb-2 ms-3">
                <div class="card-body">
                  <ul>
                    <a href="" class="nav-link text-dark"> SALARY ACCOUNT</a>
                    <li>
                      <a href="SalaryAccount.jsp" class="nav-link text-dark"
                        >Select Plus Salary Account</a
                      >
                    </li>
                    <!-- <li><a href="" class=" nav-link text-dark" >Titanium Salary Account</a></li> -->
                    <li>
                      <a href="GoldSalary.jsp" class="nav-link text-dark"
                        >Gold Salary Account</a
                      >
                    </li>
                    <li>
                      <a href="SilverSalary.jsp" class="nav-link text-dark"
                        >Silver Salary Account</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card bg-LIGHT pb-2 ms-3">
                <div class="card-body">
                  <ul>
                    <a href="" class="nav-link text-dark">
                      INVESTMENT ACCOUNT</a
                    >
                    <li>
                      <a href="OnlineTranding.jsp" class="nav-link text-dark"
                        >Online Trading
                      </a>
                    </li>
                    <li>
                      <a href="" class="nav-link text-dark">Demat Account</a>
                    </li>
                    <li>
                      <a href="" class="nav-link text-dark"
                        >NPS Plus Saving Account</a
                      >
                    </li>
                    <!-- <li><a href="" class=" nav-link text-dark" >HUF-Hindu Undivided Family</a></li> -->
                    <!-- <li><a href="" class=" nav-link text-dark" >Investment & Tax Saving Account</a></li> -->
                    <!-- <a href="" class=" nav-link text-danger">Know more</a> -->
                  </ul>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card bg-LIGHT pb-2 mt-3 ms-3">
                <div class="card-body">
                  <ul>
                    <a href="" class="nav-link text-dark">
                      PRIVILEGE BANKING PROGRAM
                    </a>
                    <li>
                      <a href="Programe Benefits.jsp" class="nav-link text-dark"
                        >Benefits, Eligibility and Charges</a
                      >
                    </li>
                    <!-- <li><a href="" class=" nav-link text-dark" >Titanium Salary Account</a></li>
                   <li><a href="" class=" nav-link text-dark" >Gold Salary Account</a></li>
                   <li><a href="" class=" nav-link text-dark">Silver Salary Account</a></li> -->
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- <div class="col">
            <div class="card bg-LIGHT pb-2 mt-3 ms-3">
              <div class="card-body">
                 
                  <h3 class="text-center">Sustainability</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos maxime, provident deserunt dicta non aperiam eum eaque minima, molestias aliquid iste velit id eligendi quod?</p>
                  <button class="btn btn-primary">Read More</button>
              </div>
          </div> -->
        </div>
      </div>
       
        <%@include file="AllComponent/footer.jsp" %>
    </body>
</html>
