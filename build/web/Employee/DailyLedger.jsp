<%-- 
    Document   : DailyLedger
    Created on : 15-Nov-2023, 11:43:09 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <link href="CustomerTransaction.css">
    <!-- Google Fonts -->
    <link href="CustomerTransaction.css"
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />

    
    <link href="assets/css/style.css" rel="stylesheet" />
  
  <style>
      #headings{
        margin-top:80px;
         margin-left:320px;
      }
      #search1{
        width:60rem; 
         margin-top:-00px; 
       margin-left:00px;

      }
      #search{
        background-color: #9F1945;
         margin-top:20px; 
         margin-left: 20px;
         color:white;  
         width:100px; 
         height: 30px;
      }
      #search2{
        margin-top:30px; 
        margin-left:325px; 
        width:62rem;
      }
      #first{
         width: 60rem; 
         margin-top: -00px; 
         margin-left:330px;
         height:20rem;
      }
      @media only screen and (max-width: 360px) {
        #headings{
        margin-top:80px;
         margin-left:40px;
      }
      #search1{
        margin-top:10px; 
        margin-left:00px; 
        width:60px;
        height: 400px;
      }
      #search2{
        margin-top:30px; 
        margin-left:20px; 
        width:300px;
      }
      #search{
        background-color: #9F1945;
         margin-top:15px; 
         margin-left: 30px;
         color:white;  
         width:100px; 
         height: 30px;
      }
      #first{
         width: 15rem; 
         height: 26rem;
         margin-top: -00px; 
         margin-left:20px;
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
   <%@include file="head.jsp"%>
    <div id="headings">
      <span>Dashboard / Report / Customer Transactions / view</span>
    </div>
    
              
              
            
  </ul>
</nav>
</header>
    <td>
    <div class="row border p-4" id="first">
        <div class="col-md-5">
            <p class="6">Customer id:</p>
           <input onkeyup="Idvalidate()" id="amount" type="text" class="form-control">
   <span id="displayid" style="color:red; font-size: 14px;">*</span>
            <pre>

            </pre>
   <span>Previous Date</span>
          <input type="date" class="form-control" placeholder="starting date" aria-label="First name">
        </div>
        <div class="col-md-5">
            <p class="6">Account no:</p>
          <input onkeyup="Idvalidate1()" id="amount1" type="text" class="form-control">
       <span id="displayid1" style="color:red; font-size: 14px;">*</span>
            <pre>
   
            </pre>
         <span>Current Date</span>
          <input type="date" class="form-control" placeholder="current date" aria-label="Last name">
      
        <button  id="search">Search</button>
          </div>
      </div>


<!-- <button  id="search" style="background-color: #194086; margin-top:130px; color:white;  ;width:100px; height: 30px;">Search</button> -->
    <div class="container-fluid border"  id="search2">
        <h5>Daily Ledger</h5>
        <table class="table" id="search1">
            <thead>
              <tr>
                <th scope="col">Trans.Date</th>
                <th scope="col">Customer-id</th>
                <th scope="col">Services</th>
                <th scope="col">Amount </th>
                <th scope="col">Staus</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <!-- <th scope="row"></th> -->
                <td>4/09/23</td>
                <td>**5844</td>
                <td>BillPay</td>
                <td>3000</td>
                <td> Success</td>
              </tr>
              <tr>
                <!-- <th scope="row"></th> -->
                <td>4/09/23</td>
                <td>**8363</td>
                <td>BillPay</td>
                <td>3000</td>
                <td> Success</td>
              </tr>
              <tr>
                <!-- <th scope="row"></th> -->
                <td>4/09/23</td>
                <td>**7544</td>
                <td>BillPay</td>
                <td>10000</td>
                <td> Reject</td>
              </tr>
              <tr>
                
                <td>4/09/23</td>
                <td>**1374</td>
                <td>BillPay</td>
                <td>2450</td>
                <td> Pending</td>
              </tr>
              <tr>
               
                <td>4/09/23</td>
                <td>**6583</td>
                <td>Recharge</td>
                <td>3000</td>
                <td> Reject</td>
              </tr>
              <tr>
               
                <td>4/09/23</td>
                <td>**4753</td>
                <td>BillPay</td>
                <td>3000</td>
                <td> Success</td>
                <tr>
                 
                  <td>4/09/23</td>
                  <td>**8344</td>
                  <td>Recharge</td>
                  <td>3000</td>
                  <td> Success</td>
                </tr>
                <tr>
                  <td>4/09/23</td>
                  <td>**4658</td>
                  <td>BillPay</td>
                  <td>3000</td>
                  <td> Reject</td>
                </tr>
            </tbody>
          </table>
    </div>

    </td>
    </tr>
    </table>
</body>

</html>

