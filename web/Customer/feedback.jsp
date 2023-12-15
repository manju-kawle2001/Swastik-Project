<%-- 
    Document   : feedback
    Created on : Dec 3, 2023, 6:00:27 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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


        <!-- form link -->



        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->



        <!-- css code -->
        <style>
            .box-custom {
                background-color: white;
                height: 150px;
                width: 120px;
                text-align: center;
                padding: 17px;
                margin-left: 15px;
            }
            body{
                text-decoration: none;
            }
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            html,body{
                display: grid;
                height: 100%;
                /* place-items: center; */
                /* text-align: center; */
                /* background: #000; */
            }
            .container{
                position: relative;
                width: 400px;
                /* background: #111; */
                background: #861F41;
                padding: 20px 30px;
                border: 1px solid #444;
                border-radius: 5px;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
            }
            .container .post{
                display: none;
            }
            .container .text{
                font-size: 25px;
                color: #666;
                font-weight: 500;
            }
            .container .edit{
                position: absolute;
                right: 10px;
                top: 5px;
                font-size: 16px;
                color: #666;
                font-weight: 500;
                cursor: pointer;
            }
            .container .edit:hover{
                text-decoration: underline;
            }
            .container .star-widget input{
                display: none;
            }
            .star-widget label{
                font-size: 40px;
                /* color: #444; */
                color:whitesmoke;
                padding: 10px;
                float: right;
                transition: all 0.2s ease;
            }
            input:not(:checked) ~ label:hover,
            input:not(:checked) ~ label:hover ~ label{
                color: #fd4;
            }
            input:checked ~ label{
                color: #fd4;
            }
            input#rate-5:checked ~ label{
                color: #fe7;
                text-shadow: 0 0 20px #952;
            }
            #rate-1:checked ~ form header:before{
                content: "I just hate it ";
            }
            #rate-2:checked ~ form header:before{
                content: "I don't like it ";
            }
            #rate-3:checked ~ form header:before{
                content: "It is awesome ";
            }
            #rate-4:checked ~ form header:before{
                content: "I just like it ";
            }
            #rate-5:checked ~ form header:before{
                content: "I just love it ";
            }
            .container form{
                display: none;
            }
            input:checked ~ form{
                display: block;
            }
            form header{
                width: 100%;
                font-size: 25px;
                color: #fe7;
                font-weight: 500;
                margin: 5px 0 20px 0;
                text-align: center;
                transition: all 0.2s ease;
            }
            form .textarea{
                height: 100px;
                width: 100%;
                overflow: hidden;
            }
            form .textarea textarea{
                height: 100%;
                width: 100%;
                outline: none;
                color: #eee;
                border: 1px solid #333;
                /* background: #222; */
                background: whitesmoke;
                padding: 10px;
                font-size: 17px;
                resize: none;
            }
            .textarea textarea:focus{
                border-color: #444;
            }
            form .btn{
                height: 45px;
                width: 100%;
                margin: 15px 0;
            }
            form .btn button{
                height: 100%;
                width: 100%;
                border: 1px solid #444;
                outline: none;
                /* background: #222; */
                background: whitesmoke;
                color: #999;
                font-size: 17px;
                font-weight: 500;
                text-transform: uppercase;
                cursor: pointer;
                transition: all 0.3s ease;
            }
            form .btn button:hover{
                background: #1b1b1b;
            }
        </style>

    </head>
    <body>
        <!-- ======= Header ======= -->        
        <%@include file="navbar2.jsp" %>
        <!-- End Sidebar-->    
        <main id="main" class="main">
            <div class="pagetitle">
                <h1>General Tables</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Tables</li>
                        <li class="breadcrumb-item active">General</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->


            <!-- E-governance -->



            <!-- <section class="section dashboard my-5 ml-3">
                <h2 class="text-center">Transfer Money</h2>
                
                <form class="form-horizontal">
                 
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label class="col-sm-4 control-label">Enter Amount</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control">
                      </div>
                    </div>
                  </div>
                  
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label class="col-sm-4 control-label">Confirm Amount</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control">
                      </div>
                    </div>
                  </div>
                
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label class="col-sm-4 control-label">Enter Pin</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control">
                      </div>
                    </div>
                  </div>
                
                  </div>
                
                  <div class="text-center">
                    <button class="btn btn-primary waves-effect waves-light " id="btn-submit">Submit</button>
                  </div>
                  <input type="hidden" name="action" id="action" value="event_dialog_add_newpartnerdata" />
                </form>
            </section> -->


            <!-- shhshend -->

            <!-- E-governance -->
            <section class="section dashboard my-5 ml-3">
                <div class="container">
                    <div class="post">
                        <div class="text">Thanks for rating us!</div>
                        <div class="edit">EDIT</div>
                    </div>
                    <div class="star-widget">
                        <input type="radio" name="rate" id="rate-5">
                        <label for="rate-5" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-4">
                        <label for="rate-4" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-3">
                        <label for="rate-3" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-2">
                        <label for="rate-2" class="fas fa-star"></label>
                        <input type="radio" name="rate" id="rate-1">
                        <label for="rate-1" class="fas fa-star"></label>
                        <form action="#">
                            <header></header>
                            <div class="textarea">
                                <textarea cols="30" placeholder="Describe your experience.."></textarea>
                            </div>
                            <div class="btn">
                                <button type="submit">Post</button>
                            </div>
                        </form>
                    </div>
                </div>

            </section>
            <!-- shhshend -->


        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>SwastikBank</span></strong
                >. All Rights Reserved
            </div>
            <div class="credits">

                Designed by <a href="index.html">Tech Nerds</a>
            </div>
        </footer>
        <!-- End Footer -->

        <a
            href="#"
            class="back-to-top d-flex align-items-center justify-content-center"
            ><i class="bi bi-arrow-up-short"></i
            ></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <script>
            const btn = document.querySelector("button");
            const post = document.querySelector(".post");
            const widget = document.querySelector(".star-widget");
            const editBtn = document.querySelector(".edit");
            btn.onclick = () => {
                widget.style.display = "none";
                post.style.display = "block";
                editBtn.onclick = () => {
                    widget.style.display = "block";
                    post.style.display = "none";
                }
                return false;
            }
        </script>
    </body>
</html>