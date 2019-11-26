'use strict';

function sendForm() {

	let name = document.getElementsByName("nome")[0].value;
	let lastName = document.getElementsByName("sobrenome")[0].value;
	let phone = document.getElementsByName("telefone")[0].value;
	let email = document.getElementsByName("email")[0].value;
	let password = document.getElementsByName("password")[0].value;

	let erroMsg = [];
	let validForm = true;

	if (name == "" || name.length < 6)
		erroMsg.push("Campo nome está inválido!\n");

	if (lastName == "" || lastName.length < 6)
		erroMsg.push("Campo sobrenome está inválido!\n");

	if (phone == "" || (/\D/.test(phone) || phone.length < 11))
		erroMsg.push("Campo telefone está inválido!\n");

	if (password == "")
		erroMsg.push("Campo senha está inválido!\n");
	
	if (email == "" || /\S+@\S+\.\S+/.test(email))
			erroMsg.push("Campo e-mail está inválido!\n")

	if (erroMsg.length > 0) 
		validForm = false;
	
	alert(erroMsg.join(''));

	return validForm;
}