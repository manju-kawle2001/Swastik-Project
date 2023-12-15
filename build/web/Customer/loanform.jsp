<%-- 
    Document   : loan2
    Created on : Dec 2, 2023, 4:38:26 PM
    Author     : dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.*"%>
<%@page import="com.swastik.model.*"%>
<%
ArrayList<Loantypedao> loantypeDao  = (ArrayList<Loantypedao>)session.getAttribute("Loantypedao");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <title>Loan Apply Form</title>
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
            s




            #ba {
                background-color: #fff0e6;
            }

            #top-nav {
                font-size: 20px;
                color: black;
            }

            #top-nav:hover {
                color: blue;
            }

            .navbar {
                background-color: #9F1945;
            }

            .btn {
                background-color: #9F1945;
            }
            .btn:hover {
                background-color: #9F1945;
            }
            h3 {
                font-size: 20px;
            }

            h4 {
                font-size: 17px;
            }

            #internet {
                margin-top: 30px;
            }

            .back-img {
                height: 80vh;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }

            .lead {
                font-size: 20px;
            }

            #icon {
                color: #FF9933;
                font-size: 25px;
                margin-left: 30px;
            }

            .img-fluid {
                height: 250px;
                width: 400px;
                border-radius: 15px;
                transition: 1s;
            }

            .img-fluid:hover {
                color: #FF9933;
                transform: scale(1.1);
            }

            #butcenter {
                margin-left: 70px;
                border-radius: 20px;
            }

            #navbarDropdownMenuLink {
                font-size: 20px;
            }

            .foot {
                margin-top: 35px;
                color: white;
            }

            div a {
                color: white;
            }

            .footer-desc {
                color: white;
            }

            .icon {
                font-size: 25px;
                margin-left: 5px;
            }

            .mar {
                margin-top: 70px;
                background-color: whitesmoke;
            }

            .icon:hover {
                color: #9F1945;
            }

            footer {
                background-color: #3D3D3D;
            }

            #save {
                margin-top: 100px;
            }

            .background {
                background-color: #fff0e6;
            }

            #fix {
                margin-top: 6px;
            }

            .mat {
                margin-top: 30px;
            }
            /* Add this CSS code to your existing styles */

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
        <script>
            function namevalidate()
            {
                var name = document.getElementById("name");
                var udisplay = document.getElementById("udisplay");
                if (name.value.trim() == "") {
                    udisplay.innerHTML = "Name Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "";
                        udisplay.style.color = "Green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Only letters are allowed";
                        udisplay.style.color = "red";
                        return false;
                    }
                     }
                    }
            function Fvalidate()
            {
                var Fname = document.getElementById("Fname");
                var fdisplay = document.getElementById("fdisplay");
                if (Fname.value.trim() == "") {
                    fdisplay.innerHTML = "FatherName Required";
                    fdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(Fname.value)) {
                        fdisplay.innerHTML = "";
                        fdisplay.style.color = "green";
                        return true;
                    } else {
                        fdisplay.innerHTML = "Only letters are allowed";
                        fdisplay.style.color = "red";
                        return false;
                    }
                     }
                    }
            function ammountvalidate() {
                var name = document.getElementById("ammount");
                var udisplay = document.getElementById("amdisplay");

                if (name.value.trim() == " ") {
                    udisplay.innerHTML = "Amount Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[0-9]+$/; // Only allow numbers
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "valid";
                        udisplay.style.color = "green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Only numbers are allowed in Ammount";
                        udisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function Movalidate()
        {
            var mobile= document.getElementById("mobile");
            var mdisplay = document.getElementById("mdisplay");
            if(mobile.value.trim()==""){
                mdisplay.innerHTML="Mobile Number Required";
                mdisplay.style.color="red";
                return false;
            }
            else{
                var reg =/^[6789][0-9]{9}/;
                if(reg.test(mobile.value)){
                    mdisplay.innerHTML="Valid";
                    mdisplay.style.color="Green";   
                    return true;
                }
                else{
                   mdisplay.innerHTML="Number should start with 6, 7, 8, or 9 and have 10 digits";
                   mdisplay.style.color="red";
                    return false;
                }
            }
        }
            function aadharvalidate() {
                var firstInput = document.getElementById("firsta");
                var secondInput = document.getElementById("seconda");
                var display = document.getElementById("adisplay");
                var display2 = document.getElementById("adisplay2");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "Aadhar Number is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^\d{12}$/;
                if (!reg.test(firstInput.value)) {
                    display.innerHTML = "Please Enter Valid 12 digits Aadhar Number";
                    display.style.color = "red";
                    return false;
                } else {
                    // Clear the first field's error message if it's valid
                    display.innerHTML = "";
                }

                // Check if the second input is empty
                if (secondInput.value.trim() === "") {
                    display2.innerHTML = "Confirm Aadhar is required";
                    display2.style.color = "red";
                    return false;
                }

                // Check if both inputs contain only numbers
                if (reg.test(firstInput.value) && reg.test(secondInput.value)) {
                    // Check if the values are the same
                    if (firstInput.value === secondInput.value) {
                        display2.innerHTML = "Valid";
                        display2.style.color = "green";
                        return true;
                    } else {
                        display2.innerHTML = "Aadhar Number and Confirm Aadhar Number do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Please Enter Valid 12 digits Aadhar Number";
                    display2.style.color = "red";
                    return false;
                }
            }

            function panvalidate2() {
                var firstInput = document.getElementById("cfirstpan");
                var secondInput = document.getElementById("csecondpan");
                var display = document.getElementById("cpdisplay");
                var display2 = document.getElementById("cpdisplay2");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "Pan Number is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^[A-Za-z]{5}\d{4}[A-Za-z]$/; // 5 characters, 4 digits, 1 character
                if (!reg.test(firstInput.value)) {
                    display.innerHTML = "Please enter the valid 10 digit Pan Number AAAAA1234A";
                    display.style.color = "red";
                    return false;
                } else {
                    // Clear the first field's error message if it's valid
                    display.innerHTML = "";
                }

                // Check if the second input is empty
                if (secondInput.value.trim() === "") {
                    display2.innerHTML = "Confirm Pan Number is required";
                    display2.style.color = "red";
                    return false;
                }

                // Check if both inputs contain only numbers
                if (reg.test(firstInput.value) && reg.test(secondInput.value)) {
                    // Check if the values are the same
                    if (firstInput.value === secondInput.value) {
                        display2.innerHTML = "Valid";
                        display2.style.color = "green";
                        return true;
                    } else {
                        display2.innerHTML = "Pan Number and Confirm Pan do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Please enter the valid 10 digit Pan Number AAAAA1234A";
                    display2.style.color = "red";
                    return false;
                }
            }
            function validateEmail() {
                var emailInput = document.getElementById("email");
                var emailDisplay = document.getElementById("edisplay");
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                if (emailInput.value.trim() === "") {
                    emailDisplay.innerHTML = "Email is required";
                    emailDisplay.style.color = "red";
                    return false;
                } else if (!emailPattern.test(emailInput.value)) {
                    emailDisplay.innerHTML = "Invalid email format";
                    emailDisplay.style.color = "red";
                    return false;
                } else {
                    emailDisplay.innerHTML = "";
                    return true;
                }
            }
            function namevalidate2()
            {
                var name = document.getElementById("cname");
                var udisplay = document.getElementById("umdisplay");
                if (name.value.trim() == "") {
                    udisplay.innerHTML = "Name Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(name.value)) {
                        udisplay.innerHTML = "";
                        udisplay.style.color = "Green";
                        return true;
                    } else {
                        udisplay.innerHTML = "Only letters are allowed";
                        udisplay.style.color = "red";
                        return false;
                    }
                     }
                    }
            function Fvalidate2()
            {
                var Fname = document.getElementById("Cfname");
                var fdisplay = document.getElementById("cfdisplay");
                if (Fname.value.trim() == "") {
                    fdisplay.innerHTML = "FatherName Required";
                    fdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(Fname.value)) {
                        fdisplay.innerHTML = "";
                        fdisplay.style.color = "green";
                        return true;
                    } else {
                        fdisplay.innerHTML = "Only letters are allowed";
                        fdisplay.style.color = "red";
                        return false;
                    }
                     }
                    }
            function aadharvalidate2() {
                var firstInput = document.getElementById("cfirsta");
                var secondInput = document.getElementById("cseconda");
                var display = document.getElementById("cadisplay");
                var display2 = document.getElementById("cadisplay2");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "Aadhar Number is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^\d{12}$/;
                if (!reg.test(firstInput.value)) {
                    display.innerHTML = "Please Enter Valid 12 digits Aadhar Number";
                    display.style.color = "red";
                    return false;
                } else {
                    // Clear the first field's error message if it's valid
                    display.innerHTML = "";
                }

                // Check if the second input is empty
                if (secondInput.value.trim() === "") {
                    display2.innerHTML = "Confirm Aadhar is required";
                    display2.style.color = "red";
                    return false;
                }

                // Check if both inputs contain only numbers
                if (reg.test(firstInput.value) && reg.test(secondInput.value)) {
                    // Check if the values are the same
                    if (firstInput.value === secondInput.value) {
                        display2.innerHTML = "Valid";
                        display2.style.color = "green";
                        return true;
                    } else {
                        display2.innerHTML = "Aadhar Number and Confirm Aadhar Number do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Please Enter Valid 12 digits Aadhar Number";
                    display2.style.color = "red";
                    return false;
                }
            }
            function panvalidate2() {
                var firstInput = document.getElementById("cfirstpan");
                var secondInput = document.getElementById("csecondpan");
                var display = document.getElementById("cpdisplay");
                var display2 = document.getElementById("cpdisplay2");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "Pan Number is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^[A-Za-z]{5}\d{4}[A-Za-z]$/; // 5 characters, 4 digits, 1 character
                if (!reg.test(firstInput.value)) {
                    display.innerHTML = "Please enter the valid 10 digit Pan Number AAAAA1234A";
                    display.style.color = "red";
                    return false;
                } else {
                    // Clear the first field's error message if it's valid
                    display.innerHTML = "";
                }

                // Check if the second input is empty
                if (secondInput.value.trim() === "") {
                    display2.innerHTML = "Confirm Pan Number is required";
                    display2.style.color = "red";
                    return false;
                }

                // Check if both inputs contain only numbers
                if (reg.test(firstInput.value) && reg.test(secondInput.value)) {
                    // Check if the values are the same
                    if (firstInput.value === secondInput.value) {
                        display2.innerHTML = "Valid";
                        display2.style.color = "green";
                        return true;
                    } else {
                        display2.innerHTML = "Pan Number and Confirm Pan do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Please enter the valid 10 digit Pan Number AAAAA1234A";
                    display2.style.color = "red";
                    return false;
                }
            }

            function validateNumberFields() {
                var firstInput = document.getElementById("firstacc");
                var secondInput = document.getElementById("secondacc");
                var display = document.getElementById("displayacc");
                var display2 = document.getElementById("display2acc");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "First field is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^[0-9]+$/;
                if (!reg.test(firstInput.value)) {
                    display.innerHTML = "Only numbers are allowed in the Account Number";
                    display.style.color = "red";
                    return false;
                } else {
                    // Clear the first field's error message if it's valid
                    display.innerHTML = "";
                }

                // Check if the second input is empty
                if (secondInput.value.trim() === "") {
                    display2.innerHTML = "Second field is required";
                    display2.style.color = "red";
                    return false;
                }

                // Check if both inputs contain only numbers
                if (reg.test(firstInput.value) && reg.test(secondInput.value)) {
                    // Check if the values are the same
                    if (firstInput.value === secondInput.value) {
                        display2.innerHTML = "Valid";
                        display2.style.color = "green";
                        return true;
                    } else {
                        display2.innerHTML = "Account Number and Confirm Account Number do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Only numbers are allowed in the Account Number";
                    display2.style.color = "red";
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <header>
            <div class="shadow bg-white rounded fixed-top">
                <nav class="navbar navbar-expand-lg">
                    <div class="container-fluid">
                        <a class="navbar-brand " href="#"
                           ><img src="img/Logo_New-3.png" height="40px" width="140px" alt=""
                              /></a>
                        <button
                            class="navbar-toggler bg-light"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation"
                            >
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-auto">
                                <li class="nav-item ms-4">
                                    <a class="nav-link active text-white" id="top-nav" href="index.html"
                                       >Home</a
                                    >
                                </li>
                                <li class="nav-item ms-4">
                                    <a class="nav-link active text-white " id="top-nav" href="About.html"
                                       >About Us</a
                                    >
                                </li>
                                <li class="nav-item ms-4">
                                    <a class="nav-link active text-white" id="top-nav" href="Accountd.html"
                                       >Account</a
                                    >
                                </li>
                                <li class="nav-item ms-4">
                                    <a class="nav-link active text-white" id="top-nav" href="Loan.html"
                                       >Loans</a
                                    >
                                </li>
                                <li class="nav-item ms-4">
                                    <a class="nav-link active text-white "   id="top-nav" href="Cards.html"
                                       >Cards</a
                                    >
                                </li>
                                <li class="nav-item ms-4">
                                    <a class="nav-link active text-white " id="top-nav" href="Offers.html"
                                       >Offers</a
                                    >
                                </li>
                                <li class="nav-item dropdown ml-5 text-white">
                                    <a
                                        class="nav-link dropdown-toggle ms-5 text-white"
                                        style="font-size: 20px"
                                        href="#"
                                        id="navbarDropdown"
                                        role="button"
                                        data-bs-toggle="dropdown"
                                        aria-expanded="false"
                                        >
                                        Login
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li>
                                            <a class="dropdown-item" href="Login.html">Customer</a>
                                        </li>
                                        <li><a class="dropdown-item" href="#">Employee</a></li>
                                        <li><a class="dropdown-item" href="#">Admin</a></li>
                                        <!-- <li><hr class="dropdown-divider"></li> -->
                                        <!-- <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                                    </ul>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
            </div>
        </header>
        <br><br>
        <section class="section dashboard  loan my-5 ml-3 mr-3" >
            <div class="container border p-20 " >
                <h3 class="text-center my-3 mb-4"  id="top">Loan Apply Form</h3>
                <%@include file="../Components/alert_message.jsp" %>
                <fieldset>   
                    <form class="row g-3 border" action="../loanrequestservlet">
                        <!-- <h4 class="my-3 mb-4">Identity Details</h4> -->
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Identity Details</h5>  
                        </div>
                        <div class="col-md-4 mb-5">
                            <label for="inputState" class="form-label">Select Loan Type <font face="Lato" color="red">*</font></label>
                            <select id="inputState" class="form-select form-control mx-auto w-100" name="loanType">
                                <option selected disabled>Choose...</option>
                                <%
                                    for(Loantypedao ldao: loantypeDao) {
                                %>
                                <option>
                                    <%= ldao.getName() %>
                                </option>
                                <%
                                }
                                %>
<!--                                <option>Home Loan</option>
                                <option>Education Loan</option>
                                <option>Car Loan</option>
                                <option>Personal Loan</option>-->

                            </select>
                        </div>
                        <div class="col-md-4 ">
                            <label for="inputCity" class="form-label">Enter Loan Ammount <font face="Lato" color="red">*</font></label>
                            <input onkeyup="ammountvalidate()" id="ammount" type="text" class="form-control" id="inputCity" name="loanammount">
                            <span id="amdisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-4 mb-5">
                            <label for="inputTerm" class="form-label">Select Loan Term <font face="Lato" color="red">*</font></label>
                            <select id="inputTerm" class="form-select form-control mx-auto w-100" name="loanTerm">
                                <option selected disabled>Choose...</option>
                                <option>3 Years</option>
                                <option>5 Years</option>
                                <option>7 Years</option>
                                <option>10 Years</option>
                            </select>
                        </div>
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Personal Details</h5>  
                        </div>
                        <div class="col-md-4 mb-4">
                            <label for="inputCity" class="form-label">Permanent Address <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="caddress">
                        </div>
                        <div class="col-md-4 mb-4">
                            <label for="inputCity" class="form-label"> Alternate Email-id <font face="Lato" color="red">*</font></label>
                            <input onkeyup="validateEmail()" id="email" type="text" class="form-control" id="inputCity" name="cemail">
                            <span id="edisplay" style="color:red; font-size: 14px;"></span>

                        </div>
                        <div class="col-md-4 mb-4">
                            <label for="inputCity" class="form-label"> Alternate Mobile Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="Movalidate()" id="mobile" maxlength="10" type="text" class="form-control" id="inputCity" name="cmobile">
                            <span id="mdisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-12 text-center"> <!-- Added text-center class here -->
                            <h3 class="my-3 mb-4">Co-Applicant/Guarantor Details</h3>
                        </div>
                        <!--                            <h3 class="text-center my-3 mb-4">Co-Applicant/Guarantor Details</h3>   -->
                        <div class="col-md-12">
                            <h5 class="my-3 mb-4">Identity Details</h5>  
                        </div>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Name <font face="Lato" color="red">*</font></label>
                            <input onkeyup="namevalidate2()" id="cname" type="text" class="form-control" id="inputEmail4" name="guarantorName">
                            <span id="umdisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Father Name <font face="Lato" color="red">*</font></label>
                            <input onkeyup="Fvalidate2()" id="Cfname" type="text" class="form-control" id="inputPassword4" name="guarantorFather">
                            <span id="cfdisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6 my-4">
                            <label for="inputAddress2" class="form-label">  Gender <font face="Lato" color="red">*</font></label><br>
                            <input type="radio" name="guarantorGender" value="Male" class="mr-3 ml-2">Male
                            <input type="radio" name="guarantorGender" value="Female" class="mr-3 ml-2">Female  
                            <input type="radio" name="guarantorGender" value="Other" class="mr-3 ml-2">Other
                        </div>

                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Enter Address <font face="Lato" color="red">*</font></label>
                            <input type="text" class="form-control" id="inputCity" name="guarantorAddress">
                        </div>
                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Account Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="validateNumberFields()" id="firstacc" type="text" class="form-control" id="inputCity" name="guarantorAccount">
                            <span id="displayacc" style="color:red; font-size: 14px;"></span>
                        </div>

                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Confirm Account Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="validateNumberFields()" id="secondacc" type="text" class="form-control" id="inputCity">
                            <span id="display2acc" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6 mb-5">
                            <label for="inputTerm" class="form-label">Select Bank <font face="Lato" color="red">*</font></label>
                            <select id="inputTerm" class="form-select form-control mx-auto w-100" name="bank">
                                <option selected disabled>Choose...</option>
                                <option>PNB</option>
                                <option>Bank Of Baroda</option>
                                <option>ICIC BANK</option>
                                <option>HDFC BANK</option>
                                <option>SWASTIK BANK</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="inputifsc" class="form-label">Enter IFSC</label>
                            <input type="text" class="form-control" id="inputifsc" name="ifscCode">
                        </div>

                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Aadhar Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="aadharvalidate2()" id="cfirsta" type="text" class="form-control" id="inputCity" name="guarantorAdhar">
                            <span id="cadisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-6 my-4">
                            <label for="inputCity" class="form-label">Pan Number <font face="Lato" color="red">*</font></label>
                            <input onkeyup="panvalidate2()" id="cfirstpan" type="text" class="form-control" id="inputCity" name="guarantorPan">
                            <span id="cpdisplay" style="color:red; font-size: 14px;"></span>
                        </div>
                        <div class="col-md-12 text-center mb-4"> <!-- Added text-center class here -->
                            <button type="submit" class="btn text-white mt-3">Submit</button>
                        </div>
                    </form>
                </fieldset> 

            </div>
        </section>
        <footer >
            <div class="foot">&nbsp;</div>
            <div class="container" id="footer">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 col-md-6 ">
                        <div>
                            <h3><img src="img/Logo_New-3.png" alt="" width="200px" /></h3>
                            <p class="footer-desc">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad
                                soluta facilis eos quia optio iusto odit atque eum tempore,
                                quisquam officiis vero veniam hic,
                            </p>
                        </div>
                        <div class="footicon">
                            <a href="#"><i class="icon fa-brands fa-twitter"></i></a>
                            <a href="#"><i class="icon fa-brands fa-instagram"></i></a>
                            <a href="#"><i class="icon fa-brands fa-linkedin"></i></a>
                            <a href="#"><i class="icon fa-brands fa-facebook"></i></a>
                            <a href="#"><i class="icon fa-brands fa-github"></i></a>
                        </div>
                    </div>
                    <div class="col-xl-2 offset-xl-1 col-lg-2 col-md-6">
                        <div class="text-white">
                            <h4>Quick Link</h4>
                            <ul class="list-unstyled">
                                <li>
                                    <a href="#" class="text-decoration-none">Home</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">About Us</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Service</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="text-white">
                            <h4>Popular products</h4>
                            <ul class="list-unstyled">
                                <li>
                                    <a href="#" class="text-decoration-none">Accounts</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Cards</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Loan</a>
                                </li>
                                <li>
                                    <a href="#" class="text-decoration-none">Deposit</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6">
                        <div class="text-white">
                            <h4>Newsletter</h4>
                            <div>
                                <label for="Newsletter" class="form-label"
                                       >Subscribe to our newsletter</label
                                >
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Enter Your Email"
                                    />
                                <button class="btn text-white mt-3">Subscribe</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex justify-content-center text-white">
                    <div class="copyright">
                        <p>
                            Developed and maintained by
                            <a href="#" target="_blank">Tech Nerds</a>
                        </p>
                    </div>
                </div>
                <div class="d-flex justify-content-center text-white">
                    <div class="copyright">
                        All Right Reserved
                        <a href="Index.html">@Swastik Bank</a>
                    </div>
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </body>
</html>