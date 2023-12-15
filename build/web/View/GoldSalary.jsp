<%-- 
    Document   : GoldSalary
    Created on : 29-Nov-2023, 12:00:27 am
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
      <a class="nav-link active text-dark" href="SalaryAccount.jsp"
        >Gold Salary Account</a
      >
    </nav>

    <!-- ------------------------------------------------Start Second row------------------------------------------------ -->
    <div class="benefits w-100 p-4" style="background-color: #f3f3f3;">
      <div class="container">
        <div
          class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-5">
          <div class="col ">
            <h1>Gold Salary Account</h1>
            <p>
                Open up to the world of Gold Salary Account <br><br>

                A perfect combination of banking convenience and exclusive offers
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
               <li>EXCLUSIVE OFFERS</li><br>
               <li>SPECIAL PRIVILEGES</li>
              </ul>
            </div>
            <div class="col w-75 " style="background-color:  #fff7eb;"><br>
                <h2>Special Privileges For Family Members</h2><br>
              <ul>
                <li>Zero Balance Companion Account for up to 5 members (Parents, Spouse, Children)</li><br>
                <li> Personal accident death insurance of Rs. 5 Lakhs and Air accident death insurance of Rs. 30 Lakhs</li><br><br><br>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div style="background-color: #fff7eb;;">
        <div class="text-center"><br><br>
            <p>Swastik Bank Ltd has taken the group insurance policy underwritten by Swastik Lombard General Insurance Company Ltd (IRDA Reg. no.: 115) for its active savings account customers from Swastik Bank with effect from 10th Feb 2023. For more details, please visit here</p>
            <br><p>*Terms and Conditions of Swastik Bank and third parties apply. Swastik Bank is not responsible for third party products, goods, services and offers </p><br><br><br><br>
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
