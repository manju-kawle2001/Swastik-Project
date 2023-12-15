<%-- 
    Document   : OtpVerify
    Created on : 08-Dec-2023, 4:00:27 pm
    Author     : Sohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>User-Dashboard</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />

        <!-- Favicons -->
        <link href="assets/img/logo.png" rel="icon" />
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

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

        <!-- fafa icons -->

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />


        <!-- responsive link -->

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />
        <!-- form link -->


        <!-- <link
          rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        /> -->

        <!-- css code -->
        <style>
            body{
                background-color:red
            }
            .height-100{
                height:100vh
            }
            .card{
                width:400px;
                border:none;
                height:300px;
                box-shadow: 0px 5px 20px 0px #d2dae3;
                z-index:1;
                display:flex;
                justify-content:center;
                align-items:center
            }
            .card h6{
                color:red;
                font-size:20px
            }
            .inputs input{
                width:40px;
                height:40px
            }
            input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button{
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                margin: 0
            }
            .card-2{
                background-color:#fff;
                padding:10px;
                width:350px;
                height:100px;
                bottom:-50px;
                left:20px;
                position:absolute;
                border-radius:5px
            }
            .card-2 .content{
                margin-top:50px
            }
            .card-2 .content a{
                color:red
            }
            .form-control:focus{
                box-shadow:none;
                border:2px solid red
            }
            .validate{
                border-radius:20px;
                height:40px;
                background-color:red;
                border:1px solid red;
                width:140px
            }
        </style>
    </head>

    <body>
        <div class="container height-100 d-flex justify-content-center align-items-center"> <div class="position-relative"> <div class="card p-2 text-center"> <h6>Please enter the one time password <br> to verify your account</h6> <div> <span>A code has been sent to</span> <small>*******9897</small> </div> <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2"> <input class="m-2 text-center form-control rounded" type="text" id="first" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="second" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="third" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="fourth" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="fifth" maxlength="1" /> <input class="m-2 text-center form-control rounded" type="text" id="sixth" maxlength="1" /> </div> <div class="mt-4"> <button class="btn btn-danger px-4 validate">Validate</button> </div> </div> <div class="card-2"> <div class="content d-flex justify-content-center align-items-center"> <span>Didn't get the code</span> <a href="#" class="text-decoration-none ms-3">Resend(1/3)</a> </div> </div> </div>
        </div>
    </body>
</html>
