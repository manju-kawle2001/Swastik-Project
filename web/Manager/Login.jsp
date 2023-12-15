<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="assets/css/Registration.css">
    </head>


    <body>
         <!-- ======= Header ======= -->

        <%--<%@include file="../View/AllComponent/navbar.jsp" %>--%>
        <br>
        <br>
        <br>
        <br>
        <br>
        <!-- End Sidebar-->
        <div class="form-wrapper">
            <div class="form-side">

                <form action="../ManagerLoginControlar"  class="my-form" method="post">
                    <div class="login-welcome-row ">                    
                        <center><h1>Login </h1></center>
                    </div>

                    <div class="text-field">
                        <label for="email"> Enter Your Email:
                            <input type="email" id="email" name="email" autocomplete="off" placeholder="Your Email"
                                   required>
                            <!-- svg icon -->
                        </label>
                    </div>

                    <div class="text-field">
                        <label for="password">Password:
                            <input id="password" type="password" name="password" placeholder="Your Password" title="Minimum 6 characters at 
                                   least 1 Alphabet and 1 Number"
                                   required>
                            <!-- svg icon -->
                        </label>
                    </div>

                    <button class="my-form__button" type="submit">
                        Login
                    </button>
                    <div class="my-form__row">
                        <span>Did you forget your password? <a href="Registration.jsp">Sing Up</a></span>
                    </div>
                    <!--<a href="Registration.jsp"  style="text-decoration: none;"><button class="my-form__button">Sign up</button></a>-->
                </form>
            </div>
        </div>
    </body>
</html>