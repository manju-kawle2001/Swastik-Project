<%-- 
    Document   : CampusPower
    Created on : 28-Nov-2023, 8:51:24 pm
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
        href="index.html"
        >Home ></a
      >
      <a class="nav-link active text-danger" href="Accountd.jsp">Account ></a>
      <a class="nav-link active text-dark" href="SalaryAccount.jsp"
        >Campus Power Account</a
      >
    </nav>

    <!-- ------------------------------------------------Start Second row------------------------------------------------ -->
    <div class="benefits w-100 p-4" style="background-color: #f3f3f3;">
      <div class="container">
        <div
          class="row row-cols-lg-2 row-cols-md-2 row-cols-sm-1 row-cols-1 mt-5">
          <div class="col m-auto">
            <h2 class="text-primary">Campus Power Account-Gateway To Your Dreams: Learning To Earning</h2>
            <p>
              With the Campus Power Account, you gain access to a wide range of financial services and resources that will help you efficiently manage your money throughout your academic journey and even beyond your campus when you transition into the professional world.
            </p><br>
            <button type="button" class="btn btn-outline text-center text-white ms-3">OPEN ACCOUNT INSTANTLY</button>
             
          </div>
          <div class="col">
            <img
              class="img-fluid w-100"
              src="https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/millennial-banking/Mine-Savings-Account.jpg"
              alt=""
            />
          </div>
        </div>
      </div>
    </div>

    <!-- ------------------------------------------------End Second row------------------------------------------------ -->


    <!-- ------------------------------------------------Start Third row------------------------------------------------ -->
      <div class=" text-center" style="background-color: #f8f8f8;"><br><br>
        <b>Steps to Open Campus Power Account instantly -></b><br><br>
        <b>Click the above mentioned Tab > Complete AADHAR & PAN verification > Select Occupation as “Dependent” and Occupation Type as “Student” > Mention name of your institute and verify institute mail ID > Complete the form > Complete Video KYC within 72 hours</b><br><br><br>
      </div>
  
      <!-- ------------------------------------------------End Third row------------------------------------------------ -->
      <section id="portfolio" class="portfolio section-padding mt-2">
        <div class="container">
          
          <div class="row">
            <div class="col-12 col-md-12 col-lg-4 mt-5">
              <div class="card text-light bg-white pb-2" style="width: 23rem; border-radius: 12px;">
                <div class="card-body text-dark">
                  <div class="img-area mb-4">
                    <img
                      src="https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/millennial-banking/savings-account/convenient-banking.jpg"
                      height="250px"
                      width="100%"
                      alt=""
                      class="img-fluid"
                    />
                  </div>
                  <h3 class="mt-2">Account Benefits</h3>
                  <ul style="color: gray;">
                    <li>Zero Balance Saving account for Premium Institute students</li><br>
                    <li>Family Banking Benefits</li><br>
                    <li>Access to payment solutions like UPI, Bill payments, recharge through iMobile Pay app</li><br>
                    <li>Titanium Debit Card with high transaction and withdrawal limit</li><br>
                    <li>Complimentary Air Accident Insurance Death coverage of Rs 50,000</li><br>
                    <li>Alliance Offers on your favorite brands. Click here to know more</li><br><br><br><br><br><br><br><br><br><br><br>
                    <br><br><br><br><br><br><br><br><br><br><br><br>
                    
                  </ul>
                  </div>
              </div>
            </div>
    
            <div class="col-12 col-md-12 col-lg-4 mt-5">
              <div class="card text-light bg-white pb-2"   style="width: 23rem; border-radius: 12px;">
                <div class="card-body text-dark">
                  <div class="img-area mb-3">
                    <img
                      width="100%"
                      src="https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/millennial-banking/savings-account/card.jpg"
                      alt=""
                      class="img-fluid"
                    />
                  </div>
                  <h3 class="mt-2">Lifetime Free Credit Cards – Flexibility to choose Credit Card basis your need</h3>
                  <ul style="color: gray;">
                    <li><h6>Coral Credit Card</h6> </li>
                    <li>Earn 2 Reward Points on all non fuel retail spends and  1 Reward point on every Rs 100, spent on utilities and insurance categories</li><br>
                    <li>Complimentary Domestic Airport lounge access (1 per quarter) and  Railway lounge visit (1 per quarter)</li><br>
                    <li>25% Discount upto Rs. 100 on movie tickets at BookMyShow and Inox, twice every month on each.</li><br>
                    <li><h6>MINE Credit Card –</h6> </li>
                    <li>1% cashback on all retail spends (capped to Rs 100 per month)</li><br>
                    <li>Culinary Treats and Daily Delights – a deal, every day, every week</li><br>
                    <li><h5>Manchester United Platinum Credit Card –</h5> </li>
                    <li>Earn up to 3 ICICI Bank Reward  points on all retail spends</li><br>
                    <li>Complimentary Domestic Airport lounge access (1 per quarter)</li><br>
                    <li>25% Discount upto Rs. 100 on movie tickets at selected cinema ticket retailers</li><br>
                    <li>Monthly top 100 spenders will get a Manchester United branded merchandise </li><br>
                    <h4 >Lifetime free Sapphiro Credit Card for Alumni of selected institutes. Know more </h4>
                  </ul>
                </div>
              </div>
            </div>
    
            <div class="col-12 col-md-12 col-lg-4 mt-5">
              <div class="card text-light bg-white pb-2 " id="carddiv"  style="width: 23rem; border-radius: 12px;">
                <div class="card-body text-dark">
                  <div class="img-area mb-3">
                    <img
                      src="https://www.icicibank.com/content/dam/icicibank/india/managed-assets/images/millennial-banking/savings-account/fashion.jpg" border-radius: 20px;
                      class="img-fluid"
                    />
                  </div>
                  <h3 class="mt-2">Loans & Investments</h3>
                  <ul style="color: gray;">
                    <li><h6>Flexible Investment Options</h6></li><br>
                    <li>iWish RD – Goal based saving with no penalties</li><br>
                    <li>iDirect Account – M52 Prime & Neo plan as per your need</li><br>
                    <li>Mutual Funds – With Robo-advisory</li><br>
                    <li><h6>iSmart Education Loans</h6></li><br>
                    <li>Secured (Up to1 Cr) and Unsecured (Up to 40 Lakhs) loan options available</li><br>
                    <li>Covers wide ranges of courses</li><br>
                    <li>Flexible repayments & part payments options</li><br>
                    <li>Tax benefit under sec 80E</li><br>
                    <li>Expenses Covered – Tuition Fee, Living Expenses, Travel and other expenses related to studies</li><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      
    <!-- ------------------------------------------------Start Fourth row------------------------------------------------ -->
      <div class="mt-5" style="background-color: #f8f8f8;">
        <div class="ms-5"><br><br>
          <h2 >Campus Power Savings Account Eligibility</h2><br>
        <ul>
          <li>Resident Individual</li><br>
          <li>Age -> 18 to 30 Years</li><br>
          <li>Student from Premium Institute</li><br>
        </ul>
        </div>
        <div style="background-color: #fff7eb;">
          <div class="ms-5 "><br>
            <p>For Terms & Conditions, please click here. <br><br>
  
              Note:- Charges and Offers are Subject to change.</p><br><br>
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
