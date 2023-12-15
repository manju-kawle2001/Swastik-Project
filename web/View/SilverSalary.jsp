<%-- 
    Document   : SilverSalary
    Created on : 29-Nov-2023, 12:39:15 am
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
      .details {
        margin-left: 20px;
        margin-top: 60px;
        width: 80%;
        background-color: white;
        padding: 10px 29px;
        position: relative;
        z-index: 1;
      }
      .details h2 {
        font-size: 22px;
        text-transform: uppercase;
        transition: 0.1s all;
      }
      .details p {
        font-size: 14px;
        transition: 0.1s all;
      }
      .details a {
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
      .details::before {
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
      .details:hover::before {
        width: 100%;
      }
      .details:hover h2,
      .details:hover p {
        color: blanchedalmond;
      }
      .details:hover a {
        background-color: transparent;
        border: 1px solid #fff;
      }
    </style>
    </head>
    <body>
       <%@include file="AllComponent/navbar.jsp" %>
       <nav class="nav" id="save">
      <a
        class="nav-link active text-danger"
        aria-current="page"
        href="index.jsp"
        >Home ></a
      >
      <a class="nav-link active text-danger" href="Accountd.jsp">Account ></a>
      <a class="nav-link active text-dark" href="SilverSalary.jsp"
        >Silver Salary Account</a
      >
    </nav>

    <!-- ------------------------------------------------Start Second row------------------------------------------------ -->
    <div class="benefits w-100 p-4" style="background-color: #f3f3f3;">
      <div class="container">
        <div
          class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-5">
          <div class="col ">
            <h2 class="text-primary">Silver Salary Account</h2><br>
            <p>
                Want a Zero Balance salary account? Look no further than the Silver Salary Account which is a salary account. The Silver Salary Account is a customizable Savings Account that your company can use to remunerate you for the work you do. Hurry and open your Silver Salary Account online at the earliest!
            </p>
          </div>
          <div class="col">
            <img
              class="img-fluid w-100"
              src="https://www.icicibank.com/content/dam/icicibank/icici-assets/personal-banking/salary-account-banner-d.jpg"
              alt=""
            />
          </div>
        </div>
      </div>
    </div>

    <!-- ------------------------------------------------End Second row------------------------------------------------ -->

      
    <!-- ------------------------------------------------Start third row------------------------------------------------ -->
    <div class="benefits p-4" style="background-color: #f8f8f8;">
        <div class="container">
          <div
            class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-5">
            <div class="col w-25">
                <h2>Benefits and Features</h2>
              <ul>
               <li>GET MORE FROM ACCOUNT</li><br>
               <li>CHOOSE MORE CONVENIENT BANKING</li><br>
               <li>LOANS, CREDIT CARD AND OD</li><br>
               <li>BEST IN CLASS INVESTMENT OPTIONS</li><br>
               
              </ul>
            </div>
            <div class="col w-75 " style="background-color:  #fff7eb;"><br>
            <h2 class="text-primary">Get More From Your Salary Account</h2><br>
                <ul>
                    <li>Zero Balance Salary and Reimbursement Account</li>
                    <li>Instant Welcome KIT which includes Debit Card and cheque book</li>
                    <li>Unlimited ATM transactions on Swastik Bank Network</li>
                    <li>Free personalized payable-at-par cheque book</li>
                    <li>Attractive discounts on locker charges</li>
                    <li>Free Inter-Bank Money Transfer through online NEFT</li>
                    <li>Free SMS Alerts</li>

                </ul>
            </div>
          </div>
        </div>
      </div>      
      <!-- ------------------------------------------------End third row------------------------------------------------ -->
      
      
    <!-- ------------------------------------------------Start four row------------------------------------------------ -->
    <div class="benefits w-100 p-4" style="background-color: #fff7eb;">
        <div class="container">
          <div
            class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-4">
            <div class="col ">
              <h2 class="text-primary"><b>STEPS </b>TO APPLY</h2><br>
              <ul>
                <li>Call us at our 24 hour Customer Care Centre.</li><br><br>
                <li>You can just walk into any of our branches.</li><br><br>
                <li>Write to us using the "Email Us" option.</li><br><br>
              </ul>
            </div>
            <div class="col" style="background-color: white;"><br><br>
             <h4>We provide a doorstep account opening facility. A Customer Service representative will come to your company premises at your convenience and get all the necessary documentation done. You would be required to furnish your identity and address proof.</h4>
            </div>
          </div>
        </div>
      </div>
  
      <!-- ------------------------------------------------End four row------------------------------------------------ -->
      <!-- -------------------------------------------------Start five row------------------------------------------------- -->
      <div style="background-color: #f8f8f8">
        <div class="text-center"><br><br>
            <p>*Swastik Bank Ltd has taken the group insurance policy underwritten by Swastik Lombard General Insurance Company Ltd (IRDA Reg. no.: 115) for its active savings account customers from Swastik Bank with effect from 10th Feb 2023. For more details, please visit here</p><br>
            <p>*Terms and Conditions of Swastik Bank and third parties apply. Swastik Bank is not responsible for third party products, goods, services and offers</p><br><br>
        </div>
    </div>
      
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
      integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <script type="text/javascript">
      $(".autoplay").slick({
        slidesToShow: 3,
        dots: true,
        arrow: true,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
      });
    </script>

        <%@include file="AllComponent/footer.jsp" %>
    </body>
</html>
