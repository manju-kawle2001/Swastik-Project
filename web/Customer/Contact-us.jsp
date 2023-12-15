<%-- 
    Document   : Contact-us
    Created on : Nov 27, 2023, 7:17:51 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">-->
        <title>Styled and Attractive Bootstrap Boxes</title>
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
        <!-- fa fa link -->
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <!-- fa fac cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- fafa icons -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />


        <!-- responsive link -->

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
            rel="stylesheet"
            />
        <style>
            .box {
                border: 2px solid #9F1945;
                padding: 20px;
                text-align: center;
                margin-top: 15px;
                margin-bottom: 20px;
                background-color: #fefefe;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease-in-out;
            }

            .box:hover {
                transform: scale(1.05);
            }
            h2 {
                text-align: center;
                color: #9F1945;
                margin-top: 100px;
                margin-bottom: 10px;
            }
          
            h3 {
                font-size: 20px;
            }

            h4 {
                font-size: 17px;
            }
            .img-fluid:hover {
                color: #FF9933;
                transform: scale(1.1);
            }
            @media screen and (max-width: 360px) {
                /* .box {
                    margin-top: 40px;
                } */
                .shadow {
                    height: 70px;
                    width: 90%;
                }

                .imggg {
                    width: 80%;
                }
            }
        </style>
    </head>
    <body>  
       
         <!-- ======= Header ======= -->
        <%@include file="navbar2.jsp" %>
        <!-- End Sidebar-->
      
        <div class="container mt-5 ">
            <h2>My Support Center</h2>
            <div class="row my-5">
                <div class="col-md-4">
                    <div class="box">
                        <h4>Support Details</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>Some content goes here. Lorem ipsum dolor sit amet.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4>Your Territary Manager</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>More content for Box 2. Consectetur adipiscing elit.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4>Distributor</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>Content for Box 3. Sed do eiusmod tempor incididunt.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4> Transactional Query</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>
                        <!-- <p>Additional content for Box 4. Ut enim ad minim veniam.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4> Payments Query</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>

                        <!-- <p>Additional content for Box 4. Ut enim ad minim veniam.</p> -->
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="box">
                        <h4>General Query</h4>
                        <p>customercare@Swastik.com</p>
                        <h4 style="margin-top: 10px;">7835833333</h4>
                        <h4>0124-690888</h4>

                        <!-- <p>Additional content for Box 4. Ut enim ad minim veniam.</p> -->
                    </div>
                </div>

            </div>
        </div>
        <!----Footer --->

         <!-- ======= Footer ======= -->
        <%@include file="footer.jsp" %>
        <!-- End Footer -->
        
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
        
    </body>
</html>