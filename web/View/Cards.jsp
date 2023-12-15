<%-- 
    Document   : Cards
    Created on : 28-Nov-2023, 8:55:38 pm
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
.navbar{
    /* background-color: #00abe4; */
    background-color: #9F1945;
}
.navbar .nav-item1:hover{
  
  background-color:rgba(255,255,255,0.4) ;
  color: black;
  border-radius: 15px;
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
      <div class="col" id="third-row">
        <ul class="nav flex-column">
          <li class="nav-item1 ms-2 mt-5">
            <a class="nav-link active text-dark" aria-current="page" href="Cards.jsp">CREDIT CARDS  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <i class="bi bi-caret-right-fill" id="arrow
              "></i></a>
           
          </li>
          <li class="nav-item1 ms-2 mt-3">
            <a class="nav-link  active text-dark" href="Debit.jsp">DEBIT CARDS/ATM CARD &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<i class="bi bi-caret-right-fill"></i></a>
          </li>
          <li class="nav-item1 ms-2 mt-3">
            <a class="nav-link  active text-dark" href="Prepaidcard.jsp">PREPAID/FOREX/GIFT/FASTAG CARDS <i class="bi bi-caret-right-fill "></i></a>
          </li>
          <li class="nav-item1 ms-2 mt-3">
            <a class="nav-link  active text-dark" href="CommercialCard.jsp">COMMERCIAL CARDS  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<i class="bi bi-caret-right-fill"></i></a>
          </li>
        </ul>
      </div>
      <div class="col w-75" style="background-color: #fafaf6;">

        <div class="row row-cols-lg-3 row-cols-md-2 row-cols-1 mt-3" >
          <div class="col">
            <div class="card  bg-LIGHT pb-2 ms-3" >
              <div class="card-body">                                      
              
               <ul >
                <a href="" class=" nav-link text-dark">SPECIAL CREDIT CARDS</a>
                 <li><a href="" class=" nav-link text-dark">Coral Credit Card</a></li>
                 <li><a href="" class=" nav-link text-dark" >Coral RuPay Credit Card
                </a></li>
                 <li><a href="" class=" nav-link text-dark">Campus Power Account</a></li>
                 <li><a href="" class=" nav-link text-dark" >Sapphiro Credit Card</a></li>
                <a href="">Know more</a>
                 <!-- <li><a href="" class=" nav-link text-dark">Campus Power Account</a></li> -->
                
               </ul>
              </div>
          </div>
          </div>
          <div class="col">
            <div class="card bg-LIGHT pb-2 ms-3">
              <div class="card-body">
                 
                <ul >
                  <a href="" class=" nav-link text-dark">CO-BRAND CREDIT CARD</a>
                   <li><a href="" class=" nav-link text-dark">MakeMyTrip Credit Card</a></li>
                   <li><a href="" class=" nav-link text-dark" >Manchester United Credit Card</a></li>
                   <li><a href="" class=" nav-link text-dark" >HPCL Credit Card</a></li>
                   <li><a href="" class=" nav-link text-dark">Amazon Pay Credit Card</a></li>
                   <a href="">Know more</a>
                 </ul>
              </div>
          </div>
          </div>
          <div class="col">
            <div class="card bg-LIGHT pb-2 ms-3">
              <div class="card-body">                          
                <ul >
                    <a href="" class=" nav-link text-dark">FEATURED CREDIT CARDS</a>
                     <li><a href="" class=" nav-link text-dark">Expressions Credit Card</a></li>
                     <li><a href="" class=" nav-link text-dark" >Emeralde Credit Card</a></li>
                     <li><a href="" class=" nav-link text-dark" >Unifare Metro Credit Card</a></li>
                     <li><a href="" class=" nav-link text-dark">NRI Credit Card</a></li>
                     <a href="">Know more</a>
                   </ul>
              </div>
          </div>
          </div>
          <div class="col ">
            <div class="card  bg-LIGHT pb-2 mt-3 ms-3">
              <div class="card-body">                                      
                <ul >
                  <a href="" class=" nav-link text-dark">INSTANT CREDIT CARD
                  </a><br>
                   <li><a href="" class=" nav-link text-dark">Instant Credit Card</a></li>
                  <a href="">know more</a>
                 </ul>
              </div>
              </div>
          </div>
          <div class="col">
            <div class="card bg-LIGHT pb-2 mt-3 ms-3">
              <div class="card-body">
                <ul >
                    <a href="" class=" nav-link text-dark">EMI / LOAN ON CREDIT CARD
                    </a>
                     <li><a href="" class=" nav-link text-dark">EMI on Credit Card</a></li>
                    <a href="">know more</a>
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
