<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Página de LOGIN</title>
</head>
<body>
	<h1 style="text-align: center;">LOGIN</h1>
	
	<form action="/desenvolvweb/login" method="POST">
		<div style="text-align: center">
			<label for="email">E-mail</label>
			<input type="email" id="email" name="email"/><br>
			
			<label for="password">Senha</label>
			<input type="password" id="password" name="password"/>
				
			<div>
				<button type="submit">Logar-se</button>
			</div>
		</div>
		<div>
			<a href="http://localhost:8080/desenvolvweb/novo-contato.html">Cadastre-se</a>
		</div>
	</form>
</body>
</html>