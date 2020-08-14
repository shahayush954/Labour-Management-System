function change_form_action(x){
	var a = document.getElementById("registration-form");
	if (x == "personal") {
		a.action = "personal_signup_success.html";
	}
	else{
		a.action = "company_signup_success.html";
	}
}



function change_href(x){
	var a = document.getElementById("login-href");
	if(x == null){
		a.href = "login.html";
	}
	else{
		a.href = "logout.html";
	}
}