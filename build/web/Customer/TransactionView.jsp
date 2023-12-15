<%-- 
    Document   : TransactionView
    Created on : 08-Dec-2023, 3:24:24 pm
    Author     : Sohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.swastik.model.*"%>
<%
//    List<MoneyTransactionDao> customerDao=(List<MoneyTransactionDao>) session.getAttribute("MoneyTransactionDao");
//    if(customerDao!=null)
//    {
   
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
                margin-top:200px;
                height: 600px;
                width:900px;
                margin-left: 360px;
                margin-top: 40px;
            }
            #headings{
                margin-top:100px;
                margin-left:320px;
            }
        </style>
    </head>

    <body>
        <%@include file="navbar2.jsp"%>

        <div id="headings">
            <span>Dashboard / Customer / Tracsaction Record / view</span>
        </div>

        <div class="container border p-20 " id="for">
            <h4 class="text-center"><b>Record</b></h4>
            <h1>
                Working on process
            </h1>
            <form class="row g-3">
                <%
//                 for(MoneyTransactionDao mdao : customerDao)
//    {
//    if(mdao.getTranid()==(Integer.parseInt(request.getParameter("tid"))))
//    {
                
                %>
                <div class="col-md-4">
                    <label for="inputEmail4" class="form-label"><b>Reciver Name</b></label><br>
                    <!-- <input type="email" class="form-control" id="inputEmail4"> -->
                    <label>
                        <%--<%=mdao.get()%>--%>
                    </label>
                </div>
                <div class="col-md-4">
                    <label for="inputPassword4" class="form-label"><b>Account Number</b></label><br>
                    <!-- <input type="password" class="form-control" id="inputPassword4"> -->
                    <label>Hemant Kardam</label>
                </div>
                <div class="col-md-4">
                    <label for="inputPassword4" class="form-label"><b>Transaction id</b></label><br>
                    <!-- <input type="password" class="form-control" id="inputPassword4"> -->
                    <label>shivanya Kardam</label>
                </div>
                <div class=" col-md-4">
                    <label for="inputAddress" class="form-label"><b>Date of Birth</b></label><br>

                    <label>09/02/2001</label>
                </div>
                <div class="col-md-4">
                    <label for="inputAddress2" class="form-label"> <b> Gender</b></label><br>
                    <label>sFemale</label>


                </div>
                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Mobile Number</b></label><br>

                    <label>98463648258</label>
                </div>
                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Email-id</b></label><br>

                    <label>shivanyaKardam@gmail.com</label>
                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Address</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputCity"> -->
                    <label>Bhawarkua Indore (M.P)</label>
                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>City </b></label><br>

                    <label>shivanya Kardam</label>

                </div>


                <div class="col-md-4">
                    <label for="inputState" class="form-label"><b>State</b></label><br>
                    <label>Madhya Pradesh</label>

                </div>
                <div class="col-md-4">
                    <label for="inputState" class="form-label"><b>Country</b></label><br>
                    <label>India</label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Adhar.no</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputCity"> -->
                    <label>********9465</label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>PanCard.no</b></label><br>
                    <!-- <input type="text" class="form-control" id="inputCity"> -->
                    <label>******4749&44</label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Ocupation</b></label><br>

                    <label>STudent</label>

                </div>
                <div class="col-md-4">
                    <label for="inputState" class="form-label"><b>Marital-Status</b></label><br>

                    <label>Unmarried</label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Nominee name</b></label><br>

                    <label>shivanya Kardam</label>

                </div>

                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Nominee Adhar no.</b></label><br>

                    <label>shivanya Kardam</label>

                </div>
                <div class="col-md-4">
                    <label for="inputCity" class="form-label"><b>Nominee Address</b></label><br>

                    <label>Bhawarkuaindore</label>

                </div>

                <%
//                    break;
//                    }
//                }
                %>
            </form>

        </div>
        <pre>
        </pre>
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>Swastik</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">Designed by <a href="#">Tech Nerds</a></div>
        </footer>

    </body>
</html>
<%
//    }
%>