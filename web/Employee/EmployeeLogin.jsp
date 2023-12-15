<%-- 
    Document   : index
    Created on : 15-Nov-2023, 11:19:20 pm
    Author     : Hp
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
        <link rel="stylesheet" href="style.css" />
    
    <style>
#ba{
    background-color: #fff0e6;
}
#top-nav{
    font-size: 20px;
    color: black;
}
#top-nav:hover{
   color: #0d6efd;
}
h2{
    font-size: 25px;
}
h3{
    font-size: 20px;
}
h4{
    font-size: 17px;
}
#carouselExampleCaptions{
    margin-top: 90px;
}
 .back-img{
    /* background-image: url('https://sultanchandfoundation.org/wp-content/uploads/2021/04/book.jpg'); */
    height: 80vh;
    width: 100%;
    background-repeat: no-repeat;
    background-size: cover;
}
.lead{
    font-size: 20px;
}
#icon{
    color:#FF9933;
   font-size: 25px;    
    margin-left: 30px;
}
.img-fluid{
    height: 250px;
    width: 400px;
}

#navbarDropdownMenuLink{
    font-size: 20px;
    /* margin-left: -1px; */
}
.btn{
    background-color: #9F1945;
}
.navbar{
    /* background-color: #00abe4; */
    background-color: #9F1945;
}
#footer{
    display: flex;
    justify-content: space-around;
}
#save{
  margin-top: 100px;
 
}
.background{
    background-color: #fff0e6;;
}
#fix{
    margin-top: 100px;
}
#re{
    color:red;
}
    </style>
    </head>
    <body>
        <div class="shadow bg-white rounded fixed-top">
      <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
          <a class="navbar-brand " href="#"
            ><img src="assets/img/Logo_New-3.png" height="40px" width="140px" alt=""
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
                <a class="nav-link active text-white " id="top-nav" href="About.jsp"
                  >About Us</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white" id="top-nav" href="Accountd.jsp"
                  >Account</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white" id="top-nav" href="Loan.jsp"
                  >Loans</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white "   id="top-nav" href="Cards.jsp"
                  >Cards</a
                >
              </li>
              <li class="nav-item ms-4">
                <a class="nav-link active text-white " id="top-nav" href="Offers.jsp"
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
                    <a class="dropdown-item" href="Login.jsp">Customer</a>
                  </li>
                  <li><a class="dropdown-item" href="#">Employee</a></li>
                  <li><a class="dropdown-item" href="#">Admin</a></li>
                  <!-- <li><hr class="dropdown-divider"></li> -->
                  <!-- <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                </ul>
              </li>
            </ul>
           
          </div>
        </div>
      </nav>
    </div>
     
       <div class=" col- 12 row " id="fix">
    <div class="col-lg-4 col-md-12 col-12 ms-4">
        <div class="card">
            <div class="card-body">
                <h4 class="text-center">Login</h4><br>
                <form action="../EmployeeLoginn" method="post">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Gmail Id"  name ="email">
                   </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1"  placeholder="Enter your PIN" name ="password" >
                  </div>
                  
                  <div class=""><br>
                    <div class="form-group">
                        
<!--                        <label for="exampleInputPassword1">Enter OTP</label>-->
<!--                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter OTP" >-->
                      </div><BR>
<!--                    <button type="submit" class="btn btn-primary">Send OTP</button>-->
                    
                      <button type="submit" class="btn btn-primary ">Login</button><br><br>
                       <p class='message'>Not registered ? <a href='Register.jsp' id="re">Create an account</a></p>
<!--                  <a href="">Forget Pin</a>-->
                  </div>
                    <%--<%@include file="Components/alert_message.jsp" %>--%>
                </form>
            </div>
            
        </div>
       
        
       </div>
       <div class="col-lg-7 col-md-12 col-12 ms-4">
        <div class="card">
            <div class="card-body">
                <h3>Important Notice</h3>
                
        1 | Due to a scheduled maintenance activity, you will be unable to perform IMPS transactions from Retail Internet Banking and iMobile Pay on Nov 1, 2023, from 01:00 hours to 02:00 hours IST. We apologise for the inconvenience caused. <br>
        2 | Introducing, the new toll-free number to call our Personal Banking Customer Care and avail our banking services : 1800 1080 <br>
        3 | An additional feature of “CAPTCHA” has been introduced for Swastik Bank’s Internet Banking login, to ensure a safer banking experience. <br>
        4 | If you are using an old version of Internet Explorer, please update to the latest version immediately, to enjoy a seamless banking experience. <br>
        5 | If you are using an older version of Android, please update it to the 6.0 version and above immediately, to enjoy a seamless banking experience.
            </div>
            
        </div>
       
        
       </div>
</div>
                  <footer>
        <div class="foot">&nbsp;</div>
        <div class="container" id="footer">
          <div class="row">
            <div class="col-xl-3 col-lg-4 col-md-6 ">
              <div>
                <h3><img src="View/AllComponent/img/Logo_New-3.png" alt="" width="200px" /></h3>
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
<!--                  <input
                    type="text"
                    class="form-control"
                    placeholder="Enter Your Email"
                  />
                  <button class="btn text-white mt-3">Subscribe</button>
                </div>-->
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
    </body>
</html>