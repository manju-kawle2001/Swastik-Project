<%-- 
    Document   : Home
    Created on : 15-Nov-2023, 11:47:53 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import =" java.util.*"%>
<%@page import =" com.swastik.model.*"%>
<%@page import =" com.swastik.controler.*"%>
<%@ page import="java.util.List" %>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Dashboard </title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Favicons -->
    <link href="assets/img/Logo_New-3.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />
    <link href="CustomerTransaction.css">
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
      #box{
        margin-left: 350px;
        margin-top: 150px;
      }
      #box1{
        margin-left: 50px;
        margin-top: 150px;
      }
    
      #box2{
        margin-left: 350px;
        margin-top: 50px;
      }
      #box3{
        margin-left: 50px;
        margin-top: 50px;
      }
      @media only screen and (max-width: 360px) {
        #box{
        margin-left: 10px;
        height: 20vh;
        width:100vw;
        margin-top: 100px;
      }
      #box1{
        margin-left: 10px;
        margin-top: 100px;
        width:100vw;
      }
    
      #box2{
        margin-left: 10px;
       
        width:100vw;
        margin-top: 20px;
      }
      #box3{
         width:100vw;
        margin-top: 100px;
        margin-left: 10px;
        /* margin-top: 50px; */
        width:100vw;
        margin-top: 20px;
      }

      }
     
    </style>
  </head>

  <body>
   


 <% 
//            AccountOpenDto edto = new AccountOpenDto();
//            List<AccountOpenDao> d =edto.alldataCustomer();
//        
            List<AccountOpenDao> d =AccountOpenDto.allCustomerdata();
        %>
        <% 
        // Retrieve row count from the database
        int rowCount = AccountOpenDto.getRowCount();
    %>
    
    <% 
        // Retrieve row count from the database
        int rowCountTransaction = TransactionInformationDto.getRowTransaction1();
    %>
    <% 
        // Retrieve row count from the database
        int LoanRequest = LoanInformationDto.getLoanRequest();
    %>
<%@include file="head.jsp"%>
    <section class="section dashboard">
      <div class="row">
      
        <div class="col-xxl-3 col-md-4" id="box">
          <div class="card info-card sales-card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"
                ><i class="bi bi-three-dots"></i
              ></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>
                  <%
                    if(!d.isEmpty()){
               //     for(AccountOpenDao p : d){                    
                
                    %>
         
           
            <div class="card-body">
              <h5 class="card-title">Total Account Open</h5>

              <div class="d-flex align-items-center">
                  <div  class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <img src=""
                  </div>
                 
                  
                
               
                  <i class="fa-solid fa-users"></i>
                </div>
                <div class="ps-3">
                    
                    
                    
                  
                  <h6><%= rowCount %></h6>
<!--                 System.out.println(""+ p.getAccNum());-->
                </div>

              </div>

            </div>
          
              <% }
                        else{
                        out.print("kdkkdd");
                            }
                        %>   
                 </div>
        </div>
                
        <div class="col-xxl-3 col-md-4"id="box1">
          <div class="card info-card revenue-card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"
                ><i class="bi bi-three-dots"></i
              ></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">Total Transactions</h5>

              <div class="d-flex align-items-center">
                <div
                  class="card-icon rounded-circle d-flex align-items-center justify-content-center"
                >
                  <i class="fa-solid fa-user-group"></i>
                </div>
                <div class="ps-3">
                  <h6><%= rowCountTransaction %></h6>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
       

        <div class="col-xxl-3 col-md-4"id="box2">
          <div class="card info-card revenue-card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"
                ><i class="bi bi-three-dots"></i
              ></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">Request For Loans</h5>

              <div class="d-flex align-items-center">
                <div
                  class="card-icon rounded-circle d-flex align-items-center justify-content-center"
                >
                  <i class="fa-solid fa-user-group"></i>
                </div>
                <div class="ps-3">
                  <h6>0</h6>
                  <!-- <span class="text-success small pt-1 fw-bold">8%</span>
                  <span class="text-muted small pt-2 ps-1">increase</span> -->
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End Revenue Card -->

        <div class="col-xxl-3 col-md-4"id="box3">
          <div class="card info-card revenue-card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"
                ><i class="bi bi-three-dots"></i
              ></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">Loan Approval</h5>

              <div class="d-flex align-items-center">
                <div
                  class="card-icon rounded-circle d-flex align-items-center justify-content-center"
                >
                  <i class="fa-solid fa-user-group"></i>
                </div>
                <div class="ps-3">
                  <h6>0</h6>
                  <!-- <span class="text-success small pt-1 fw-bold">8%</span>
                  <span class="text-muted small pt-2 ps-1">increase</span> -->
                </div>
              </div>
            </div>
          </div>
        </div>
       


    <!-- Vendor JS Files -->
<!--    <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/chart.js/chart.umd.js"></script>
    <script src="assets/vendor/echarts/echarts.min.js"></script>
    <script src="assets/vendor/quill/quill.min.js"></script>
    <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

     Template Main JS File 
    <script src="assets/js/main.js"></script>
    -->
   
           
  </body>
</html>