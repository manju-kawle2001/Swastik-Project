<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="assets/css/Registration.css">
        <script>
       function validate(){
           var namestatus = namevalidate();
           var fnamestatus = fvalidate();
           var emailstatus =eValidate()
           var passwordstatus = passValidate();
           var mobilestatus = mValidate();
           
           var fdisplay = document.getElementById("fdisplay");
            var edisplay = document.getElementById("edisplay");
            var pdisplay = document.getElementById("pdisplay");
            var mdisplay = document.getElementById("mdisplay");
            
            if(namestatus==false){
                if(fnamestatus==false)
                    fdisplay.innerHTML="*";
                if(emailstatus==false)
                    edisplay.innerHTML="*";
                if(passwordstatus==false)
                    pdisplay.innerHTML="*";
                if(mobilestatus==false)
                    mdisplay.innerHTML="*";
                return false;
            }
             else if(fnamestatus==false){
                 if(emailstatus==false)
                    edisplay.innerHTML="*";
                if(passwordstatus==false)
                    pdisplay.innerHTML="*";
                if(mobilestatus==false)
                    mdisplay.innerHTML="*";
                return false;
            }
            else if(emailstatus==false){                  
                if(passwordstatus==false)
                    pdisplay.innerHTML="*";
                if(mobilestatus==false)
                    mdisplay.innerHTML="*";
                return false;
            }
           else if(passwordstatus==false){                   
                if(mobilestatus==false)
                    mdisplay.innerHTML="*";
                return false;
            }
            else if(mobilestatus==false){
                   
                return false;
            }
            else {
                return true;
            }
       }
        function namevalidate()
        {
            var name = document.getElementById("name");
            var udisplay = document.getElementById("udisplay");
            if(name.value.trim()==""){
                udisplay.innerHTML="Name Required";
                udisplay.style.color="red";
                return false;
            }
            else{
                var reg =/^[A-Z a-z]+$/;
                if(reg.test(name.value)){
                    udisplay.innerHTML="";
                    udisplay.style.color="green";   
                    return true;
                }
                else{
                   udisplay.innerHTML="Invalid";
                    udisplay.style.color="orange";
                    return false;
                }
            }
        }
         function fvalidate()
        {
            var name = document.getElementById("fname");
            var fdisplay = document.getElementById("fdisplay");
            if(name.value.trim()==""){
                fdisplay.innerHTML="FName Required";
                fdisplay.style.color="red";
                return false;
            }
            else{
                var reg =/^[A-Z a-z]+$/;
                if(reg.test(name.value)){
                    fdisplay.innerHTML="";
                    fdisplay.style.color="green";   
                    return true;
                }
                else{
                    fdisplay.innerHTML="invalid Name";
                    fdisplay.style.color="orange";   
                    return false;
                }
            }
        }
         function eValidate()
        {
            var name = document.getElementById("email");
            var edisplay = document.getElementById("edisplay");
            if(name.value.trim()==""){
                edisplay.innerHTML="email Required";
                edisplay.style.color="red";
                
                return false;
            }
            else{
                var reg =/^[0-9A-Za-z]+@[a-z]+\.[a-z]{2,3}$/;
                if(reg.test(name.value)){
                     edisplay.innerHTML="";
                    edisplay.style.color="green";   
                    return true;
                }
                else{
                    edisplay.innerHTML="Invalid email @ and . required";
                    edisplay.style.color="orange";
                    return false;
                }
            }
        }
         function mValidate()
        {
            var name = document.getElementById("mobile");
            var mdisplay = document.getElementById("mdisplay");
            if(name.value.trim()==""){
                mdisplay.innerHTML="mobile Required";
                mdisplay.style.color="red";
                
                return false;
            }
            else{
                var reg =/^[6789][0-9]{9}/;
                if(reg.test(name.value)){
                    mdisplay.innerHTML="";
                    mdisplay.style.color="green";   
                    return true;
                }
                else{
                    mdisplay.innerHTML="Invalid";
                    mdisplay.style.color="orange";   
                    return false;
                }
            }
        }
        
}
    </script>
    </head>
    

    <div class="form-wrapper">
        <div class="form-side">

            <form action="../EmployeeServlet"  class="my-form" onsubmit="return validate()" method="post">
                <div class="login-welcome-row ">                    
                    <center><h1>ADD EMPLOYEE FORM </h1></center>
                </div>             

                <div class="text-field">
                    <label for="email">Enter Your Name:
                        <input onkeyup="namevalidate()" type="text" id="fullname" name="name" autocomplete="off" placeholder="Name"
                               >
                        <span id="udisplay" style="color:red;"></span>                        
                    </label>
                     <label for="dob">Date of birth:
                        <input type="date" id="dob" name="dob" autocomplete="off" placeholder="Date of birth"
                               required >
                       
                    </label>
                </div>            

                <div class="text-field">
                   
                </div>
                
                 <div class="text-field">
                    <label for="email">Enter Your Email:
                        <input onkeyup="eValidate()" type="email" id="email" name="email" autocomplete="off" placeholder="Your Email"
                              >
                        <span id="edisplay" style="color:red;"></span>
                        <!-- svg icon -->
                    </label>
                </div>
                
                 <div class="text-field">
                    <label for="password">Password:
                        <input id="password" type="password" name="password" placeholder="Your Password" title="Minimum 6 characters at 
                               least 1 Alphabet and 1 Number"
                               >
                        <span id="pdisplay" style="color:red;"></span>
                        <!-- svg icon -->
                    </label>
                </div>
                
                <div class="text-field">
                    <label for="phon-no">Enter Your Mobile No.
                        <input type="tel" maxlength="10" id="mobile" name="phone" autocomplete="off" placeholder="Phone - no"
                               >   
                        <span id="mdisplay" style="color:red;"></span>
                    </label>
                </div>

                <div class="text-field">
                    <label for="email">Salary
                        <input onkeyup="mValidate()" type="salay" id="salary" name="salary" autocomplete="off" placeholder="Salary"
                               >
                        <span id="mdisplay" style="color:red;"></span>
                    </label>
                </div>              
               
                <div class="text-field">
                    <label for="email">Employee Position
                        <input onkeyup="namevalidate()" type="position" id="position" name="position" autocomplete="off" placeholder="position"
                               >       <span id="udisplay" style="color:red;"></span>                        
                    </label>
                </div>  
                <button class="my-form__button" type="submit"value="Submit" name="submit">
                    Sign up
                </button>
                <div class="my-form__actions">
                    <div class="my-form__row">
                        <span>Did you forget your password?
                        <a href="AdminDashBoard.jsp" title="Login">
                            Back
                        </a>
                        </span>
                    </div>                    
                </div>
            </form>
        </div>
    </div>