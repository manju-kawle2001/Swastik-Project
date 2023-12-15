<%-- 
    Document   : Offers
    Created on : 29-Nov-2023, 12:08:03 am
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
      .navbar .nav-item1:hover{
    
    background-color:rgba(255,255,255,0.4) ;
    color: black;
    border-radius: 15px;
}

 .back-img{
    /* background-image: url('https://sultanchandfoundation.org/wp-content/uploads/2021/04/book.jpg'); */
    height: 80vh;
    width: 100%;
    background-repeat: no-repeat;
    background-size: cover;
}
#top-nav{
    font-size: 20px;
    color: black;
}
#top-nav:hover{
   color: #0d6efd;
}
#navbarDropdownMenuLink{
    font-size: 20px;
    margin-left: 40px;

}
.navbar{
    /* background-color: #00abe4; */
    background-color: #9F1945;
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
#side-nav{
  font-size: 10px;
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
#offers{
  font-size: 16px;
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
            <a class="nav-link active text-dark" id="offers" aria-current="page" href="Offers.jsp">Deals and Offers<i class="bi bi-caret-right-fill" id="arrow
              "></i></a>
           
          </li>
          
        </ul>
      </div>
      <div class="col w-75" style="background-color: #fafaf6;">

        <div class="row row-cols-lg-3 row-cols-md-2 row-cols-1 mt-3" >
          <div class="col">
            <div class="card  bg-LIGHT pb-2 ms-3" >
              <div class="card-body">                                      
              
               <ul >
                <a href="" class=" nav-link text-dark"> OFFERS</a><br>
                <p>Get exclusive deals and discounts on thousands of brands</p>
               </ul>
              </div>
          </div>
          </div>
          <div class="col">
            <div class="card bg-LIGHT pb-2 ms-3">
              <div class="card-body">
                 
                <ul >
                  <a href="" class=" nav-link text-dark">PERSONALISED PRODUCT OFFERS</a>
                  <p>Authenticate yourself to view and apply for your personalised product offers</p>
                 </ul>
              </div>
          </div>
          </div>
          <div class="col">
            <div class="card bg-LIGHT pb-2 ms-3">
              <div class="card-body">                          
                <ul >
                  <a href="" class=" nav-link text-dark">OFFERS NEAR YOU</a><br>
                  <p>Get discounts on dining, shopping, travel, etc. at places near you</p>
                 </ul>
              </div>
          </div>
          </div>
          <div class="col ">
            <div class="card  bg-LIGHT pb-2 mt-3 ms-3">
              <div class="card-body">                                      
                <ul >
                  <a href="" class=" nav-link text-dark">CASHBACK DEALS</a>
                  <p>Get assured cashback on electronics, travel, food & groceries, and much more</p>
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
