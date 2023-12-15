<%-- 
    Document   : Register
    Created on : 06-Dec-2023, 5:24:09 am
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
  </head>
  <Style>
      #container{
          width: 60vw;
          height:90vh;
/*          align-items: center;
          justify-content: center;*/
          margin-left: 20vw;
          background-color: #9F1945;
          color: white;
          padding-left: 170px;
      }
      #login{
          margin-top:30px;
          margin-left: 200px;
          border-radius:7px;
      }
      #image{
          width:490px;
      }
        @media only screen and (max-width: 360px) {
             #container{
          width: 180vw;
          height:130vh;
/*          align-items: center;
          justify-content: center;*/
/*          margin-left: 10vw;*/
          background-color: #9F1945;
          color: white;
          padding-left: 50px;
      }
      #login{
          margin-top:30px;
          margin-left: 200px;
          border-radius:7px;
      }
      input{
          width:80vw;
      }
      #image{
          width:490px;
      }
        }
  </Style>
  <Script>
      function Namevalid() {
    var name = document.getElementById("name");
    var udisplay = document.getElementById("displayid");

    if (name.value.trim() === " ") {
        udisplay.innerHTML = "name Required";
        udisplay.style.color = "white";
        return false;
    } else {
        var reg = /^[A-Z a-z]+$/; // Only allow numbers
        if (reg.test(name.value)) {
//            udisplay.innerHTML = "valid";
            udisplay.style.color = "white";
            return true;
        } else {
            udisplay.innerHTML = "please fill  only charachter";
            udisplay.style.color = "white";
            return false;
        }
    }
}
        function LastNamevalid() {
    var lname = document.getElementById("lname");
    var udisplay1 = document.getElementById("displayid1");

    if (lname.value.trim() === " ") {
        udisplay1.innerHTML = "Last name Required";
        udisplay1.style.color = "white";
        return false;
    } else {
        var reg = /^[A-Z a-z]+$/; // Only allow numbers
        if (reg.test(lname.value)) {
//            udisplay1.innerHTML = "valid";
            udisplay1.style.color = "white";
            return true;
        } else {
            udisplay1.innerHTML = "please fill only charachter";
            udisplay1.style.color = "white";
            return false;
        }
    }
}
     function Passvalid() {
    var pass = document.getElementById("pass");
    var udisplay2 = document.getElementById("displayid2");

    if (pass.value.trim() === " ") {
        udisplay2.innerHTML = "Password Required";
        udisplay2.style.color = "white";
        return false;
    } else {
        var reg = /^(?=.+?[0-9])(?=.+[A-Z])(?=.+?[a-z])(?=.+?[~!@#$%^&*()-+]).{8,}$/;
        if (reg.test(pass.value)) {
           udisplay2.innerHTML = "valid";
            udisplay2.style.color = "white";
            return true;
        } else {
            udisplay2.innerHTML = "Please enter at least one number, uppercase, lowercase, special character, and a minimum of 8 characters";
            udisplay2.style.color = "white";
            return false;
        }
    }
}

function validateEmail() {
    var email = document.getElementById("email");
    var udisplay3 = document.getElementById("displayid3");

    if (email.value.trim() === " ") {
        udisplay3.innerHTML = "email Required";
        udisplay3.style.color = "white";
        return false;
    } else {
        var reg =/^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (reg.test(email.value)) {
            udisplay3.innerHTML = "valid";
            udisplay3.style.color = "white";
            return true;
        } else {
            udisplay3.innerHTML =  "Invalid email format";
            udisplay3.style.color = "white";
            return false;
        }
    }
}
function Adharvalid() {
    var adhar = document.getElementById("adhar");
    var udisplay4 = document.getElementById("displayid4");

    if (adhar.value.trim() === " ") {
        udisplay4.innerHTML = "AdharNumber Required";
        udisplay4.style.color = "white";
        return false;
    } else {
        var reg =/^[0-9]+$/;

        if (reg.test(adhar.value)) {
            udisplay4.innerHTML = "valid";
            udisplay4.style.color = "white";
            return true;
        } else {
            udisplay4.innerHTML =  "Only Number are allowed here for adhar card";
            udisplay4.style.color = "white";
            return false;
        }
    }
}
function pancardvalid() {
    var pan = document.getElementById("pan");
    var udisplay5 = document.getElementById("displayid5");

    if (pan.value.trim() === " ") {
        udisplay5.innerHTML = "PanCard Number Required";
        udisplay5.style.color = "white";
        return false;
    } else {
        var reg =/^[0-9]+$/;

        if (reg.test(pan.value)) {
            udisplay5.innerHTML = "valid";
            udisplay5.style.color = "white";
            return true;
        } else {
            udisplay5.innerHTML =  "Only Number are allowed here for Pancard";
            udisplay5.style.color = "white";
            return false;
        }
    }
}
function Movalidate() {
    var mobile = document.getElementById("mobile");
    var udisplay6 = document.getElementById("displayid6");

    if (mobile.value.trim() === " ") {
        udisplay6.innerHTML = "Mobile Number Required";
        udisplay6.style.color = "white";
        return false;
    } else {
        var reg =/^[0-9]+$/;

        if (reg.test(mobile.value)) {
            udisplay6.innerHTML = "valid";
            udisplay6.style.color = "white";
            return true;
        } else {
            udisplay6.innerHTML =  "Only Number are allowed here for Phone Number";
            udisplay6.style.color = "white";
            return false;
        }
    }
}
function datevalid() {
    var dob = document.getElementById("dob");
    var udisplay8 = document.getElementById("displayid8");

    if (dob.value.trim() === " ") {
        udisplay8.innerHTML = "Date of Birth Required";
        udisplay8.style.color = "white";
        return false;
    } else {
        var reg =/^[0-9]+$/;

        if (reg.test(dob.value)) {
//            udisplay8.innerHTML = "valid";
            udisplay8.style.color = "white";
            return true;
        } else {
            udisplay8.innerHTML =  "Only Number are allowed here for Date of Birth ";
            udisplay8.style.color = "white";
            return false;
        }
    }
}
  function Imagevalid() {
    var Image = document.getElementById("Image");
    var udisplay9 = document.getElementById("displayid9");

    if (Image.value.trim() === " ") {
        udisplay9.innerHTML = "Image Required";
        udisplay9.style.color = "white";
        return false;
//    } else {
//        var reg =/^[0-9]+$/;
//
//        if (reg.test(dob.value)) {
//            udisplay8.innerHTML = "valid";
//            udisplay8.style.color = "white";
//            return true;
//         else {
//            udisplay8.innerHTML =  "Only Number are allowed here for Date of Birth ";
//            udisplay8.style.color = "white";
//            return false;
//        }
    }
}    
 
  </Script>
  <body>
      <div class=" border mt-5 align-center"id="container">
          <form action="../EmployeeRegister" method="POST" class="my-form" >
          <div class="row">
              <div class="col-md-10 p-2"><center><h2>Registration</h2></center></div>
          </div>
          <div class="row">
             <div class="col-md-4  mt-3">
                 
      Name<span style="color:white; font-size: 14px; margin-left: 140px;">*</span><input type="text" class="form-control"  onkeyup="Namevalid()" type="text" id="name" name="name" placeholder="First name" >
       <span id="displayid" style="color:white; font-size: 14px;"></span>
        </div>
                   <div class="col-md-4  mt-3">
      LastName<span style="color:white; font-size: 14px; margin-left: 110px; margin-top:-40px;">*</span><input type="text" class="form-control"  onkeyup="LastNamevalid()" id="lname" name="lname" placeholder="Last Name">
       <span id="displayid1" style="color:white; font-size: 14px;"></span>
        </div>
              
      </div>
            <div class="row">
             <div class="col-md-4  mt-3">
                 
     Password<span style="color:white; font-size: 14px; margin-left:110px; margin-top:-40px;">*</span><input type="text" class="form-control" name="password" onkeyup="Passvalid()" id="pass" type="password" name="pass"  placeholder="Enter Password">
        <span id="displayid2" style="color:white; font-size: 14px;"></span>
        </div>
                   <div class="col-md-4  mt-3">
    Email<span style="color:white; font-size: 14px; margin-left:140px; margin-top:-40px;">*</span><input type="text" class="form-control"name="email" id="email" onkeyup="validateEmail()" placeholder="Enter Email" aria-label="Last name">
      <span id="displayid3" style="color:white; font-size: 14px;"></span>
        </div>
              
      </div>
            <div class="row">
             <div class="col-md-4  mt-3">
                 
                 AdharNo.<span style="color:white; font-size: 14px; margin-left:120px; margin-top:-40px;">*</span><input type="text" class="form-control" name="adhar" id="adhar" onkeyup="Adharvalid()" placeholder="AdharNumber" aria-label="First name">
        <span id="displayid4" style="color:white; font-size: 14px;"></span>
        </div>
                   <div class="col-md-4  mt-3">
      PanCardNo.<span style="color:white; font-size: 14px; margin-left:100px; margin-top:-40px;">*</span><input type="text" class="form-control" name="pancard"  id="pan" onkeyup="pancardvalid()" placeholder="PancardNumber" aria-label="Last name">
        <span id="displayid5" style="color:white; font-size: 14px;"></span>
        </div>
              
      </div>
            <div class="row">
             <div class="col-md-4  mt-3">
                 
      PhoneNo.<span style="color:white; font-size: 14px; margin-left:110px; margin-top:-40px;">*</span><input type="text" class="form-control" id="mobile" onkeyup="Movalidate()" maxlength="10" type="text" name="mobile" placeholder="Phone Number" aria-label="First name">
        <span id="displayid6" style="color:white; font-size: 14px;"></span>
        </div>
                   <div class="col-md-4  mt-3">
     DOB.<span style="color:white; font-size: 14px; margin-left:150px; width:200px; margin-top:-40px;">*</span><input type="Date" class="form-control" name="dob"  id="dob" onkeyup="datevalid()" name="mobile" placeholder="Date of Birth" >
        <span id="displayid8" style="color:white; font-size: 14px;"></span>
        </div>
              
      </div>
              <div>
                 Image.<span style="color:white; font-size: 14px; margin-left:420px;width:200px; margin-top:-40px;">*</span><input type="file" class="form-control" name="Image"  id="image" onkeyup="Imagevalid()" placeholder="Image" >
        <span id="displayid9" style="color:white; font-size: 14px;"></span>
        </div>
              
      
     
   <button class="my-form__button" type="submit" id="login">
                    Sign up
                </button>
                <div class="my-form__actions">
                    <div class="my-form__row">
                        <span>Go To Back</span>
                           <a href="index.jsp" title="Login">
                            Back
                        </a>
  

                    </div>

                    </div>
      </div>
          </form>
      </div>
      
  </body>
</html>