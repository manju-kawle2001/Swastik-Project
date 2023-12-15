<%-- 
    Document   : FDInterest
    Created on : 28-Nov-2023, 11:49:28 pm
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
      <a class="nav-link active text-danger" aria-current="page" href="index.jsp"
        >Home ></a
      >
      <a class="nav-link active text-danger" href="Deposit.jsp">Deposite ></a>
      <a class="nav-link active text-dark" href="FDInterest.jsp">FD Interest Rates</a>
    </nav>
    <div class="col- 12 row" id="fix">
      <div class="col-lg-5 col-md-12 col-12 ms-5 mt-5">
        <div class="card">
          <div class="card-body">
            <h2>Fixed Deposit (FD) Interest Rates 2023</h2>
            <br />
            <p>
              Swastik Bank offers interest rates as high as 7.65% p.a. for
              Senior Citizens (above the age of 60 years) and up to 7.1% p.a.
              for citizens below 60 years of age. With the current uncertainty
              and highly volatile market, you can always rely on Swastik Bank’s
              Fixed Deposits for assured and guaranteed returns. An Swastik Bank
              FD is one of the safest FDs and rated as “AAA”, beating any
              competition with ease.
            </p>
            <button
              type="button"
              class="btn btn-outline text-center text-white"
            >
              OPEN YOUR FD NOW</button
            ><br /><br /><br />
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-12 col-12 mt-5 ms-3">
        <div class="card">
          <div class="card-body">
            <img
              src="https://media.licdn.com/dms/image/D4D22AQF3dLw3nCMcZg/feedshare-shrink_2048_1536/0/1696825438569?e=1701907200&v=beta&t=3ElV_87Mj5LONsLsq-7drT_4D3cNPyseMPweQNFZtyM"
              height="310px"
              width="100%"
              class="ms-1"
              alt=""
            />
          </div>
        </div>
      </div>
    </div>

    

    <div class="col-md-12 ms-3">
        <div class="card">
            <div class="card-body">
              

              <div class="accordion accordion-flush" id="accordionFlushExample">
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                      FD Interest rates on Domestic, NRO & NRE deposits(Less than ₹5 Crore)
                    </button>
                  </h2>
                  <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                      <table class="table table-bordered border-primary  text-center" >
                        <!-- <table style="width:100%"> -->
                        <tr class="text-white" style="background-color: #053c6d;  border: 1px solid gray;">
                        <td rowspan="3">Maturity Period</td>
                        <td colspan="2" class="text-center">Interest rates (per cent per annum) w.e.f. October 16, 2023</td>
                        <td colspan="2"  class="text-center">Interest rates (per cent per annum) w.e.f. November 03, 2023</td>
                        </tr>
                        <tr class="text-white" style="background-color: #053c6d;  border: 1px solid gray;">
                       
                        <td colspan="2"  class="text-center">Single deposit of less than ₹2 Crores</td>
                        <td colspan="2"  class="text-center">Single deposit of ₹2 Crores & above but less than ₹5 Crores</td>
                        </tr>
                        <tr  class="text-white" style="background-color: #053c6d;  border: 1px solid gray;">
                     
                        <td>General</td>
                        <td>**Senior Citizen</td>
                        <td>General</td>
                        <td>**Senior Citizen</td>
                        </tr>
                        <tr>
                          <td>7 days to 14 days</td>
                          <td>3.00%</td>
                          <td>3.50%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                        </tr>
                        <tr>
                          <td>15 days to 29 days</td>
                          <td>3.00%</td>
                          <td>3.50%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                        </tr>
                        <tr>
                          <td>30 days to 45 days</td>                         
                          <td>3.50%</td>
                          <td>4.00%</td>
                          <td>5.50%</td>
                          <td>5.50%</td>
                        </tr>
                        <tr>
                          <td>46 days to 60 days</td>                         
                          <td>4.25%</td>
                          <td>4.75%</td>
                          <td>5.75%</td>
                          <td>5.75%</td>
                        </tr>
                        <tr>
                          <td>61 days to 90 days</td>                         
                          <td>4.50%</td>
                          <td>5.00%</td>
                          <td>6.00%</td>
                          <td>6.00%</td>
                        </tr>
                        <tr>
                          <td>91 days to 120 days</td>                         
                          <td>4.75%</td>
                          <td>5.25%</td>
                          <td>6.50%</td>
                          <td>6.50%</td>
                        </tr>
                        <tr>
                          <td>121 days to 150 days</td>                         
                          <td>4.75%</td>
                          <td>5.25%</td>
                          <td>6.50%</td>
                          <td>6.50%</td>
                        </tr>
                        <tr>
                          <td>151 days to 184 days</td>                         
                          <td>4.75%</td>
                          <td>5.25%</td>
                          <td>6.50%</td>
                          <td>6.50%</td>
                        </tr>
                        <tr>
                          <td>185 days to 210 days</td>                         
                          <td>5.75%</td>
                          <td>6.25%</td>
                          <td>6.65%</td>
                          <td>6.65%</td>
                        </tr>
                        <tr>
                          <td>211 days to 270 days</td>                         
                          <td>5.75%</td>
                          <td>6.25%</td>
                          <td>6.65%</td>
                          <td>6.65%</td>
                        </tr>
                        <tr>
                          <td>271 days to 289 days</td>                         
                          <td>6.00%</td>
                          <td>6.50%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                        </tr>
                        <tr>
                          <td>290 days to less than 1 year</td>                         
                          <td>6.00%</td>
                          <td>6.50%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                        </tr>
                        <tr>
                          <td>1 year to 389 days</td>                         
                          <td>6.70%</td>
                          <td>7.20%</td>
                          <td>7.25%</td>
                          <td>7.25%</td>
                        </tr>
                        <tr>
                          <td>390 days to < 15 months</td>                         
                          <td>6.70%</td>
                          <td>7.20%</td>
                          <td>7.25%</td>
                          <td>7.25%</td>
                        </tr>
                        <tr>
                          <td>15 months to < 18 months</td>                         
                          <td>7.10%</td>
                          <td>7.65%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                        </tr>
                        <tr>
                          <td>18 months to 2 years</td>                         
                          <td>7.10%</td>
                          <td>7.65%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                        </tr>
                        <tr>
                          <td>2 years 1 day to 3 years</td>                         
                          <td>7.00%</td>
                          <td>7.50%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        <tr>
                          <td>3 years 1 day to 5 years</td>                         
                          <td>7.00%</td>
                          <td>7.50%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        <tr>
                          <td>5 years 1 day to 10 years</td>                         
                          <td>6.90%</td>
                          <td>7.50%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        <tr>
                          <td>5 Years (80C FD) – Max to `1.50 lac</td>                         
                          <td>7.00%</td>
                          <td>7.50%</td>
                          <td>NA</td>
                          <td>NA</td>
                        </tr>
                        <!-- </table> -->
                    </table>
                    <br>
                    <button type="button" class="btn btn-outline-danger text-white" >START YOUR FD NOW</button><br><br>
                      <p>
                      *NRE rates applicable for tenure of 1 year and above only.<br />
                      **Senior Citizens FD Interest rate are only applicable for domestic term
                      deposits.<br />
                      <b>Special Rates for Senior Citizens:</b>
                      <ul>
                        <li>
                            Additional Rate of Interest of 5 bps, over & above the existing 50 bps will be paid to Senior Citizens on FDs (less than Rs 2 crore) for tenures of 15 months to less than 18 months and 18 months to less than 2 years.
                        </li><br>
                        <li>Additional rate of interest of 10 bps, over & above the existing 50 bps will be paid to Senior Citizen on FDs (Less than Rs. 2 Cr) for tenors of 5 years and above</li>
                      </ul>
                      <b>Note:</b>
                      <ul>
                        <li>
                            As Swastik Bank FD interest rates are subject to change without prior notice, the depositor shall ascertain the rates on the value date of the FD
                        </li><br>
                        <li>Fixed Deposit Interest rate will be subject to Tax Deducted at Source as per Income Tax Laws"(YEAR)".</li><br>
                        <li>No FD Interest Rate would be payble if the depositor withdraws the entire FD amount within 7 days from the date of deposits. Subject to the minimum tenure of 7 days for Domestic and NRO Term Deposits.</li><br>
                        <li>Minimum tenure for NRE Term Deposits is 1 year and no interest is payable for deposits prematurely withdrawn within the period of 1 year from the date of the deposit</li><br>
                        <li>Minimum amount to open domestic FD is Rs 10000 and NRO / NRE term deposits is Rs 25000</li><br>
                        <li>These revised Fixed Deposit interest rates will be applicable for new Swastik Bank Fixed Deposits and renewal of existing Fixed Deposit</li><br>
                        <li>*Senior Citizen rates are applicable only for Domestic Term Deposits</li><br>
                        <li>One customer can avail a maximum tax deduction of Rs 1,50,000 from taxable income through an Swastik Bank tax saver FD</li><br>
                        <li>Swastik Bank staff (including retired staff) will get an additional 1% rate of interest on domestic deposits below Rs 2 crore</li><br>
                        <li>On change of residential status i.e. from Non- Resident to Resident deposits, resident deposit rate of interest shall be applicable.</li>
                    </ul>
                    </p></div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                      FD Interest rates on Domestic, NRO & NRE deposits with Premature Withdrawal facility ( ₹5 cr and above )
                    </button>
                  </h2>
                  <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                      <table class="table table-bordered   text-center" >
                      <!-- <table style="width:100%"> -->
                      <tr style="background-color: #053c6d;  border: 1px solid gray;" class="text-white">
                      <td rowspan="2">Single Deposit
                        Tenure Period</td>
                      <td colspan="18">Fixed Deposits Rate of Interest (%p.a.) w.e.f. November 03, 2023</td>
                      </tr>
                      <tr style="background-color: #053c6d;  border: 1px solid gray;" class="text-white">
                     
                      <td  class="text-center">₹5.00 crore to <₹5.10 crore</td>
                      <td  class="text-center">₹5.10 crore to <₹24.90 crore</td>
                      <td  class="text-center">₹24.90 crore to <₹25.00 crore</td>
                      <td   class="text-center">₹25.00 crore to <₹100.00 crore</td>
                      <td  class="text-center">₹100.00 crore to <₹250.00 crore</td>
                      <td   class="text-center">₹250.00 crore to <₹500.00 crore</td>
                      <td  class="text-center">> = ₹500.00 crore</td>                                          
                    </tr>

                    <tr >
                      <td>7 days to 14 days</td>
                      <td>4.75%</td>
                      <td>4.75%</td>
                      <td>4.75%</td>
                      <td>4.75%</td>
                      <td>4.75%</td>                                       
                      <td>4.75%</td>
                      <td>4.75%</td>
                    </tr>
                    <tr>
                      <td>15 days to 29 days</td>
                      <td>4.75%</td>
                      <td>4.75%</td>
                      <td>4.75%</td>
                      <td>4.75%</td>
                      <td>4.75%</td>                                       
                      <td>4.75%</td>
                      <td>4.75%</td>
                    </tr>
                    <tr>
                      <td>30 days to 45 days</td>                         
                      <td>4.75%</td>                     
                      <td>5.50%</td>
                      <td>4.75%</td>    
                      <td>5.50%</td>
                      <td>5.50%</td>
                      <td>5.50%</td>
                      <td>5.50%</td>
                    </tr>
                    <tr>
                      <td>46 days to 60 days</td>               
                      <td>4.75%</td>
                      <td>5.75%</td>
                      <td>4.75%</td>
                      <td>5.75%</td>
                      <td>5.75%</td>
                      <td>5.75%</td>
                      <td>5.75%</td>
                    </tr>
                    <tr>
                      <td>61 days to 90 days</td>                         
                      <td>4.75%</td>                     
                      <td>6.00%</td>
                      <td>4.75%</td>    
                      <td>6.00%</td>
                      <td>6.00%</td>
                      <td>6.00%</td>
                      <td>6.00%</td>
                    </tr>
                    <tr>
                      <td>91 days to 120 days</td>                         
                      <td>4.75%</td>
                      <td>6.50%</td>
                      <td>4.75%</td>
                      <td>6.75%</td>
                      <td>6.75%</td>
                      <td>6.75%</td>
                      <td>6.75%</td>
                    </tr>
                    <tr>
                      <td>121 days to 150 days</td>                         
                      <td>4.75%</td>                     
                      <td>6.50%</td>
                      <td>4.75%</td> 
                      <td>6.75%</td>
                      <td>6.75%</td>
                      <td>6.75%</td>
                      <td>6.75%</td>
                    </tr>
                    <tr>
                      <td>151 days to 184 days</td>                         
                      <td>4.75%</td>                      
                      <td>6.50%</td>
                      <td>4.75%</td>  
                      <td>6.75%</td>
                      <td>6.75%</td>
                      <td>6.75%</td>
                      <td>6.75%</td>
                    </tr>
                    <tr>
                      <td>185 days to 210 days</td>                         
                      <td>4.75%</td>
                      <td>6.65%</td>
                      <td>4.75%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                    </tr>
                    <tr>
                      <td>211 days to 270 days</td>                         
                      <td>4.75%</td>
                      <td>6.55%</td>
                      <td>4.75%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                    </tr>
                    <tr>
                      <td>271 days to 289 days</td>                         
                      <td>5.00%</td>                     
                      <td>6.75%</td>
                      <td>5.00%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                    </tr>
                    <tr>
                      <td>301 days to 330 days</td>                         
                      <td>5.00%</td>                     
                      <td>6.75%</td>
                      <td>5.00%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                    </tr>
                    <tr>
                      <td>331 days to < 1 year</td>                         
                      <td>5.00%</td>                     
                      <td>6.75%</td>
                      <td>5.00%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                      <td>7.15%</td>
                    </tr>
                    <tr>
                      <td>1 year to 389 days</td>                         
                      <td>5.00%</td>                     
                      <td>7.25%</td>
                      <td>5.00%</td>
                      <td>7.30%</td>
                      <td>7.30%</td>
                      <td>7.30%</td>
                      <td>7.30%</td>
                    </tr>
                    <tr>
                      <td>390 days to < 15 months</td>                         
                      <td>5.00%</td>                     
                      <td>7.25%</td>
                      <td>5.00%</td>
                      <td>7.30%</td>
                      <td>7.30%</td>
                      <td>7.30%</td>
                      <td>7.30%</td>
                    </tr>
                    <tr>
                      <td>15 months to < 18 months</td>                         
                      <td>5.00%</td>                     
                      <td>7.05%</td>
                      <td>5.00%</td>
                      <td>7.05%</td>
                      <td>7.05%</td>
                      <td>7.05%</td>
                      <td>7.05%</td>
                    </tr>
                    <tr>
                      <td>18 months to 2 years</td>                         
                      <td>5.00%</td>                     
                      <td>7.05%</td>
                      <td>5.00%</td>
                      <td>7.05%</td>
                      <td>7.05%</td>
                      <td>7.05%</td>
                      <td>7.05%</td>
                    </tr>
                    <tr>
                      <td>2 years 1 day to 3 years</td>                         
                      <td>5.00%</td>                     
                      <td>7.00%</td>
                      <td>5.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                    </tr>
                    </tr>
                    <tr>
                      <td>3 years 1 day to 5 years</td>                         
                      <td>5.00%</td>                     
                      <td>7.00%</td>
                      <td>5.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                    </tr>
                    <tr>
                      <td>5 years 1 day to 7 years</td>                         
                      <td>5.00%</td>                     
                      <td>7.00%</td>
                      <td>5.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                    </tr>
                    <tr>
                      <td>7 years 1 day to 10 years</td>                         
                      <td>5.00%</td>                     
                      <td>7.00%</td>
                      <td>5.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                      <td>7.00%</td>
                    </tr>
                      </table>
                      <br><br>
                      <b>Note:</b>
                      <ul>
                        <li>
                            As Swastik Bank FD interest rates are subject to change without prior notice, the depositor shall ascertain the rates on the value date of the FD
                        </li><br>
                        <li>Fixed Deposit Interest rate will be subject to Tax Deducted at Source as per Income Tax Laws"(YEAR)".</li><br>
                        <li>No FD Interest Rate would be payble if the depositor withdraws the entire FD amount within 7 days from the date of deposits. Subject to the minimum tenure of 7 days for Domestic and NRO Term Deposits.</li><br>
                        <li>Minimum tenure for NRE Term Deposits is 1 year and no interest is payable for deposits prematurely withdrawn within the period of 1 year from the date of the deposit</li><br>
                        <li>Minimum amount to open domestic FD is Rs 10000 and NRO / NRE term deposits is Rs 25000</li><br>
                        <li>These revised Fixed Deposit interest rates will be applicable for new Swastik Bank Fixed Deposits and renewal of existing Fixed Deposit</li><br>
                        <li>*Senior Citizen rates are applicable only for Domestic Term Deposits</li><br>
                        <li>One customer can avail a maximum tax deduction of Rs 1,50,000 from taxable income through an Swastik Bank tax saver FD</li><br>
                        <li>Swastik Bank staff (including retired staff) will get an additional 1% rate of interest on domestic deposits below Rs 2 crore</li><br>
                        <li>On change of residential status i.e. from Non- Resident to Resident deposits, resident deposit rate of interest shall be applicable.</li>
                    </ul>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                        Swastik Bank Golden Years FD Interest Rates (w.e.f 16th Oct’23)
                    </button>
                  </h2>
                  <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body"><b>
                      Now get an exclusive additional interest rate of 0.10% per annum on your Fixed Deposits above 5 years tenure:</b>
                      <ul>
                        <li>
                          Resident Senior Citizen customers will get an additional interest rate on an FD of 0.10% for a limited time over and above the existing additional rate of 0.50% per annum           </li><br>
                        <li>Scheme applicable from 20th May, 2020 to 30th April, 2024.</li><br>
                        <li>The additional rate will be available on fresh deposits opened as well as deposits renewed during the scheme period</li><br>
                        <li>Eligible FD tenure: 5 years 1 day, up to 10 years</li><br>
                        <li>Applicable on single FD opened through Swastik Bank of an amount less than Rs 2 crore</li><br>
                        <li>Premature withdrawal: In case deposit opened in above scheme is prematurely withdrawn partial or full, the applicable penal rate will be 1%.</li><br>
                        <li>All other features of the FD Deposits as well as terms and condition unchanges and are applicable for the above-mentioned schemes.</li><br>
                        </ul></div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="flush-headingFour">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                        Premature Withdrawal of Fixed Deposit
                    </button>
                  </h2>
                  <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                      <p>On pre-mature withdrawal of the DOMESTIC, NRO & NRE deposits:</p>
                      <ul>
                        <li>FD interest will be calculated at the rate applicable for the period for which the deposit was held with the Bank or contracted rate of the deposit whichever is lower plus applicable penalty as below:</li><br>
                        <li>Penalty will be levied on the rate applicable as per the table below</li>
                      </ul>
                      
                       <table class="table table-bordered   text-center" >
                      <!-- <table style="width:100%"> -->
                      <tr style="background-color: #053c6d;  border: 1px solid gray;" class="text-white">
                      <td rowspan="2">Original Tenure of Deposit</td>
                      <td colspan="18">Penal Rates*</td>
                      </tr>
                      <tr style="background-color: #053c6d;  border: 1px solid gray;" class="text-white">
                     
                      <td  class="text-center">Less than ₹5.0 crore</td>
                      <td  class="text-center">₹5.0 crore & above</td>                                                             
                    </tr>
                    <tr>
                      <td>Less than 1 year</td>
                      <td>0.50%</td>
                      <td>0.50%</td>
                    </tr>
                    <tr>
                      <td>1 year & above but less than 5 years</td>
                      <td>1.00%</td>
                      <td>1.00%</td>
                    </tr>
                    <tr>
                      <td>5 years and abover</td>
                      <td>1.00%</td>
                      <td>1.50%</td>
                    </tr>
                    </table><br>
                    *1. Subject to revision without further notice. <br><br>
                      2. For premature closure of NRE deposits within 1 year, no interest will be payable and no penalty will be levied
                   <br><br>
                   <button type="button" class="btn btn-outline-danger text-white" >START YOUR FD NOW</button>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingFive">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                        FD Interest Rates (without Premature Withdrawal facility)
                      </button>
                    </h2>
                    <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                      <div class="accordion-body">

                        <p>Interest rates on DOMESTIC, NRO & NRE DEPOSITS without premature withdrawal facility ( ₹2 cr and above ). These fixed deposits do not have premature withdrawal facility, i.e., the fixed deposit cannot be closed by the depositor before expiry of the term of such deposit.</p>
                        <table class="table table-bordered   text-center" >
                          <!-- <table style="width:100%"> -->
                          <tr style="background-color: #053c6d;  border: 1px solid gray;" class="text-white">
                          <td rowspan="2">Single Deposit
                            Tenure Period</td>
                          <td colspan="18">Rate of Interest (% p.a.) w.e.f. November 03, 2023</td>
                          </tr>
                          <tr style="background-color: #053c6d;  border: 1px solid gray;" class="text-white">
                         
                          <td  class="text-center">₹5.00 crore to <₹5.10 crore</td>
                          <td  class="text-center">₹5.10 crore to <₹24.90 crore</td>
                          <td  class="text-center">₹24.90 crore to <₹25.00 crore</td>
                          <td   class="text-center">₹25.00 crore to <₹100.00 crore</td>
                          <td  class="text-center">₹100.00 crore to <₹250.00 crore</td>
                          <td   class="text-center">₹250.00 crore to <₹500.00 crore</td>
                          <td  class="text-center">> = ₹500.00 crore</td>                                          
                        </tr>
    
                        <tr >
                          <td>7 days to 14 days</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>                                       
                          <td>4.75%</td>
                          <td>4.75%</td>
                        </tr>
                        <tr>
                          <td>15 days to 29 days</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>
                          <td>4.75%</td>                                       
                          <td>4.75%</td>
                          <td>4.75%</td>
                        </tr>
                        <tr>
                          <td>30 days to 45 days</td>                         
                          <td>4.75%</td>                     
                          <td>5.50%</td>
                          <td>4.75%</td>    
                          <td>5.50%</td>
                          <td>5.50%</td>
                          <td>5.50%</td>
                          <td>5.50%</td>
                        </tr>
                        <tr>
                          <td>46 days to 60 days</td>               
                          <td>4.75%</td>
                          <td>5.75%</td>
                          <td>4.75%</td>
                          <td>5.75%</td>
                          <td>5.75%</td>
                          <td>5.75%</td>
                          <td>5.75%</td>
                        </tr>
                        <tr>
                          <td>61 days to 90 days</td>                         
                          <td>4.75%</td>                     
                          <td>6.00%</td>
                          <td>4.75%</td>    
                          <td>6.00%</td>
                          <td>6.00%</td>
                          <td>6.00%</td>
                          <td>6.00%</td>
                        </tr>
                        <tr>
                          <td>91 days to 120 days</td>                         
                          <td>4.75%</td>
                          <td>6.50%</td>
                          <td>4.75%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                        </tr>
                        <tr>
                          <td>121 days to 150 days</td>                         
                          <td>4.75%</td>                     
                          <td>6.50%</td>
                          <td>4.75%</td> 
                          <td>6.75%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                        </tr>
                        <tr>
                          <td>151 days to 184 days</td>                         
                          <td>4.75%</td>                      
                          <td>6.50%</td>
                          <td>4.75%</td>  
                          <td>6.75%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                          <td>6.75%</td>
                        </tr>
                        <tr>
                          <td>185 days to 210 days</td>                         
                          <td>4.75%</td>
                          <td>6.65%</td>
                          <td>4.75%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        <tr>
                          <td>211 days to 270 days</td>                         
                          <td>4.75%</td>
                          <td>6.55%</td>
                          <td>4.75%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        <tr>
                          <td>271 days to 289 days</td>                         
                          <td>5.00%</td>                     
                          <td>6.75%</td>
                          <td>5.00%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                        </tr>
                        <tr>
                          <td>301 days to 330 days</td>                         
                          <td>5.00%</td>                     
                          <td>6.75%</td>
                          <td>5.00%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                        </tr>
                        <tr>
                          <td>331 days to < 1 year</td>                         
                          <td>5.00%</td>                     
                          <td>6.75%</td>
                          <td>5.00%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                          <td>7.15%</td>
                        </tr>
                        <tr>
                          <td>1 year to 389 days</td>                         
                          <td>5.00%</td>                     
                          <td>7.25%</td>
                          <td>5.00%</td>
                          <td>7.30%</td>
                          <td>7.30%</td>
                          <td>7.30%</td>
                          <td>7.30%</td>
                        </tr>
                        <tr>
                          <td>390 days to < 15 months</td>                         
                          <td>5.00%</td>                     
                          <td>7.25%</td>
                          <td>5.00%</td>
                          <td>7.30%</td>
                          <td>7.30%</td>
                          <td>7.30%</td>
                          <td>7.30%</td>
                        </tr>
                        <tr>
                          <td>15 months to < 18 months</td>                         
                          <td>5.00%</td>                     
                          <td>7.05%</td>
                          <td>5.00%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                        </tr>
                        <tr>
                          <td>18 months to 2 years</td>                         
                          <td>5.00%</td>                     
                          <td>7.05%</td>
                          <td>5.00%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                          <td>7.05%</td>
                        </tr>
                        <tr>
                          <td>2 years 1 day to 3 years</td>                         
                          <td>5.00%</td>                     
                          <td>7.00%</td>
                          <td>5.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        </tr>
                        <tr>
                          <td>3 years 1 day to 5 years</td>                         
                          <td>5.00%</td>                     
                          <td>7.00%</td>
                          <td>5.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        <tr>
                          <td>5 years 1 day to 7 years</td>                         
                          <td>5.00%</td>                     
                          <td>7.00%</td>
                          <td>5.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                        <tr>
                          <td>7 years 1 day to 10 years</td>                         
                          <td>5.00%</td>                     
                          <td>7.00%</td>
                          <td>5.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                          <td>7.00%</td>
                        </tr>
                          </table>
                          <br><br>
                          <button type="button" class="btn btn-outline-danger text-white" >START YOUR FD NOW</button><br><br>
                           <b>
                            For availing Fixed Deposit without premature closure facility, please contact your relationship manager or visit the nearest branch.
                            Specific Terms and conditions for deposits without premature withdrawal facility</b>

                            <ul>
                              <li>These terms and conditions ("Terms") apply to fixed deposits without premature withdrawal facility, opened with ICICI Bank, as per the guidelines prescribed by Reserve Bank of India (RBI) in this regard from time to time ("Fixed Deposit"). These Terms shall be in addition to and not in derogation of the terms and conditions governing ICICI Bank Fixed Deposits available on www.icicibank.com ("Primary Terms"). In the event of any contradiction in the Terms and the Primary Terms, these Terms shall prevail.</li><br>
                              <li>The Fixed Deposit does not have premature withdrawal facility i.e. the Fixed Deposit cannot be closed by the depositor before expiry of the term of such deposit. However, the Bank may allow premature withdrawal of these deposits in following exceptional circumstances: in the event of any direction from any statutory and/or regulatory authority or deceased claim settlement cases.</li><br>
                              <li>In the event of premature withdrawal of these deposits under above mentioned exceptional circumstances, the Bank will not pay any interest on the principal amount of the deposit. Any interest credited or paid upto the date of such premature closure will be recovered from the deposit amount.</li><br>
                              <li>Auto renewal facility is not available for such Fixed Deposits at time of opening of the Fixed Deposit account.</li><br>
                              <li>Minimum tenure for traditional NRO FDs without premature withdrawal facility is 3 months and maximum tenure is 10 years</li><br>
                              <li>Minimum tenure for cumulative NRO FDs without premature withdrawal facility is 6 months and maximum tenure is 10 years</li><br>
                            </ul>
                      </div>
                    </div>
                  </div>
              </div>
            </div>
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
