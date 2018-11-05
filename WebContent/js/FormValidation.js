//REGISTER FORM VALIDATION
var status1 = true;
var status2 = true;
var status3 = true;
var status4 = true;
document.getElementById("register").disabled = true; 

function validateFname() {
        var fname = document.forms["myForm"]["fname"].value;
        if (fname == "") {
           document.getElementById("fnameError").innerHTML = "cannot be left blank.";
           status1 = true;
           validateSubmit();
        }else{
        	 document.getElementById("fnameError").innerHTML = "";
        	 status1 = false;
        	 validateSubmit();
        }
}
function validateLname() {
    var lname = document.forms["myForm"]["lname"].value;
    if (lname == "") {
       document.getElementById("lnameError").innerHTML = "cannot be left blank.";
       validateSubmit();
       status2 = true;
	}else{
		 document.getElementById("lnameError").innerHTML = "";
		 status2 = false;
		 validateSubmit();
	}
}
function validateEmail() {
	var mailFormat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	
	var email = document.getElementById("email").value;
	
	if(email == "") {
		document.getElementById("emailError1").innerHTML = " cannot be left blank.";
		status3 = true;
		validateSubmit();
	} else if(!(mailFormat.test(email))) {
		document.getElementById("emailError1").innerHTML = "";
		document.getElementById("emailError2").innerHTML = " is invalid.";
		status3 = true;
		validateSubmit();
	} else {
		document.getElementById("emailError1").innerHTML = "";
		document.getElementById("emailError2").innerHTML = "";
		status3 = false;
		validateSubmit()
	}
}
function validatePassword() {
    var pwd = document.forms["myForm"]["pwd"].value;
    if (pwd == "") {
       document.getElementById("pwdError").innerHTML = "cannot be left blank.";
       status4 = true;
       validateSubmit();
	}else{
		 document.getElementById("pwdError").innerHTML = "";
		 status4 = false;
		 validateSubmit();
	}
}
function validateSubmit() {
    if(status1 == false && status2 == false && status3 == false &&  status4 == false ){ 
       document.getElementById("register").disabled = false; 
	}else{
		document.getElementById("register").disabled = true; 
	}
}


//LOGIN FORM VALIDATION
var status5 = true;
var status6 = true;

function validateLoginEmail() {
	var mailFormat = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	
	var email = document.getElementById("LoginEmail").value;
	
	if(email == "") {
		document.getElementById("LoginEmailError1").innerHTML = " cannot be left blank.";
		status5 = true;
		validateLogin();
	} else if(!(mailFormat.test(email))) {
		document.getElementById("LoginEmailError1").innerHTML = "";
		document.getElementById("LoginEmailError2").innerHTML = " is invalid.";
		status5 = true;
		validateLogin();
	} else {
		document.getElementById("LoginEmailError1").innerHTML = "";
		document.getElementById("LoginEmailError2").innerHTML = "";
		status5 = false;
		validateLogin()
	}
}
function validateLoginPassword() {
    var pwd = document.getElementById("LoginPwd").value;
    if (pwd == "") {
       document.getElementById("LoginPwdError").innerHTML = "cannot be left blank.";
       status6 = true;
       validateLogin();
	}else{
		 document.getElementById("LoginPwdError").innerHTML = "";
		 status6 = false;
		 validateLogin();
	}
}
function validateLogin() {
    if(status5 == false){ 
       document.getElementById("login").disabled = false; 
	}else{
		document.getElementById("login").disabled = true; 
	}
}