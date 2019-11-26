'use strict';

function validateLogin() {
	let email = document.getElementsByName("email")[0].value;
	let password = document.getElementsByName("password")[0].value;
	
	let fieldsOK = true;
	let errorMsg = [];
	
	if(email == "" || password == "")
		errorMsg.push("Usuário ou senha inválidos");
	
	if (errorMsg.length > 0) {
		alert(errorMsg);;
		fieldsOK = false;
	}
	
	return true;
}