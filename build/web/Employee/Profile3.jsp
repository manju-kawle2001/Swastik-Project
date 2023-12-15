<%-- 
    Document   : Profile3
    Created on : 15-Nov-2023, 11:54:34 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.swastik.model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
ArrayList<AccountOpenDao> accountopendao  = (ArrayList<AccountOpenDao>)session.getAttribute("AccountOpenDao");
        if(accountopendao!=null)
        {
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>Dashboard - NiceAdmin Bootstrap Template</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Favicons -->
        <link href="assets/img/logo.png" rel="icon" />
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />
        <link href="CustomerTransaction.css">
        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect" />
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet"
            />

        <!-- Vendor CSS Files -->
        <link
            href="assets/vendor/bootstrap/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <link
            href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
            rel="stylesheet"
            />

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <style>
            #for{
                /* margin-top:200px; */
                height: 400px;
                width:800px;
                margin-left: 500px;
                margin-top: 110px;
                margin-top:20px;
            }
            #headings{
                margin-top:100px;
                margin-left:320px;
            }
            @media screen and (max-width: 360px) {
                #headings{
                    margin-top:80px;
                    margin-left:80px;
                }
                #for{
                    /* margin-top:200px; */
                    height: 300px;
                    width:300px;
                    margin-left: 20px;
                    margin-top: 110px;
                    margin-top:20px;
                }
                #footer{
                    margin-top: 1000px;
                }

            }

        </style>
    </head>

    <body>

        <%@include file="head.jsp"%>
        <div id="headings">
            <span>Dashboard / Customer / view</span>
        </div>
        <%
            for(AccountOpenDao bdao: accountopendao)
            {
            if(bdao.getCustomerId()==(Integer.parseInt(request.getParameter("customerid"))))
            {
        %>

        <div class="container  p-20 " id="for">

            <h4 class="text-center"><b>Customer</b></h4>
            <form class="row g-3">
                <div class="col-md-4">
                    <label for="inputEmail4" class="form-label"><b>Name</b></label><br>
                    <!-- <input type="email" class="form-control" id="inputEmail4"> -->
                    <label><%= bdao.getName() %></label>
                </div>
                <div class="col-md-4">
                    <label for="inputPassword4" class="form-label"><b>Father Names</b></label><br>
                    <!-- <input type="password" class="form-control" id="inputPassword4"> -->
                    <label><%= bdao.getFather() %></label>
                </div>
                <div class="col-md-4">
                    <label for="inputPassword4" class="form-label"><b>Mother Name</b></label><br>
                    <!-- <input type="password" class="form-control" id="inputPassword4"> -->
                    <label><%= bdao.getMother() %></label>
                </div>
                <div class=" col-md-4">
                    <label for="inputAddress" class="form-label"><b>Dateof Birth</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St"> -->
                    <label><%= bdao.getDob() %></label>
                </div>
                <div class="col-md-4">
                    <label for="inputAddress2" class="form-label"> <b> Gender</b></label><br>
                    <label><%= bdao.getGender() %></label>
                    <!-- Male     <input type="text" placeholder="">    Female    <input type="text" > -->
                    <!-- <input type="text" placeholder="" > -->

                </div>
                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Mobile Number</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputCity">
                    -->
                    <label><%= bdao.getMobile() %></label>
                </div>
                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Email-id</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputCity">
                    -->
                    <label><%= bdao.getEmail() %></label>
                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Address</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputCity"> -->
                    <label><%= bdao.getAddress() %></label>
                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>City </b></label><br>
                    <!--                     <input type="text" class="form-control" id="inputCity">-->


                    <label><%= bdao.getCity()%></label>

                </div>
                <!-- <--  <div class="col-md-4">
                    <label for="inputCity" class="form-label">City</label>
                    <input type="text" class="form-control" id="inputCity">
                  
                -->

                <div class="col-md-4">
                    <label for="inputState" class="form-label"><b>State</b></label><br>
                    <label><%= bdao.getState()%></label>
                    <!-- <select id="inputState" class="form-select" aria-placeholder="State"> -->
                    <!-- <option selected>Choose...</option>
                    <option>...</option>
                  </select> -->
                </div>
                <div class="col-md-4">
                    <label for="inputState" class="form-label"><b>District</b></label><br>
                    <label><%= bdao.getDistric()%></label>
                    <!--             <select id="inputState" class="form-select" aria-placeholder="Country"> -->

                    <!-- <option selected>Choose...</option>
                    <option>...</option>
                  </select> -->
                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Adhar.no</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputCity"> -->
                    <label><%= bdao.getAdhar()%></label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>PanCard.no</b></label><br>

                    <label><%= bdao.getPan()%></label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Ocupation</b></label><br>

                    <label><%= bdao.getOccupation()%></label>

                </div>
                <div class="col-md-4">
                    <label for="inputState" class="form-label"><b>Marital-Status</b></label><br>

                    <label><%= bdao.getMaritail()%></label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Nominee name</b></label><br>

                    <label>shivanya Kardam</label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Nominee Adhar no.</b></label><br>

                    <label>56894</label>

                </div>
                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Nominee Address</b></label><br>

                    <label>Bhawarkuaindore</label>


                </div>
                <%
break;
           }
        } 
                %>

            </form>

        </div>
        <pre>






  .
        </pre>
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>Tech Nerds</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">Designed by <a href="#">Soniya Kardam</a></div>
        </footer>
    </body>
</html>
<%
    }
%>
