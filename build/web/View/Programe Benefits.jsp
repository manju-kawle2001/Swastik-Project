<%-- 
    Document   : Programe Benefits
    Created on : 29-Nov-2023, 12:24:48 am
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
      <a class="nav-link active text-dark" href="SalaryAccount.jsp"
        >Select Plus Salary Account</a
      >
    </nav>

    <!-- ------------------------------------------------Start Second row------------------------------------------------ -->
    <div class="benefits w-100 p-4" style="background-color: #f3f3f3;">
      <div class="container">
        <div
          class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-5">
          <div class="col m-auto">
            <p>
              As an Swastik Bank Privilege Banking member, you get to <br />
              enjoy a range of banking, pricing, investment and special
              benefits, <br />
              which you can even extend to your family.
            </p>
          </div>
          <div class="col">
            <img
              class="img-fluid w-100"
              src="https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/programe-benefits.jpg"
              alt=""
            />
          </div>
        </div>
      </div>
    </div>

    <!-- ------------------------------------------------End Second row------------------------------------------------ -->


    <!-- ------------------------------------------------Start Third row------------------------------------------------ -->
    <div class="benefits w-100 p-4" style="background-color: #f8f8f8;">
        <div class="container">
          <div
            class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-5">
            <div class="col m-auto w-25">
              <ul>
                <li><a href="" class=" nav-link text-dark">PRICING BENEFITS:</a></li><br>
                <li><a href="" class="  nav-link text-dark">INVESTMENT BENEFITS </a></li><br>
                <li><a href="" class="  nav-link text-dark">SPECIAL BENEFITS</a></li><br>
                <li><a href="" class="  nav-link text-dark">INTERNET BANKING</a></li><br>
               
              </ul>
            </div>
            <div
            class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 w-75 " style="background-color: #fff7eb;">
            <div class="col m-auto ">
             <ul>
                <li  style="color: #737392;">Complimentary death benefit of Rs 40 lakh for Air Accidental Death Cover and Rs 10 lakh for Non-Air Accidental Death Cover – No additional conditions</li><br>
                <li  style="color: #737392;">Click Here to know the details of the claim process.</li>
             </ul>
            </div>
            <div class="col m-auto ">
                <img class="img-fluid" src="https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/special-benefits.jpg" alt="">
              </div>
          </div>
          </div>
        </div>
      </div>
  
      <!-- ------------------------------------------------End Third row------------------------------------------------ -->
      

      
    <!-- ------------------------------------------------Start Fourth row------------------------------------------------ -->
    <div class="benefits w-100 p-4" style="background-color: #f8f8f8;">
        <div class="container">
          <div
            class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-5">
            <div class="col w-25">
              <ul>
                <li>
                    BANKING BENEFITS</li>
              </ul>
            </div>
            <div class="col w-75" style="background-color:  #fff7eb;;">
              <ul>
                <li>Dedicated Relationship Manager (RM)</li><br>
                <li>Privilege access across all ICICI Bank Branches</li><br>
                <li>Flexibility of maintaining Total Relationship Value across group accounts</li><br>
                <li>Titanium Debit Card for privilege members</li><br>
                <li>Money Saver Home Loan that offers savings on your interest amount</li><br>
                <li>CASA Pooling Facility to avail balance fungibility across Savings and Current Accounts</li><br>
                <li>Single sign in facility to enable easier switch between Retail Internet Banking and Corporate Internet Banking platforms</li><br>
                <li>Unified Banking: Primary member can view and transact on behalf of family members. Individual family members can also continue to transact through their own account.</li><br>
              </ul>
            </div>
          </div>
        </div>
      </div>
  
      <!-- ------------------------------------------------End Fourth row------------------------------------------------ -->
  

    <footer>
      <div class="foot">&nbsp;</div>
      <div class="container" id="footer">
        <div class="row">
          <div class="col-xl-3 col-lg-4 col-md-6">
            <div>
              <h3><img src="img/Logo_New-3.png" alt="" width="200px" /></h3>
              <p class="footer-desc">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad
                soluta facilis eos quia optio iusto odit atque eum tempore,
                quisquam officiis vero veniam hic,
              </p>
            </div>
            <div class="footicon">
              <a href="#"><i class="icon fa-brands fa-twitter"></i></a>
              <a href="#"><i class="icon fa-brands fa-instagram"></i></a>
              <a href="#"><i class="icon fa-brands fa-linkedin"></i></a>
              <a href="#"><i class="icon fa-brands fa-facebook"></i></a>
              <a href="#"><i class="icon fa-brands fa-github"></i></a>
            </div>
          </div>
          <div class="col-xl-2 offset-xl-1 col-lg-2 col-md-6">
            <div class="text-white">
              <h4>Quick Link</h4>
              <ul class="list-unstyled">
                <li>
                  <a href="#" class="text-decoration-none">Home</a>
                </li>
                <li>
                  <a href="#" class="text-decoration-none">About Us</a>
                </li>
                <li>
                  <a href="#" class="text-decoration-none">Service</a>
                </li>
                <li>
                  <a href="#" class="text-decoration-none">Contact</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-6">
            <div class="text-white">
              <h4>Popular products</h4>
              <ul class="list-unstyled">
                <li>
                  <a href="#" class="text-decoration-none">Accounts</a>
                </li>
                <li>
                  <a href="#" class="text-decoration-none">Cards</a>
                </li>
                <li>
                  <a href="#" class="text-decoration-none">Loan</a>
                </li>
                <li>
                  <a href="#" class="text-decoration-none">Deposit</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-6">
            <div class="text-white">
              <h4>Newsletter</h4>
              <div>
                <label for="Newsletter" class="form-label"
                  >Subscribe to our newsletter</label
                >
                <input
                  type="text"
                  class="form-control"
                  placeholder="Enter Your Email"
                />
                <button class="btn text-white mt-3">Subscribe</button>
              </div>
            </div>
          </div>
        </div>
        <div class="d-flex justify-content-center text-white">
          <div class="copyright">
            <p>
              Developed and maintained by
              <a href="#" target="_blank">Tech Nerds</a>
            </p>
          </div>
        </div>
        <div class="d-flex justify-content-center text-white">
          <div class="copyright">
            All Right Reserved
            <a href="Index.html">@Swastik Bank</a>
          </div>
        </div>
      </div>
    </footer>

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
