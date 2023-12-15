<%-- 
    Document   : fixedDeposit
    Created on : 28-Nov-2023, 11:54:44 pm
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
    <a class="nav-link active text-danger " href="Deposit.jsp">Deposite ></a>
    <a class="nav-link active text-dark" href="fixedDeposit.jsp">Fixed Deposite</a>
    
  </nav>
    <div class=" col- 12 row" id="fix">
      
      <div class="col-lg-5 col-md-12 col-12 ms-5 mt-5">
          <div class="card">
              <div class="card-body">
                 <h2>Fixed Deposit</h2><br>
                 <p>Earn assured returns on your savings and meet your short-term as well as long-term goals with an Swastik Bank Fixed Deposit. Offering high interest rates and flexible investment tenures, our Fixed Deposits are one of the safest investment options. Opt for an Swastik Bank FD and let your investment grow over a period ranging from seven days to a decade! <br><br>

                  You can open an FD with us through a number of channels like Internet Banking or iMobile. If you prefer accessing our banking services in-person, please get in touch with your relationship manager or simply visit the nearest Swastik Bank Branch to start your Fixed Deposit investment journey.</p>
                 <button type="button" class="btn btn-outline text-center text-white ">OPEN YOUR FD NOW</button><br><br><br>
              </div>
              
          </div>
         
          
         </div>
         <div class="col-lg-6 col-md-12 col-12 mt-5 ms-3">
          <div class="card">
              <div class="card-body">
                 <img src="https://media.licdn.com/dms/image/D4D22AQF3dLw3nCMcZg/feedshare-shrink_2048_1536/0/1696825438569?e=1701907200&v=beta&t=3ElV_87Mj5LONsLsq-7drT_4D3cNPyseMPweQNFZtyM" height="450px" width="100%" class="ms-1" alt="">
                  
                      </div>
              
          </div>
         
          
         </div>
               
  </div>

  <div class="type deposit mt-5">
      <h1>Types of Fixed Deposite</h1>
      <div class="accordion" id="accordionExample">
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                Regular Fixed Deposits
              </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                <p >1. Simple investment product which offers safety, liquidity, flexibility and assured returns. <br><br>
                   2. FD can be opened for minimum amount of ₹10,000. <br><br>
                   3. Choose from flexible tenure ranging from seven (7) days to ten (10) years <br><br>
                   4. Instant opening through both iMobile and internet banking. <br><br>
                   5. Overdraft (OD) against FD up to 90% on principal plus accrued interest <br><br>
                   6. Option of premature/partial withdrawal for urgent funds requirement <br></p>
              </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                  Golden years Fixed Deposit from Swastik Bank
              </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                  <p>
                  Now get an exclusive additional interest rate of 0.10% on your Fixed Deposits above 5 years tenure
                  <br><br>
              1. Resident Senior citizen customers, will get an additional interest rate of 0.10% for limited time over and above existing additional rate of 0.50% <br><br>
              2. Scheme applicable from 20th May, 2020<br><br>
              3. The additional rate will be available on fresh deposits opened as well as deposits renewed during the scheme period.<br><br>
              4. Eligible FD tenure: 5 years 1 day up to 10 years<br><br>
              5. Applicable on single FD of amount < 2cr<br><br>
              6. Premature withdrawal: In case deposit opened in above scheme is prematurely withdrawn/closed after, on or after 5 years 1 day, the applicable penal rate will be 1.10%. In case the deposit opened in above scheme is prematurely withdrawn/closed before 5 years 1 day, the prevailing premature withdrawal policy will be applicable.<br><br>
              7. In case any Fixed Deposit opened or renewed under this scheme is prematurely withdrawn/closed before five years and one day, the prevailing premature withdrawal policy is applicable.<br><br>
              8. All other features of term deposit as well as terms and conditions shall remain unchanged and are applicable for the above scheme also.<br><br>
                                  </p>
                 </div>
            </div>
          </div>
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Money Multiplier FD
              </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
              <div class="accordion-body">
                  <p>
                      The Money Multiplier feature gives you the liquidity of a Savings Account coupled with high earnings of a Fixed Deposit. This is achieved by creating a Fixed Deposit linked to your Savings Account providing you the unique facilities.

                      Features: <br><br>
                  1. Minimum balance in the Savings/Current Account should be ₹15,000 to generate a linked FD request.<br><br>
                  2. The linked FDs will be under the same Customer ID and will be for a minimum tenure of 1 year for Savings Account customer.<br><br>
                  3. All FDs linked to the account will be enabled for automatic reverse sweep when the balance in the Savings Accounts falls below ₹10,000 for individual customers.<br><br>
                  4. FDs will be broken in Last-In, First-Out (LIFO) basis for reverse sweep.<br><br>
                  5. The Fixed Deposit will be opened in auto renewal mode. The deposit will be renewed for the same tenure as the original tenure.<br><br>
                  6. The interest rate on such Fixed Deposit will be the rate applicable for the respective period, prevailing as on the date of such auto renewal<br><br>
                                      </p>
                                  </div>
                              </div>
          </div>
          <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                   Tax Saver Fixed Deposites
                </button>
              </h2>
              <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                   <p>
                      Unique product which offers dual benefits of assured returns and tax savings. Tax Saver Fixed Deposits offers tax deduction up to ₹1.5 lakh under Section 80C of Income Tax Act.
                      <br><br>
                      1. Invest as small as ₹10,000 <br><br>
                      2. Fixed tenure of five years <br><br>
                      3. Get tax deduction up to ₹1,50,000 under Section 80C* <br><br>
                      4. Flexible interest payout – monthly, quarterly or reinvestment in principal <br><br>
                      5. No premature withdrawal and auto-renewal facility <br><br>
                      6. Interest earned is taxable <br><br>
                      7. *Subject to Income Tax Act, 1961 and amendments thereto. <br><br>
                   </p>
                   </div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                   Overdraft Against your Fixed Deposits
                </button>
              </h2>
              <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                  <p>
                      Avail an overdraft against your fixed deposit of up to 90% of the principal and accrued interest, subject to ICICI Bank’s sole discretion. With this advantage, you can take care of your short-term emergency requirements without any hassles.
                  </p>
               </div>
              </div>
            </div>
        </div>
  </div>

  <!-- -----------------------------------------------------Start Third-row------------------------------------------------------- -->
      <div class="row autoplay">
        <!-- <h1></h1> -->

        <div class="col-md-12">
          <div class="details">
              
              <h3>To know how to create fixed Deposit on Internet Banking</h2>
             
          </div>
        </div>
          <div class="col-md-12">
            <div class="details">
                
              <h3>To know how to create fixed Deposit on iMobile</h3>
             
            </div>
          </div>

          <div class="col-md-12">
            <div class="details">
                
              <h3>To know how to create Instant FD through iMobile </h2>
              
            </div>
          </div>

          <div class="col-md-12">
            <div class="details">
                
              <h3>How to  create FD through other Bank account via UPI</h2>
               
            </div>
          </div>

          <div class="col-md-12">
            <div class="details">
                
              <h3>How to Manage your  Deposit on Internet Banking</h3>
               
            </div>
          </div>

          <div class="col-md-12">
            <div class="details">
              
              <h3>How to Manage your  Deposit on iMobile</h3>
               
            </div>
          </div>

          <div class="col-md-12">
            <div class="details">
                
              <h3>How to Manage your Fixed Deposit on Internet Banking</h2>
               
            </div>
          </div>
      </div>
         
  <!-- -----------------------------------------------------End Third-row------------------------------------------------------- -->

  <!----------------------------------------------------------Start fourth row------------------------------------------  -->
  <section id="portfolio" class="portfolio section-padding mt-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12 mt-5">
          <div class="section-header pb-4">
           <h2 class="text-center"> CHOICE OF FD PLANS</h2>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-12 col-md-12 col-lg-4 mt-5">
          <div class="card text-light bg-white pb-2" style="width: 23rem; border-radius: 12px;">
            <div class="card-body text-dark">
              <div class="img-area mb-4">
                <img
                  src="https://www.icicibank.com/content/dam/icicibank/managed-assets/images/account-deposit/fixed-deposit-vs-savings-account-small.jpg"
                  height="250px"
                  width="100%"
                  alt=""
                  class="img-fluid"
                />
              </div>
              <h3 class="text-center mt-5">Traditional plan</h3>
              <p style="color: gray;">
               Earn interest on a monthly or quarterly basis as per your requirement with out traditional fixed deposite, which has a maturiy peri
              </p>
              <button type="button" class="btn btn-outline-danger text-white"  id="butcenter">OPEN YOUR FD NOW</button>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-12 col-lg-4 mt-5">
          <div class="card text-light bg-white pb-2"   style="width: 23rem; border-radius: 12px;">
            <div class="card-body text-dark">
              <div class="img-area mb-3">
                <img
                  width="100%"
                  src="https://www.icicibank.com/content/dam/icicibank/managed-assets/images/account-deposit/tax-saver-fd-benefits.jpg"
                  alt=""
                  class="img-fluid"
                />
              </div>
              <h3 class="text-center mt-5">Reinvestment plan</h3>
              <p style="color: gray;">
                Earn interest that is compounded quarterly and reinvested along with the principal amount through our reinvestment plan, which come               </p>
                <button type="button" class="btn btn-outline-danger text-white"  id="butcenter">OPEN YOUR FD NOW</button>
              </div>
          </div>
        </div>

        <div class="col-12 col-md-12 col-lg-4 mt-5">
          <div class="card text-light bg-white pb-2 " id="carddiv"  style="width: 23rem; border-radius: 12px;">
            <div class="card-body text-dark">
              <div class="img-area mb-3">
                <img
                  src="https://www.icicibank.com/content/dam/icicibank/managed-assets/images/account-deposit/knowing-the-benefits-of-investing-in-flexi-fixed-deposit.jpg" border-radius: 20px;
                  class="img-fluid"
                />
              </div>
              <h3 class="text-center mt-5">Money Multiplier</h3>
              <p style="color: gray;">
                Money Multipiler feature gives you the liquidity of a savings account coupled with assured returns of a fixed deposit.
               </p>
               <button type="button" class="btn btn-outline-danger text-white"  id="butcenter">OPEN YOUR FD NOW</button>
              </div>
          </div>
        </div>
      </div>
    </div>
  </section>


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
