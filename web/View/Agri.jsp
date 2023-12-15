<%-- 
    Document   : Agri
    Created on : 28-Nov-2023, 8:48:09 pm
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="AllComponent/style.css"/>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
      .bg-custom{
  background-color: #81d4fa;
  position: sticky;
}
.navbar .nav-item1:hover{
  
  background-color:rgba(255,255,255,0.4) ;
  color: black;
  border-radius: 15px;
}
.navbar{
    /* background-color: #00abe4; */
    background-color: #9F1945;
}
#top-nav{
  font-size: 20px;
  color: black;
}
#top-nav:hover{
 color: #0d6efd;
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
  color:blue;
 font-size: 25px;    
  margin-left: 30px;
}
.img-fluid{
  height: 250px;
  width: 400px;
}
#nnn{
  height: 500px;
  width: 350px;
}
li {
  font-size: 13px;
}
#sec{
  margin-left: -120px;
  margin-left: 1px;
  height: 400px;
  width: 400px;
  /* background-color: #f8f8f8; */
  background-color: whitesmoke;
}
#navbarDropdownMenuLink{
  font-size: 20px;
  margin-left: 40px;

}
#ss{
  margin-top: 70px;
  height: 600px;
  /* margin: auto; */
  /* background-color: #f8f8f8; */
}
#third-row{
  width: 300px;
  background-color: #f8f9fa;
}
#footer{
  display: flex;
  justify-content: space-around;
}

  </style>
    </head>
    <body>
         <%@include file="AllComponent/navbar.jsp" %>
        <div class="row row-cols-lg-2 row-cols-md-2 row-cols-1" id="ss">
      <div class="col " id="third-row">
        <ul class="nav flex-column">
          <li class="nav-item1 ms-2 mt-5">
            <a class="nav-link active text-dark" aria-current="page" href="Loan.jsp">POPULAR LOANS  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<i class="bi bi-caret-right-fill" id="arrow
              "></i></a>
           
          </li>
          <li class="nav-item1 ms-2 mt-3">
            <a class="nav-link  active text-dark" href="Agri.jsp">AGRI AND RURAL FINANCE &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; <i class="bi bi-caret-right-fill"></i></a>
          </li>
          <li class="nav-item1 ms-2 mt-3">
            <a class="nav-link  active text-dark" href="commercial.jsp">COMMERCIAL BUSINESS LOANS&nbsp; &nbsp; <i class="bi bi-caret-right-fill "></i></a>
          </li>
          <li class="nav-item1 ms-2 mt-3">
            <a class="nav-link  active text-dark" href="otherloan.jsp">OHTER OFFERS AND CHARGES &nbsp; &nbsp;&nbsp;  <i class="bi bi-caret-right-fill"></i></a>
          </li>
        </ul>
      </div>
        <div class="col w-75" style="background-color: #fafaf6;">

          <div class="row row-cols-lg-3 row-cols-md-2 row-cols-1 mt-3" >
            <div class="col">
              <div class="card  bg-LIGHT pb-1 ms-3" >
                <div class="card-body">                                      
                
                 <ul >
                  <a href="" class=" nav-link text-dark">MICRO FINANCE</a>
                  Financial assistance to Micro Finances for Term Loans, overdraft and portfolio buyout
                   <!-- <li><a href="" class=" nav-link text-dark">Personal Loan Calculator</a></li>
                   <li><a href="" class=" nav-link text-dark" >Personal Loan App</a></li>
                   <li><a href="" class=" nav-link text-dark">Personal Loan on credit card </a></li>
                   <li><a href="" class=" nav-link text-dark" >Business Loan</a></li>
                   <!-- <li><a href="" class=" nav-link text-dark">FD with Monthly Income</a></li> 
                   <a href="">Know More ></a> -->
                 </ul>
                </div>
            </div>
            </div>
            <div class="col">
              <div class="card bg-LIGHT pb-2 ms-3">
                <div class="card-body">
                   
                  <a href="" class=" nav-link text-dark">TRACTOR LOAN</a>
                  Get a loan to buy a tractor if you <br> own at least 3 acres of agricultural land
                   <!-- <li><a href="" class=" nav-link text-dark">Personal Loan Calculator</a></li>
                   <li><a href="" class=" nav-link text-dark" >Personal Loan App</a></li>
                   <li><a href="" class=" nav-link text-dark">Personal Loan on credit card </a></li>
                   <li><a href="" class=" nav-link text-dark" >Business Loan</a></li>
                   <!-- <li><a href="" class=" nav-link text-dark">FD with Monthly Income</a></li> 
                   <a href="">Know More ></a> -->
                 </ul>
                </div>
            </div>
            </div>
            <div class="col">
              <div class="card bg-LIGHT pb-2 ms-3">
                <div class="card-body">                          
                  <a href="" class=" nav-link text-dark">RURAL SAVINGS ACCOUNT</a>
                  Rural Savings Account will be available through Business Correspondents
                   <!-- <li><a href="" class=" nav-link text-dark">Personal Loan Calculator</a></li>
                   <li><a href="" class=" nav-link text-dark" >Personal Loan App</a></li>
                   <li><a href="" class=" nav-link text-dark">Personal Loan on credit card </a></li>
                   <li><a href="" class=" nav-link text-dark" >Business Loan</a></li>
                   <!-- <li><a href="" class=" nav-link text-dark">FD with Monthly Income</a></li> 
                   <a href="">Know More ></a> -->
                 </ul>
                </div>
            </div>
            </div>
            <div class="col ">
              <div class="card  bg-LIGHT pb-2 mt-3 ms-3">
                <div class="card-body">                                      
                  <a href="" class=" nav-link text-dark">SELF-HELP GROUPS (SHGS) BANK LINKAGE PROGRAMME</a>
                  Get up to Rs 7.5 lakh for SHGs with 10-20 women, and operations for 6+ months
                   <!-- <li><a href="" class=" nav-link text-dark">Personal Loan Calculator</a></li>
                   <li><a href="" class=" nav-link text-dark" >Personal Loan App</a></li>
                   <li><a href="" class=" nav-link text-dark">Personal Loan on credit card </a></li>
                   <li><a href="" class=" nav-link text-dark" >Business Loan</a></li>
                   <!-- <li><a href="" class=" nav-link text-dark">FD with Monthly Income</a></li> 
                   <a href="">Know More ></a> -->
                 </ul>
                </div>
                </div>
            </div>
           
            
            
            
            </div>
            
            
          </div>
        </div>
        
         <%@include file="AllComponent/footer.jsp" %>
    </body>
</html>
