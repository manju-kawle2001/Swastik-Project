<%-- 
    Document   : CustomerTable
    Created on : 15-Nov-2023, 11:38:53 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@ page import=" com.swastik.model.*" %>
<%@ page import="com.swastik.controlar.*" %>
<%@page import="java.util.ArrayList"%>


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
      .box{
        width: 60rem;
         margin-top: 90px; 
         margin-left:310px; 
         height: 25vh;
      }
      .section{
        margin-top: -20px; 
        width:60rem; 
        margin-left: 20rem;
        /* background-color: #194086; */
      }
      #box1{
      width: 60rem; 
      margin-top: 30px; 
      margin-left:310px;
       height: 37vh;
      }
      #input1{
        margin-top:50px;
      }
      #input2{
        margin-top:30px;
      }
      #headings{
        margin-top:100px;
         margin-left:320px;
      }
      #search{
          background-color: #9F1945;
          color: aliceblue;
          margin-top: 20px;
      }
        .btn1{
            background-color: #9F1945;
            color: white;
        }
        #tr{
          width:500px;
          margin-top: 40px;
          margin-left: 140px;
        }
        #First{
            margin-left: -380px;
        }
        #second{
            margin-top:-35px;
/*            margin-left:100px;*/
            
       }
       #date1{
           margin-left: -300px;
           margin-top:-30px;
       
       }
       #dat{
         position: absolute;
         top:80px;
         left:90px;
         margin-top: 30px;
       }
        @media only screen and (max-width: 360px) {
          .box{
        width: 60rem;
         margin-top: 90px; 
         margin-left:310px; 
         height: 30vh;
      }
      .section{
        margin-top: -20px; 
        width:6rem; 
        margin-left: 00rem;
        /* background-color:#194086; */

      }
      #search{
          background-color: #9F1945;
          margin-top: 10px;
          margin-left:50px;
          color:white;
      }
      #box1{
      width: 18rem; 
      margin-top: 30px; 
      margin-left:20px;
       height: 60vh;
      }
       #First{
            margin-left:00px;
        }
        #second{
            margin-top:10px;
/*            margin-left:100px;*/
            
       }
      #input1{
        margin-top:00px;
      }
      #input2{
        margin-top:00px;
      }
      
        #btn1{
            background-color: #9F1945;
            color: white;
            margin-top:-200px;
        }
        #headings{
        margin-top:100px;
         margin-left:25px;
         width:300px;
      }
      #tr{
          width:500px;
          margin-top:50px;
          margin-left: -80px;
        }
        }
    </style>
    <script>
          function Idvalidate() {
    var name = document.getElementById("amount");
    var udisplay = document.getElementById("displayid");

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
            udisplay.innerHTML = "Only numbers are allowed in CustomerId";
            udisplay.style.color = "red";
            return false;
        }
    }
}

    function Idvalidate1() {
    var name = document.getElementById("amount1");
    var udisplay1 = document.getElementById("displayid1");

    if (name.value.trim() == " ") {
        udisplay1.innerHTML = "Amount Required";
        udisplay1.style.color = "red";
        return false;
    } else {
        var reg = /^[0-9]+$/; // Only allow numbers
        if (reg.test(name.value)) {
            udisplay1.innerHTML = "valid";
            udisplay1.style.color = "green";
            return true;
        } else {
            udisplay1.innerHTML = "Only numbers are allowed in Account Number";
            udisplay1.style.color = "red";
            return false;
        }
    }
}
        </script>
  </head>

  <body>
        <%
          AccountOpenDto adto=new AccountOpenDto();
    ArrayList<AccountOpenDao> accountopendao  =adto.getCustomerInformation();
    
   %>
  
    <%@include file="head.jsp"%>
       
     
    <div id="headings">
      <span>Dashboard / Customer / Customer</span>
    </div>
 
<!--<div class="row border p-4" id="box1" >
    <form action="../Employee/CustomerInfomation">-->
<!--  <div class="col-md-5">
      <p class="6">Customer id:</p>
     <input onkeyup="Idvalidate()" id="amount" type="text" class="form-control" id="input1">
     <span id="displayid" style="color:red; font-size: 14px;">*</span><br><br>
   

      </pre>
    <input type="date" class="form-control" placeholder="starting date" aria-label="First name">
  </div> 
  <div class="col-md-5">
      <p class="6">Account no:</p>
    <input onkeyup="Idvalidate1()" id="amount1" type="text" class="form-control" id="input2">
       <span id="displayid1" style="color:red; font-size: 14px;">*</span>
      <button  id="search">Search</button>-->
   
      

<!--  </pre><br>
       <span class="" id="date1">Previous date</span>
        <span id="dat">Current date</span><br>
        <input type="date" class="form-control" placeholder="starting date" id="First" aria-label="First name"/>
       
    <input type="date" class="form-control" placeholder="current date" id="second" aria-label="Last name"/> 
     <button  id="search">Search</button>
  </div>-->
<!--    </form>
     </div>-->
   
 <!-- <button  id="search" style="background-color: #194086; margin-top:50px; color:white;  ;width:100px; height: 30px;">Search</button> -->
</div>
    <section class="section">
        <table class="table table-striped table-hover">
          <thead class="bg-light">
            <tr>
                <h4  id="tr"><center><b>Record</b></center></h4>
                <th>id</th>
              <th>Name</th>
              <th>Account no.</th>
              <th>Amount</th>
              <th>Actions</th>
               </tr>
        <%
                          
              if (accountopendao != null && !accountopendao.isEmpty()) {
                          for(AccountOpenDao bdao: accountopendao)
                         {
                    %>
               
            <tr>
              <td>
                  <div class="ms-3">
                    <p class="fw-bold mb-1"><%= bdao.getCustomerId() %></p>
                    <p class="text-muted mb-0"></p>
                  </div>
                    <div></div>
              </td>
<!--                <div class="d-flex align-items-center">
                  <img
                    src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                    alt=""
                    style="width: 45px; height: 45px"
                    class="rounded-circle"
/>-->                   <td>
                  <div class="ms-3">
                    <p class="fw-bold mb-1"><%= bdao.getName() %></p>
                    <p class="text-muted mb-0"></p>
                  </div>
                     </td>
                </div>
              <!--</td>-->
              <td>
                <p class="fw-normal mb-1"><%= bdao.getAccNum() %></p>
              </td>

              <td><%= bdao.getCurrentBalance() %></td>
           
              <td>
<!--                  <a href="../CustomerRecord?id="class="btn btn-danger">View</a>-->
                <button type="button" class="btn btn-link btn-sm btn-rounded">
                <a href="Profile3.jsp?customerid=<%= bdao.getCustomerId() %>"><button class="btn1">view</button></a>
<!--                     <a href="#?customerid="><button class="btn1">view</button></a>-->

                </button>
              </td>
              
<!--                    <td><a type="button" class="btn btn-secondary" class="btn1" href="#?getCusId=">View</a></td>-->
                

            </tr>
               <%
      }
   } else {
%>
      <p>No data found!</p>
<%
   }
%>
     
          </thead>
             
             
      
        </table>
                     
              
      </section>
</body>
</html>