<%-- 
    Document   : About
    Created on : 28-Nov-2023, 8:28:48 pm
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <<link rel="stylesheet" href="AllComponent/style.css"/>
    </head>
    <body>
        <<%@include file="AllComponent/navbar.jsp" %>
        
        <section id="about" class="about-section-padding mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-12">
                    <div class="about-img">
                        <img src="AllComponent/img/mobile-banking.png" alt="" id="image" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-8 col-md-12 col-12 ps-lg-5 mt-md-5">
                    <div class="about-text">
                        <h2 class="text-center">BANK MARKETING</h2>
                        <p>By not using SMS text messaging for marketing, you are missing a channel with a 98% open rate and a rapid response rate. Consumers love the convenience and are open to receiving personalized and relevant texts from their bank and credit union. Naturally there are some caveats to be aware of. Here are seven pointers.</p>
                        <a href="#" class="btn btn text-white">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
  </section>
        
        <%@include file="AllComponent/footer.jsp" %>
        
    </body>
</html>
