<%-- 
    Document   : Login
    Created on : 29-Nov-2023, 12:05:20 am
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
                background-color: #fff0e6;
                ;
            }
            #fix{
                margin-top: 100px;
            }
        </style>
    </head>
    <body>
        <%@include file="AllComponent/navbar.jsp" %>
        <div class=" col- 12 row " id="fix">
            <div class="col-lg-4 col-md-12 col-12 ms-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Login</h4><br>
                        <form action="../CustomerLogin" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Customer Id</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Gmail Id"  name ="gmail">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Pin</label>
                                <input type="password" class="form-control" id="exampleInputPassword1"  placeholder="Enter your PIN" name ="password" >
                            </div>

                            <div class=""><br>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Enter OTP</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter OTP" >
                                </div><BR>

                                <%@include file="../Components/alert_message.jsp" %>
                                <!--<button type="submit" class="btn btn-primary" name="sendOtpbtn">Send OTP</button>-->
                                <input type="submit" class="btn btn-primary" name="sendOtpbtn" value="Send OTP">

                                <!--<button type="submit" class="btn btn-primary" name="loginbtn">Login</button><br><br>-->
                                <input type="submit" class="btn btn-primary" name="loginbtn" value="Login"><br><br>
                                <a href="#">Forget Pin</a>
                            </div>
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
        <%@include file="AllComponent/footer.jsp" %>
    </body>
</html>
