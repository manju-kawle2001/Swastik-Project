<%-- 
    Document   : UpdateRecord
    Created on : 16-Nov-2023, 12:12:44 am
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
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />
    <link href="DailyLedger.css">
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
  <style>
    .section{
      margin-top:80px; 
      width:60rem; 
      margin-left:20rem;

    }
    #headings{
        margin-top:70px;
         margin-left:320px;
      }
    @media only screen and (max-width: 360px) {
      .section{
      margin-top:80px; 
      width:5px; 
      height: 30rem;
      margin-left:0rem;

    }
    #headings{
        margin-top:70px;
         margin-left:8px;
         width:400px;
      }
    #up{
      width:300px;
      /* margin-left: 20px; */
    }
    .footer{
      width:50vw;
      margin-left:70px;
    }

    }
  </style>

  <body>
   <%@include file="head.jsp"%>
<div id="headings">
  <span>Dashboard / Request / UpdateRequest</span>
</div>
    <section class="section">
        <table class="table table-striped table-hover">
          <thead class="bg-light">
            <tr>
                <h4 id="up"><center><b >Update Request</b></center></h4>
              <th>option</th>
              <th>Old</th>
              <th>New</th>
             
            </tr>
            <tr>
              <td>
                <div class="d-flex align-items-center">
                  
                  <div class="ms-3">
                    <p class="fw-bold mb-1">Name</p>
                    <p class="text-muted mb-0"></p>
                  </div>
                </div>
              </td>
              <td>
              
               Shreya
              </td>
           
              <td>    </td>
              
              <td>
               
              </td>
            </tr>

            <tr>
                <td>
                  <div class="d-flex align-items-center">
                   
                    <div class="ms-3">
                      <p class="fw-bold mb-1">Father name</p>
                      <p class="text-muted mb-0"></p>
                    </div>
                  </div>
                </td>
                <td>
                 
                 Ram
                </td>
  
             
               
                <td> </td>
            
                <td>
                 
                </td>
              </tr>
          </thead>
          <tr>
            <td>
            
                <div class="ms-3">
                  <p class="fw-bold mb-1">Mother name</p>
                  <p class="text-muted mb-0"></p>
                </div>
              </div>
            </td>
            <td>
            Radhika
            </td>

          
            <td></td>
          
            <td>
              
            
            </td>
          </tr>
      </thead>
      <tr>
        <td>
         
            <div class="ms-3">
              <p class="fw-bold mb-1">Mobile no</p>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </td>
        <td>
         94746398685
        </td>

      
        <td></td>
      
        <td>
         
        </td>
      </tr>

      <tr>
        <td>
          
            <div class="ms-3">
              <p class="fw-bold mb-1">Address</Address></p>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </td>
        <td>
        74,Bhawarkua,Indore(M.P)
        </td>

       
        <td></td>
     
        <td>
         
        </td>
      </tr>

      <tr>
        <td>
          <div class="d-flex align-items-center">
          
            <div class="ms-3">
              <p class="fw-bold mb-1">Nominee name</p>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </td>
        <td>
          Deepa
        </td>
        <td></td>
        <td></td>
        <tr>
          <td>
            
            
              <div class="ms-3">
                <p class="fw-bold mb-1">Nominee Adhar</Address></Address></p>
                <p class="text-muted mb-0"></p>
              </div>
            </div>
          </td>
          <td>
            ****34648474
          </td>
          <td></td>
          <td></td>
          <tr>
            <td>
            
                <div class="ms-3">
                  <p class="fw-bold mb-1">Nominee Contact</Address></p>
                  <p class="text-muted mb-0"></p>
                </div>
              </div>
            </td>
            <td>
           9354253744
            </td>
    
  
        
        <td></td>
        <td>
        
        </td>
      </tr>
      
      <tr>
        <td>
        
            <div class="ms-3">
              <p class="fw-bold mb-1"> Nominee Address</Address></p>
              <p class="text-muted mb-0"></p>
            </div>
          </div>
        </td>
        <td>
        80,Bhawarkua,Indore(M.P)
        </td>

       
        <td></td>
       
        <td>
          
        </td>
      </tr>
  </thead>
  <td><center><button style="background-color:#9F1945 ; color:white ; margin-left:60px;">Update</button></center></td><td></td><td></td>
     <td><button type="button" class="btn btn-link btn-sm btn-rounded text-white">
                  </button></td>

        </thead> 
        </table>
        <footer id="footer" class="footer">
          <div class="copyright">
              &copy; Copyright <strong><span>Tech Nerds</span></strong>
            . All Rights Reserved
          </div>
          <div class="credits">Designed by <a href="#">Soniya Kardam</a></div>
        </footer>

       
      </body>
      </html>