<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- verificar se funciona -->
    <link rel="stylesheet" type="text/css" href="main.css">
    <script type="text/javascript" src="resources/js/validate-login.js"></script>
    
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alatsi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oxygen&display=swap" rel="stylesheet">
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>
     <!--         <img id="loginBackground" src="background.png" alt="Background"/> -->
<br><br><br><br><br><br>
<div class="contact-form">
	<form action="/desenvolvweb/login" method="POST" onsubmit="return validateLogin()">
		<h2>Bem vindo de volta</h2>
		<h3>Faça login na sua conta</h3>
		<div class="form-group">		
			<label class="loginCabecalho" for="email">E-mail</label><br>
			<input type="email" id="email" name="email" class="form-control"/></div>
		<div class="form-group">	
			<label class="loginCabecalho" for="password">Senha</label><br>
			<input type="password" id="password" name="password" class="form-control"/>
		</div>	
						
		<div class="loginDivBotao">
		<br>
			<button class="loginBotao" type="submit">Login</button><br>
			<button class="loginBotaoCadastro"><a href="${serverURL}/newContact.html">Cadastre-se</a></button>
		</div>

		<div class="loginImageBack"> <img src="hello1.png" alt="Background"/></div>
	</form>
</div>
</body>
</html>