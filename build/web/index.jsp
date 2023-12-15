<%-- 
    Document   : index
    Created on : 29-Nov-2023, 1:08:52 am
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
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css"
            />
        <link rel="stylesheet" href="View/AllComponent/style.css" />
    </head>
    <body>
              <div class="shadow bg-white rounded fixed-top">
              <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                  <a class="navbar-brand " href="#"
                    ><img src="View/AllComponent/img/Logo_New-3.png" height="40px" width="140px" alt=""
                  /></a>
                  <button
                    class="navbar-toggler bg-light"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-auto">
                      <li class="nav-item ms-4">
                        <a class="nav-link active text-white" id="top-nav" href="index.jsp"
                          >Home</a
                        >
                      </li>
                      <li class="nav-item ms-4">
                        <a class="nav-link active text-white " id="top-nav" href="View/About.jsp"
                          >About Us</a
                        >
                      </li>
                      <li class="nav-item ms-4">
                        <a class="nav-link active text-white" id="top-nav" href="View/Accountd.jsp"
                          >Account</a
                        >
                      </li>
                      <li class="nav-item ms-4">
                        <a class="nav-link active text-white" id="top-nav" href="View/Loan.jsp"
                          >Loans</a
                        >
                      </li>
                      <li class="nav-item ms-4">
                        <a class="nav-link active text-white "   id="top-nav" href="View/Cards.jsp"
                          >Cards</a
                        >
                      </li>
                      <li class="nav-item ms-4">
                        <a class="nav-link active text-white " id="top-nav" href="View/Offers.jsp"
                          >Offers</a
                        >
                      </li>
                      <li class="nav-item dropdown ml-5 text-white">
                        <a
                          class="nav-link dropdown-toggle ms-5 text-white"
                          style="font-size: 20px"
                          href="#"
                          id="navbarDropdown"
                          role="button"
                          data-bs-toggle="dropdown"
                          aria-expanded="false"
                        >
                          Login
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <li>
                            <a class="dropdown-item" href="View/Login.jsp">Customer</a>
                          </li>
                          <li><a class="dropdown-item" href="Employee/EmployeeLogin.jsp">Employee</a></li>
                          <li><a class="dropdown-item" href="Manager/Login.jsp">Admin</a></li>
                           <li><hr class="dropdown-divider"></li> 
                           <li><a class="dropdown-item" href="#">Something else here</a></li> 
                        </ul>
                      </li>
                    </ul>
                   
                  </div>
                </div>
              </nav>
            </div>
   

        <%--<%@include file="AllComponent/navbar.jsp" %>--%>


        <div
            id="carouselExampleCaptions"
            class="carousel slide"
            data-bs-ride="carousel"
            >
            <div class="carousel-indicators">
                <button
                    type="button"
                    data-bs-target="#carouselExampleCaptions"
                    data-bs-slide-to="0"
                    class="active"
                    aria-current="true"
                    aria-label="Slide 1"
                    ></button>
                <button
                    type="button"
                    data-bs-target="#carouselExampleCaptions"
                    data-bs-slide-to="1"
                    aria-label="Slide 2"
                    ></button>
                <button
                    type="button"
                    data-bs-target="#carouselExampleCaptions"
                    data-bs-slide-to="2"
                    aria-label="Slide 3"
                    ></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://cash-bay.cmsmasters.net/wp-content/uploads/2015/11/h1.jpg" 

                         class="d-block w-100"
                         alt="..."
                         />
                </div>
                <div class="carousel-item">
                    <img
                        src="https://cash-bay.cmsmasters.net/wp-content/uploads/2015/11/h1.jpg"
                        class="d-block w-100"
                        alt="..."
                        />
                </div>
                <div class="carousel-item">
                    <img
                        src="https://cash-bay.cmsmasters.net/wp-content/uploads/2015/11/h1.jpg"
                        class="d-block w-100"
                        alt="..."
                        />
                    <div class="carousel-caption"></div>
                </div>
            </div>
            <button
                class="carousel-control-prev"
                type="button"
                data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev"
                >
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button
                class="carousel-control-next"
                type="button"
                data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next"
                >
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--   about section-->

        <section id="about" class="about-section-padding mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-12">
                        <div class="about-img">
                            <img
                                src="View/AllComponent/img/mobile-banking.png"
                                alt=""
                                id="image"
                                class="img-fluid"
                                />
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12 col-12 ps-lg-5 mt-md-5">
                        <div class="about-text text-dark">
                            <h2 class="text-center">BANK MARKETING</h2>
                            <p >
                                By not using SMS text messaging for marketing, you are missing a
                                channel with a 98% open rate and a rapid response rate.
                                Consumers love the convenience and are open to receiving
                                personalized and relevant texts from their bank and credit
                                union. Naturally there are some caveats to be aware of. Here are
                                seven pointers.
                            </p>
                            <a href="#" class="btn btn text-white">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Services section--- -->

        <section id="services" class="services section-padding mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-header text-center text-dark pb-5">
                            <h2>OUR SPECIAL OFFERS</h2>
                        </div>
                    </div>
                </div>

                <div class="row ">
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card bg-LIGHT pb-2 ">
                            <div class="card-body text-dark ">
                                <h3 class="text-center">Offers</h3>
                                <p>Get exclusive deals and discounts on thousands of brands</p>
                                <button class="btn btn text-white">Read More</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card bg-LIGHT pb-2">
                            <div class="card-body  text-dark">
                                <h3 class="text-center">PERSONALISED PRODUCT OFFERS</h3>
                                <p>
                                    Authenticate yourself to view and apply for your personalised
                                    product offers
                                </p>
                                <button class="btn btn text-white">Read More</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card bg-LIGHT pb-2">
                            <div class="card-body  text-dark">
                                <h3 class="text-center">OFFERS NEAR YOU</h3>
                                <p>
                                    Get discounts on dining, shopping, travel, etc. at places near
                                    you
                                </p>

                                <button class="btn btn text-white">Read More</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--   about section-->

        <section id="about" class="about-section-padding mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="about-img  text-dark">
                            <h1 class="text-primary">Internet Banking</h1>
                            <br />
                            <p>
                                Swastik Bank Internet Banking is simple, convenient, 100%
                                secure, and lets you carry out a wide range of banking
                                transactions and access numerous Net Banking features in just a
                                few clicks. Now, say goodbye to long queues and unwanted delays.
                                With Swastik Bank, Net Banking instantly unlocks a better
                                lifestyle anytime and anywhere.
                            </p>
                            <br />
                            <button type="button" class="btn btn-outline text-white">
                                LOGIN NOW
                            </button>
                            <button type="button" class="btn btn-outline text-white">
                                KNOW ABOUT OUR SERVICES
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12 ps-lg-5 md-5" id="internet">
                        <div class="about-text">
                            <div
                                id="carouselExampleCaptions"
                                class="carousel slide"
                                data-bs-ride="carousel"
                                >
                                <div class="carousel-indicators">
                                    <button
                                        type="button"
                                        data-bs-target="#carouselExampleCaptions"
                                        data-bs-slide-to="0"
                                        class="active"
                                        aria-current="true"
                                        aria-label="Slide 1"
                                        ></button>
                                    <button
                                        type="button"
                                        data-bs-target="#carouselExampleCaptions"
                                        data-bs-slide-to="1"
                                        aria-label="Slide 2"
                                        ></button>
                                    <button
                                        type="button"
                                        data-bs-target="#carouselExampleCaptions"
                                        data-bs-slide-to="2"
                                        aria-label="Slide 3"
                                        ></button>
                                </div>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img
                                            src="https://www.paisabazaar.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2018/12/mobile-internet-banking-1.jpg.webp"
                                            height="240px"
                                            class="d-block w-100"
                                            alt="..."
                                            />
                                    </div>
                                    <div class="carousel-item">
                                        <img
                                            src="https://i0.wp.com/www.iedunote.com/img/33485/bank-definition-what-is-bank.jpg?fit=1080%2C658&quality=100&ssl=1"
                                            height="240px"
                                            class="d-block w-100"
                                            alt="..."
                                            />
                                    </div>
                                    <div class="carousel-item">
                                        <img
                                            src="https://article.study24x7.com/live/published/e98f1830-734c-11eb-ada8-fd18d97d9012.png"
                                            height="240px"
                                            class="d-block w-100"
                                            alt="..."
                                            />
                                        <div class="carousel-caption"></div>
                                    </div>
                                </div>
                                <button
                                    class="carousel-control-prev"
                                    type="button"
                                    data-bs-target="#carouselExampleCaptions"
                                    data-bs-slide="prev"
                                    >
                                    <span
                                        class="carousel-control-prev-icon"
                                        aria-hidden="true"
                                        ></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button
                                    class="carousel-control-next"
                                    type="button"
                                    data-bs-target="#carouselExampleCaptions"
                                    data-bs-slide="next"
                                    >
                                    <span
                                        class="carousel-control-next-icon"
                                        aria-hidden="true"
                                        ></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!---- portfolio----->

        <section id="portfolio" class="portfolio section-padding mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-header text-center pb-5">
                            <h2>OUR BANK CATOGERY</h2>
                            <p>
                                Lorem ipsum dolor sit amet, <br />
                                consectetur adipisicing elit. Eligendi, natus!
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-light bg-white pb-2">
                            <div class="card-body text-dark">
                                <div class="img-area mb-4">
                                    <img
                                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5hoRsCICgonobc12Q67LsN6pcJuSxNW0MGw&usqp=CAU"
                                        height="250px"
                                        width="95%"
                                        alt=""
                                        class="img-fluid"
                                        />
                                </div>
                                <h3 class="text-center mt-5">BANK SECURITY</h3>
                                <p>
                                    A security is a financial instrument typucally any financial
                                    asset that can be traded. The nature of what can and can't be
                                    called a security generally depends on the jurisdiction in
                                    which the assets are being traded.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-light bg-white pb-2">
                            <div class="card-body text-dark">
                                <div class="img-area mb-3">
                                    <img
                                        width="100%"
                                        src="data:image/jpeg;base64,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"
                                        alt=""
                                        class="img-fluid"
                                        />
                                </div>
                                <h3 class="text-center mt-5">MONEY TRANSFER</h3>
                                <p>
                                    When money is used to intemediate the exchange of goods and
                                    service it is performing a function as a medium of exchange.
                                    It thereby avoids incidence of wants' problem. Money's most
                                    important.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-12 col-lg-4">
                        <div class="card text-light bg-white pb-2">
                            <div class="card-body text-dark">
                                <div class="img-area mb-3">
                                    <img
                                        src="https://img.freepik.com/free-vector/bank-loan-credit-mortgage-isometric-flowchart-with-financial-symbols-gradient-blue-background-3d-vector-illustration_1284-78866.jpg?w=2000"
                                        alt=""
                                        class="img-fluid"
                                        />
                                </div>
                                <h3 class="text-center mt-5">BANK LOAN</h3>
                                <p>
                                    Common personal loans include mortgage loans. car loans, home
                                    equlity lines of credit, Credit cards, . The credit score of
                                    the borrower is major component in the underwritting and
                                    interest rates(APR)
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- -- Contact section- -->

        <section id="Contact" class="contant section-padding mt-5 ">
            <div class="container">
                <div class="row text-center ">
                    <h2 >Contact us</h2>
                    <p>
                        Lorem ipsum dolor sit amet, <br />
                        consectetur adipisicing elit. Eligendi, natus!
                    </p>
                    <div class="col-md-6 text-center">
                        <div class="section pb-3   text-dark">

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4 p-0 pt-4">
                        <form action="#" class="bg-light p-4.m-auto">
                            <div class="row ml-5">
                                <div class="col-md-12">
                                    <div class="contant">
                                        <input
                                            type="text"
                                            class="form-control"
                                            required
                                            placeholder="Your full name"
                                            /><br />
                                        <input
                                            type="text"
                                            class="form-control"
                                            required
                                            placeholder="Your Email Here"
                                            /><br />
                                        <textarea
                                            name=""
                                            rows="3"
                                            required
                                            class="form-control"
                                            placeholder="Your Query Here"
                                            ></textarea
                                        ><br /><br />
                                        <button class="btn text-white lg btn-block mt-3 ml-5">
                                            Send Now
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6 p-0 pt-4 ms-auto">
                        <img
                            src="https://us.123rf.com/450wm/stokkete/stokkete1702/stokkete170200009/71748497-business-woman-giving-packs-of-dollars-to-her-accountant-and-paying-taxes-he-is-examining-tax-forms.jpg?ver=6"
                            alt=""
                            />
                    </div>
                </div>
            </div>
        </section>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
        ></script>

        <%@include file="View/AllComponent/footer.jsp" %>
    </body>
</html>
