<%-- 
    Document   : MySupport
    Created on : 15-Nov-2023, 11:51:52 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Support Center</title>
    <link href="MySupport.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
   .container{
        margin-top: 50px;
    }
    #first{
      margin-top: 3rem;
      margin-left: 30px;
    }
    #search{
        margin-top: 30px;
        margin-left: 30px;
    } 
</style>
</head>
<body>
    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-4  ">
              <img src="Images/logo1.jpg" alt="" width="180">
            </div>
            <div class="col-lg-5 col-md-12  ">
             <!-- <h2 class="text-primary mt-3"> WELCOME TO SWASTIK</h2> -->
              
            </div>
            <div class="col-lg-3 mt-2">
              <a href="Login.jsp" class="btn btn-primary">Logout</a>
              <i class="bi bi-bell" id="icon"></i>
          </div>
          </div>
          <div class="container-fliud">
          <nav class="navbar navbar-expand-lg navbar-light bg-warning">
            <div class="container-fluid">
             
              <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav text-center">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white px-5" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Home
                    </a>                   
                  </li>
                  <ul class="navbar-nav text-center">
                    <li class="nav-item">
                      <a class="nav-link dropdown-toggle text-white px-5" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        About Us
                      </a>
                    </li>
        
                </ul>
                <ul class="navbar-nav text-center">
                  <li class="nav-item ">
                    <a class="nav-link dropdown-toggle text-white px-5" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Account
                    </a>                   
                  </li>
        
              </ul>
              <ul class="navbar-nav text-center">
                <li class="nav-item">
                  <a class="nav-link dropdown-toggle text-white px-5" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Loans
                  </a>                  
                </li>        
            </ul>
            <ul class="navbar-nav text-center">
              <li class="nav-item">
                <a class="nav-link dropdown-toggle text-white px-5" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Cards
                </a>                
              </li>        
          </ul>
          <ul class="navbar-nav text-center">
            <li class="nav-item ">
              <a class="nav-link dropdown-toggle text-white px-4" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Offers
              </a>              
            </li>        
        </ul>
              </div>
            </div>
          </nav>
        </div>
  </div>

  <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Home.css">
    <title>MySupport</title>
</head>

<body>
    <table>
        <tr>
            <td>
    <div class="container" >
        <div class="sidebar" id="side" style=" margin-top: -50px; margin-left:-20px;">
            <div class="menu-toggle" id="menu-toggle">
                ☰ Menu
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1">My DashBoard</option>
                    <!-- <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option> -->
                </select>
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1"><a>All Services</a></option>
                    <option value="option2"><a>Option 2</a></option>
                    <option value="option3"><a>Option 3</a></option>
                </select>
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1"><a>Customer Profile</a></option>
                    <option value="option2"><a>Option 2</a></option>
                    <option value="option3"><a>Option 3</a></option>
                </select>
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1"><a>Reports</a></option>
                    <option value="option2"><a>Customer Transaction</a></option>
                    <option value="option3"><a>Daily Ledger</a></option>
                    <option value="option3"><a>EMI Report</a></option>
                    <option value="option3"><a>Civil Records</a></option>
                </select>
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1"><a>Track Request</a></option>
                    <!-- <option value="option2"><a>Option 2</a></option>
                    <option value="option3"><a>Option 3</a></option> -->
                </select>
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1"><a>CDM</a></option>
                    <!-- <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option> -->
                </select>
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1">Customer account Block</option>
                    <!-- <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option> -->
                </select>
            </div> 
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1">Support</option>
                    <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option>
                </select>
            </div>
            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1">EKYC</option>
                    <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option>
                </select>
            </div>

            <div class="menu" id="menu">
                <!-- <label for="options">Select an Option:</label> -->
                <select id="options">
                    <option value="option1">Update Request</option>
                    <option value="option2">Option 2</option>
                    <option value="option3">Option 3</option>
                </select>
            </div>
            
            
        </div>
        <!-- <div class="content">
            <h2>Main Content Goes Here</h2>
        </div> -->
    </div>
</td>
<td id="wid">

<!-- <div class="container border"> -->
<h3 class="text"><center>My Support Centre</center></h3>
<div class="dis">
<div class="box">
    <h5 class="text"  style="margin-top: 20px;">Supprt Details</h5><br>
    <p class="text">customercare@payworldIndia.com</p><br>
    <h5 class="text-left">7835833333</h5><br>
    <h5 class="text">0124-690888</h5>
</div>

<div class="box">
    <h5 class="text"  style="margin-top: 20px;">Your Territary Manager</h5><br>
    <p class="text">customercare@payworldIndia.com</p><br>
    <h5 class="text-left">7835833333</h5><br>
    <h5 class="text">0124-690888</h5>
</div>
<div class="box">
    <h5 class="text"  style="margin-top: 20px;">Distributor</h5><br>
    <p class="text">customercare@payworldIndia.com</p><br>
    <h5 class="text-left">7835833333</h5><br>
    <h5 class="text">0124-690888</h5>
</div>
</div>



<div class="dis">
    <div class="box">
        <h5 class="text"  style="margin-top: 20px;"> Trnsactional Query</h5><br>
        <p class="text">customercare@payworldIndia.com</p><br>
        <h5 class="text-left">7835833333</h5><br>
        <h5 class="text">0124-690888</h5>
    </div>
    
    <div class="box">
        <h5 class="text"  style="margin-top: 20px;"> Payments Query</h5><br>
        <p class="text">customercare@payworldIndia.com</p><br>
        <h5 class="text-left">7835833333</h5><br>
        <h5 class="text">0124-690888</h5>
    </div>
    <div class="box">
        <h5 class="text"  style="margin-top: 20px;">GenralQuery</h5><br>
        <p class="text">customercare@payworldIndia.com</p><br>
        <h5 class="text-left">7835833333</h5><br>
        <h5 class="text">0124-690888</h5>
    </div>
    </div>


</td>
</div>
</body>
</html>