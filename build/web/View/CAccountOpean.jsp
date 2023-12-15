<%-- 
Document : CAccountOpean 
Created on : 02-Dec-2023, 2:48:24 pm 
Author :Sohan_Maali 
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.*"%> 
<%@page import="com.swastik.model.*"%> 
<%
    ArrayList<BranchDao>branchDao = (ArrayList<BranchDao>)session.getAttribute("BranchDao");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            />
        <title>Account Open Form</title>

        <style>
            .box {
                border: 2px solid #9f1945;
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
                color: #9f1945;
                margin-top: 100px;
                margin-bottom: 10px;
            }
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
                background-color: #9f1945;
            }

            .btn {
                background-color: #9f1945;
            }
            .btn:hover {
                background-color: #9f1945;
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
                color: #ff9933;
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
                color: #ff9933;
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
                color: #9f1945;
            }

            footer {
                background-color: #3d3d3d;
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

            .loan {
                border: 2px solid;
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
        <script>
            function namevalidate() {
                var name = document.getElementById("name");
                var udaydisplay = document.getElementById("udisplay");
                if (name.value.trim() == "") {
                    udisplay.innerHTML = "Name Required";
                    udisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(name.value)) {
                        udaydisplay.innerHTML = "";
                        udaydisplay.style.color = "Green";
                        return true;
                    } else {
                        udaydisplay.innerHTML = "Only letters are allowed in name";
                        udaydisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function Lvalidate() {
                var Fname = document.getElementById("Lname");
                var Ldisplay = document.getElementById("Ldisplay");
                if (Fname.value.trim() == "") {
                    Ldisplay.innerHTML = "LastName Required";
                    Ldisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(Fname.value)) {
                        Ldisplay.innerHTML = "";
                        Ldisplay.style.color = "green";
                        return true;
                    } else {
                        Ldisplay.innerHTML = "Only letters are  in name";
                        Ldisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function Fvalidate() {
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
                        fdisplay.innerHTML = "Only letters are allowed in name";
                        fdisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function Mvalidate() {
                var Fname = document.getElementById("Mname");
                var mdisplay = document.getElementById("mdisplay");
                if (Fname.value.trim() == "") {
                    mdisplay.innerHTML = "MotherName Required";
                    mdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(Fname.value)) {
                        mdisplay.innerHTML = "";
                        mdisplay.style.color = "green";
                        return true;
                    } else {
                        mdisplay.innerHTML = "Only letters are allowed in name";
                        mdisplay.style.color = "red";
                        return false;
                    }
                }
            }
            // hdhdh

            function mobilevalidate() {
                var firstInput = document.getElementById("firstm");
                var secondInput = document.getElementById("secondm");
                var display = document.getElementById("modisplay");
                var display2 = document.getElementById("modisplay2");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "Mobile Number is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^[6789][0-9]{9}/;
                if (!reg.test(firstInput.value)) {
                    display.innerHTML =
                            "Number should start with 6, 7, 8, or 9 and have 10 digits";
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
                        display2.innerHTML = "Values do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML =
                            "Number should start with 6, 7, 8, or 9 and have 10 digits";
                    display2.style.color = "red";
                    return false;
                }
            }
            function emailvalidate() {
                var firstInput = document.getElementById("firste");
                var secondInput = document.getElementById("seconde");
                var display = document.getElementById("edisplay");
                var display2 = document.getElementById("edisplay2");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "Email Number is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!reg.test(firstInput.value)) {
                    display.innerHTML = "Invalid email format";
                    display.style.color = "red";
                    return false;
                } else {
                    // Clear the first field's error message if it's valid
                    display.innerHTML = "";
                }

                // Check if the second input is empty
                if (secondInput.value.trim() === "") {
                    display2.innerHTML = "Confirm Email field is required";
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
                        display2.innerHTML = "Values do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Invalid email format";
                    display2.style.color = "red";
                    return false;
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
                        display2.innerHTML = "Values do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML = "Please Enter Valid 12 digits Aadhar Number";
                    display2.style.color = "red";
                    return false;
                }
            }

            function panvalidate() {
                var firstInput = document.getElementById("firstpan");
                var secondInput = document.getElementById("secondpan");
                var display = document.getElementById("pdisplay");
                var display2 = document.getElementById("pdisplay2");

                // Check if either input is empty
                if (firstInput.value.trim() === "") {
                    display.innerHTML = "Pan Number is required";
                    display.style.color = "red";
                    return false;
                }

                // Check if the first input contains only numbers
                var reg = /^[A-Za-z]{5}\d{4}[A-Za-z]$/; // 5 characters, 4 digits, 1 character
                if (!reg.test(firstInput.value)) {
                    display.innerHTML =
                            "Please enter the valid 10 digit Pan Number AAAAA1234A";
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
                        display2.innerHTML = "Values do not match";
                        display2.style.color = "red";
                        return false;
                    }
                } else {
                    display2.innerHTML =
                            "Please enter the valid 10 digit Pan Number AAAAA1234A";
                    display2.style.color = "red";
                    return false;
                }
            }
            function StateValidate() {
                var name = document.getElementById("state");
                var udaydisplay = document.getElementById("statedisplay");
                if (name.value.trim() == "") {
                    udaydisplay.innerHTML = "State Required";
                    udaydisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(name.value)) {
                        udaydisplay.innerHTML = "";
                        udaydisplay.style.color = "Green";
                        return true;
                    } else {
                        udaydisplay.innerHTML =
                                "Only letters are allowed in State Name";
                        udaydisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function DistrictValidate() {
                var name = document.getElementById("district");
                var udaydisplay = document.getElementById("disdisplay");
                if (name.value.trim() == "") {
                    udaydisplay.innerHTML = "District Required";
                    udaydisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(name.value)) {
                        udaydisplay.innerHTML = "";
                        udaydisplay.style.color = "Green";
                        return true;
                    } else {
                        udaydisplay.innerHTML =
                                "Only letters are allowed in District Name";
                        udaydisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function CityValidate() {
                var name = document.getElementById("city");
                var udaydisplay = document.getElementById("citydisplay");
                if (name.value.trim() == "") {
                    udaydisplay.innerHTML = "City Required";
                    udaydisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[A-Z a-z]+$/;
                    if (reg.test(name.value)) {
                        udaydisplay.innerHTML = " ";
                        udaydisplay.style.color = "Green";
                        return true;
                    } else {
                        udaydisplay.innerHTML = "Only letters are allowed in City Name";
                        udaydisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function zipvalidate() {
                var name = document.getElementById("zip");
                var udisplay = document.getElementById("displayzip");

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
                        udisplay.innerHTML = "Only numbers are allowed in Zipcode";
                        udisplay.style.color = "red";
                        return false;
                    }
                }
            }
            function bt() {
                var name = document.getElementById("name");
                var Lname = document.getElementById("Lname");
                var Fname = document.getElementById("Fname");
                var Mname = document.getElementById("Mname");
                var mfirstInput = document.getElementById("firstm");
                var msecondInput = document.getElementById("secondm");
                var efirstInput = document.getElementById("firste");
                var esecondInput = document.getElementById("seconde");
                var afirstInput = document.getElementById("firsta");
                var asecondInput = document.getElementById("seconda");
                var pfirstInput = document.getElementById("firstpan");
                var psecondInput = document.getElementById("secondpan");
                var sname = document.getElementById("state");
                var dname = document.getElementById("district");
                var cname = document.getElementById("city");
                var zname = document.getElementById("zip");

                var bt = document.getElementById("bt");
                if (
                        name.value === "" ||
                        Lname.value === "" ||
                        Fname.value === "" ||
                        Mname.value === "" ||
                        mfirstInput.value === "" ||
                        msecondInput.value === "" ||
                        efirstInput.value === "" ||
                        esecondInput.value === "" ||
                        afirstInput.value === "" ||
                        asecondInput.value === "" ||
                        pfirstInput.value === "" ||
                        psecondInput.value === "" ||
                        sname.value === "" ||
                        dname.value === "" ||
                        cname.value === "" ||
                        zname.value === ""
                        ) {
                    alert("Please Enter Details");
                    return false;
                }

                return true;
            }

        </script>
    </head>
    <body>
      <%@include file="AllComponent/navbar.jsp" %>

        <br /><br />
        <section class="section dashboard loan border my-5 ml-3 mr-3">
            <h2 class="text-center my-3 mb-4" id="top">Account Open Form</h2>
            <fieldset>
                <div class="container register-form my-2">
                    <div class="form">
                        <div class="note">
                            <h5 class="mb-4">Personal Detail</h5>
                        </div>
                        <form action="../CustomerAccountOpen" method="post">
                            <div class="form-content">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >First Name
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="namevalidate()"
                                                id="name"
                                                type="text"
                                                class="form-control"
                                                placeholder="Your First Name"
                                                id="firstName"
                                                value=""
                                                name="firstName"
                                                />
                                            <span
                                                id="udisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Last Name
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="Lvalidate()"
                                                id="Lname"
                                                type="text"
                                                class="form-control"
                                                placeholder="Your Last Name"
                                                id="lastName"
                                                value=""
                                                name="lastName"
                                                />
                                            <span
                                                id="Ldisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Father Name
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="Fvalidate()"
                                                id="Fname"
                                                type="text"
                                                class="form-control"
                                                placeholder="Your Father Name"
                                                id="firstName"
                                                name="fatherName"
                                                value=""
                                                />
                                            <span
                                                id="fdisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Mother Name
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="Mvalidate()"
                                                id="Mname"
                                                type="text"
                                                class="form-control"
                                                placeholder="Your Mother Name"
                                                id="lastName"
                                                name="motherName"
                                                value=""
                                                />
                                            <span
                                                id="mdisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label for="inputAddress" class="form-label"
                                               >Date of Birth
                                            <font face="Lato" color="red">*</font></label
                                        >
                                        <input
                                            type="date"
                                            class="form-control"
                                            id="dob"
                                            name="dob"
                                            />
                                        <span class="error" id="DobError"></span>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Account Type * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span
                                            >

                                            <select
                                                class="form-control"
                                                id="accounttype"
                                                name="accounttype"
                                                >
                                                <option>Choose</option>
                                                <option>Saving</option>
                                                <option>Current</option>
                                                <option>Salary</option>
                                            </select>

                                            <span class="error" id="AccError"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span>Branch * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                                            <select
                                                class="form-control"
                                                id="accounttype"
                                                name="branch"
                                                >
                                                <option>Select Branch</option>
                                                <% for(BranchDao bdao: branchDao) { %>
                                                <option><%= bdao.getBranchName() %></option>
                                                <% } %>
                                            </select>

                                            <span class="error" id="branchError"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span>Gender * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                                            <input
                                                type="radio"
                                                id="male"
                                                name="gender"
                                                value="male"
                                                />
                                            <label for="male"
                                                   >Male
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label
                                            >

                                            <input
                                                type="radio"
                                                id="female"
                                                name="gender"
                                                value="female"
                                                />
                                            <label for="female"
                                                   >Female
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label
                                            >

                                            <input
                                                type="radio"
                                                id="other"
                                                name="gender"
                                                value="other"
                                                />
                                            <label for="other"
                                                   >Other
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label
                                            >

                                            <span class="error" id="genderError"></span>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Uplod Photo * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span
                                            >

                                            <input type="file" name="image" />

                                            <span class="error" id="FileError"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Occupation<font face="Lato" color="red"
                                                             >*</font
                                                ></span
                                            >


                                            <select id="occupationSelect" name="occupation" class="form-control">
                                                <option value="">Select Occupation</option>
                                                <option value="student">Student</option>
                                                <option value="teacher">Teacher</option>
                                                <option value="engineer">Engineer</option>
                                                <option value="doctor">Doctor</option>
                                                <option value="artist">Artist</option>
                                                <option value="programmer">Programmer</option>
                                                <option value="business_owner">Business Owner</option>
                                                <option value="unemployed">Unemployed</option>
                                                <!-- Add more occupation options as needed -->
                                            </select>



                                            <span class="error" id="stateError"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                > Marital Status <font face="Lato" color="red"
                                                                   > * </font> </span>

                                            <select
                                                class="form-control"
                                                id="maritalStatusSelect"
                                                name="maritailStatus">
                                                <option value="single">Select Marital Status</option>
                                                <option value="single">Single</option>
                                                <option value="married">Married</option>
                                                <option value="divorced">Divorced</option>
                                                <option value="widowed">Widowed</option>
                                            </select>

                                            <span class="error" id="cityError"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" >
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Mobile Number
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="mobilevalidate()"
                                                id="firstm"
                                                type="text"
                                                class="form-control"
                                                placeholder="Phone Number"
                                                id="phoneNumber"
                                                value=""
                                                name="mobile"
                                                maxlength="10"
                                                />
                                            <span
                                                id="modisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Confirm Mobile Number
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="mobilevalidate()"
                                                id="secondm"
                                                type="text"
                                                class="form-control"
                                                placeholder="Phone Number"
                                                id="phoneNumber"
                                                value=""
                                                maxlength="10"
                                                />
                                            <span
                                                id="modisplay2"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Gmail <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="emailvalidate()"
                                                id="firste"
                                                type="text"
                                                class="form-control"
                                                placeholder="Gmail "
                                                id="phoneNumber"
                                                value=""
                                                name="gmail"
                                                />
                                            <span
                                                id="edisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Confirm Gmail
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="emailvalidate()"
                                                id="seconde"
                                                type="text"
                                                class="form-control"
                                                placeholder="Gmail"
                                                id="phoneNumber"
                                                value=""
                                                />
                                            <span
                                                id="edisplay2"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="note">
                                    <h5 class="my-4 mb-4">Document Detail</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Aadhar Number
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="aadharvalidate()"
                                                id="firsta"
                                                type="text"
                                                class="form-control"
                                                placeholder="Aadhar Number"
                                                id="phoneNumber"
                                                value=""
                                                name="adhar"
                                                maxlength="12"
                                                />
                                            <span
                                                id="adisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Confirm Aadhar Number
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="aadharvalidate()"
                                                id="seconda"
                                                type="text"
                                                class="form-control"
                                                placeholder="Aadhar Number"
                                                id="phoneNumber"
                                                value=""
                                                maxlength="12"
                                                />
                                            <span
                                                id="adisplay2"
                                                style="color: red; font-size: 14px"
                                                >*</span
                                            >
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Pan Number
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="panvalidate()"
                                                id="firstpan"
                                                type="text"
                                                class="form-control"
                                                placeholder="Pan Number"
                                                id="phoneNumber"
                                                value=""
                                                name="pan"
                                                maxlength="10"
                                                />
                                            <span
                                                id="pdisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Confirm Pan Number
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="panvalidate()"
                                                id="secondpan"
                                                type="text"
                                                class="form-control"
                                                placeholder="Pan Number"
                                                id="phoneNumber"
                                                value=""
                                                maxlength="10"
                                                />
                                            <span
                                                id="pdisplay2"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="note">
                                    <h5 class="my-4 mb-4">Address Detail</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span
                                                >Address
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Street"
                                                id="phoneNumber"
                                                value=""
                                                name="address"
                                                />
                                            <span class="error" id="phoneError"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >State <font face="Lato" color="red">*</font></span
                                            >

                                            <select
                                                id="stateSelect"
                                                name="state"
                                                class="form-control"
                                                >
                                                <option value="Andhra Pradesh">
                                                    Andhra Pradesh
                                                </option>
                                                <option value="Arunachal Pradesh">
                                                    Arunachal Pradesh
                                                </option>
                                                <option value="Assam">Assam</option>
                                                <option value="Bihar">Bihar</option>
                                                <option value="Chhattisgarh">Chhattisgarh</option>
                                                <option value="Goa">Goa</option>
                                                <option value="Gujarat">Gujarat</option>
                                                <option value="Haryana">Haryana</option>
                                                <option value="Himachal Pradesh">
                                                    Himachal Pradesh
                                                </option>
                                                <option value="Jharkhand">Jharkhand</option>
                                                <option value="Karnataka">Karnataka</option>
                                                <option value="Kerala">Kerala</option>
                                                <option value="Madhya Pradesh">
                                                    Madhya Pradesh
                                                </option>
                                                <option value="Maharashtra">Maharashtra</option>
                                                <option value="Manipur">Manipur</option>
                                                <option value="Meghalaya">Meghalaya</option>
                                                <option value="Mizoram">Mizoram</option>
                                                <option value="Nagaland">Nagaland</option>
                                                <option value="Odisha">Odisha</option>
                                                <option value="Punjab">Punjab</option>
                                                <option value="Rajasthan">Rajasthan</option>
                                                <option value="Sikkim">Sikkim</option>
                                                <option value="Tamil Nadu">Tamil Nadu</option>
                                                <option value="Telangana">Telangana</option>
                                                <option value="Tripura">Tripura</option>
                                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                <option value="Uttarakhand">Uttarakhand</option>
                                                <option value="West Bengal">West Bengal</option>
                                            </select>

                                            <span
                                                id="statedisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >District
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="DistrictValidate()"
                                                id="district"
                                                type="text"
                                                class="form-control"
                                                placeholder="Enter District"
                                                id="phoneNumber"
                                                value=""
                                                name="distric"
                                                />

                                            <span
                                                id="disdisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >City <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="CityValidate()"
                                                id="city"
                                                type="text"
                                                class="form-control"
                                                placeholder="City"
                                                id="phoneNumber"
                                                value=""
                                                name="city"
                                                />
                                            <span
                                                id="citydisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Zip <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="zipvalidate()"
                                                id="zip"
                                                type="text"
                                                class="form-control"
                                                placeholder="Zip"
                                                id="phoneNumber"
                                                value=""
                                                name="pincode"
                                                maxlength="6"
                                                />
                                            <span
                                                id="displayzip"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Your Password
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="passvalidate()"
                                                id="firstpass"
                                                type="password"
                                                class="form-control"
                                                placeholder="Your Password "
                                                id="password"
                                                value=""
                                                name="password"
                                                />
                                            <span
                                                id="passdisplay"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span
                                                >Confirm Password
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                onkeyup="panvalidate()"
                                                id="secondpass"
                                                type="password"
                                                class="form-control"
                                                placeholder="Confirm Password "
                                                id="confirmPassword"
                                                value=""
                                                />
                                            <span
                                                id="passdisplay2"
                                                style="color: red; font-size: 14px"
                                                ></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span>
                                                Fill OTP
                                                <font face="Lato" color="red">*</font></span
                                            >
                                            <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Enter OTP "
                                                id="confirmotp"
                                                value=""
                                                name="mailotp"
                                                />
                                            <span class="error" id="confirmPasswordError"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 my-4">
                                        <button
                                            type="button"
                                            class="btn btn-primary"
                                            id="OtpSend"
                                            >
                                            Send Otp
                                        </button>
                                    </div>
                                </div>
                                <div class="col my-3 text-center" onclick="bt()">
                                    <button
                                        id="bt"
                                        onclick="bt()"
                                        type="submit"
                                        class="btn btn-danger waves-effect waves-light"
                                        id="btn-submit"
                                        >
                                        Submit
                                    </button>
                                </div>

                                <!-- <button type="submit" class="btn btn-primary text-center" id="submit"> Submit</button> -->
                                <!-- <input type="submit" value="Submit" class="btn btn-primary text-center" id="submit" > -->
                            </div>
                        </form>
                    </div>
                </div>
            </fieldset>
        </section>
        <!-- shhshend -->

        <!----Footer --->

        <footer>
            <div class="foot">&nbsp;</div>
            <div class="container" id="footer">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 col-md-6">
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
</html> </BranchDao
></BranchDao>
