<%-- 
    Document   : SalaryAccount
    Created on : 29-Nov-2023, 12:28:56 am
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
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
    />
    <link rel="stylesheet" href="AllComponent/style.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.css"
      integrity="sha512-6lLUdeQ5uheMFbWm3CP271l14RsX1xtx+J5x2yeIDkkiBpeVTNhTqijME7GgRKKi6hCqovwCoBTlRBEC20M8Mg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css"
      integrity="sha512-wR4oNhLBHf7smjy0K4oqzdWumd+r5/+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <style>
      .details{
        
        margin-left: 20px;
        margin-top: 60px;
        width: 80%;
        background-color: white;
        padding: 10px 29px;
        position: relative;
        z-index: 1;
      }
      .details h2{
        font-size: 22px;
        text-transform: uppercase;
        transition: 0.1s all;
      }
      .details p{
        font-size: 14px;        
        transition: 0.1s all;
      }
      .details a{
        text-decoration: none;
        text-transform: capitalize;
        color: white;
        background-color: #2c3e50;
        padding: 6px 12px;
        display: inline-block;
        font-size: 14px;
        border-radius: 20px;
        border: 1px solid #2c3e50;
        transition: 0.1s all;
      }
      .details::before{
        content: "";
        width: 2px;
        height: 100%;
        background-color: #ff5722;
        position: absolute;
        left: 0;
        top: 0;
        z-index: -1;
        transition: 0.1s all;
      }
      .details:hover::before{
        width: 100%;
      }
      .details:hover h2,.details:hover p{
        color: blanchedalmond;
      
      }
      .details:hover a{
        
       background-color: transparent;
       border: 1px solid #fff;
      }
      
    </style>
    </head>
    <body>
        <%@include file="AllComponent/navbar.jsp" %>
        <nav class="nav " id="save">
    <a class="nav-link active text-danger" aria-current="page" href="index.jsp">Home ></a>
    <a class="nav-link active text-danger " href="Accountd.jsp">Account ></a>
    <a class="nav-link active text-dark" href="SalaryAccount.jsp">Select Plus Salary Account</a>
    
  </nav>
    <div class=" col- 12 row bg-light" id="fix">
      
      <div class="col-lg-5 col-md-12 col-12 ms-5 mt-5 ">
          <div class="card">
              <div class=""><br><br>
                 <h2 class="text-primary ms-3">Select Plus Salary Account</h2><br>
                 <p class="ms-3">Select Plus Salary Account is aimed at benefitting high income or net worth individuals looking to gain premium features from their bank account. This Salary Account can help such individuals in making smart investments to secure their family’s future. This Salary Account will also ensure that they are able to reap the benefits of their success and upgrade their lifestyle. Keeping these needs in mind, we have designed this account with the following benefits.</p><br>
                
              </div>
              
          </div>
         
          
         </div>
         <div class="col-lg-6 col-md-12 col-12 mt-5 ms-3">
          <div class="card">
              <div class="card-body">
                 <img src="https://www.icicibank.com/content/dam/icicibank/icici-assets/personal-banking/salary-account-banner-d.jpg" height="290px" width="100%" class="ms-1" alt="">
               </div>
          </div>        
      </div>               
  </div>
  <div class=" col- 12 row " id="fix">
      
    <div class="col-lg-5 col-md-12 col-12 ms-5 mt-5 ">
        <div class="card">
            <div class=""><br>
              <h2 >Benefits And Features</h2>
              
                <a class="nav-link active text-dark" aria-current="page" href="">EXCLUSIVE PRIVILEGES </a>
                <a class="nav-link active text-dark " href="">
                    BANKING BENEFITS </a>
                <a class="nav-link active text-dark" href="">
                    BEST IN CLASS INVESTMENT OPTIONS</a>
                    <a class="nav-link active text-dark" aria-current="page" href="">
                        CHOOSE MORE CONVENIENT BANKING </a>
                    <a class="nav-link active text-dark " href="">                       
                    LOANS, CREDIT CARD, SALARY OVERDRAFT AND PAYLATER </a>
                    <a class="nav-link active text-dark" href="">                        
                    EXCLUSIVE OFFERS</a>                  
                </div>           
        </div>
       
        
       </div>
       <div class="col-lg-6 col-md-12 col-12 mt-5 ms-3">
        <div class="card" style="background-color: #fff7eb;">
            <div class="card-body" >
               <h2 class="text-primary">Exclusive Privileges</h2><br><br>
               <ul>
                <li>Access to a dedicated Privilege Banking area for priority service in branches</li><br>
                <li>Free Titanium Debit Card with higher withdrawal and spend limits</li><br>
               </ul>
            </div>
        </div>        
    </div>               
</div>
  
<div style="background-color: #fff7eb;" class="mt-5">
    <h2 class="ms-5 mt-3">Note –</h2><br>
    <ul  class="ms-5 "">
        <li>Swastik Bank Ltd has taken the group insurance policy underwritten by Swastik Lombard General Insurance Company Ltd (IRDA Reg. no.: 115) for its active Savings Account customers from Swastik Bank with effect from 10th Feb 2023. For more details, click here</li><br>
        <li>* Terms and Conditions of Swastik Bank and third parties apply. Swastik Bank is not responsible for third party products, goods, services and offers.</li>
    </ul>

</div>
  
      

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script type="text/javascript">
     $('.autoplay').slick({
  slidesToShow: 3,
  dots:true,
  arrow:true,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 3000,
});
  </script>
        <%@include file="AllComponent/footer.jsp" %>
    </body>
</html>
