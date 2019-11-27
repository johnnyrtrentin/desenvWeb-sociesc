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
    <header class="top-header clearfix">
        <div class="maxwidth">
            <nav class="top-nav">
                <ul>
                    <li> <a href="newContact.html">Cadastre-se</a></li>
                    <li> <a href="newContact-created.jsp">Novo Contato - Sucesso</a></li>
                    <li> <a href="menu/lista-contatos.jsp">Lista Contatos</a></li>
                    <li> <a href="menu/alterar-contato.jsp">Altera Contato</a></li>
                </ul>
            </nav>
        </div>
    </header>
     <!--         <img id="loginBackground" src="background.png" alt="Background"/> -->
   
   <div class="container contact-form">

        
          
	<form action="/desenvolvweb/login" method="POST" onsubmit="return validateLogin()">
		<h2>Login</h2>
		<div class="row">
		<div class="col-md-6">
		<div class="form-group">		
		
		

			<label for="email">E-mail</label>
			<input type="email" id="email" name="email" class="form-control"/></div>
			
			<label for="password">Senha</label>
			<input type="password" id="password" name="password" class="form-control"/></div>
					<div class="form-group">	
							
		<div class="loginDivBotao">
			<button class="loginBotao" type="submit">Login</button></div><br>
			<div class="loginBotaoCadastro"> 	<a href="${serverURL}/newContact.html">Cadastre-se</a></div>
		</div>
		</div>
		<div class="loginImageBack"> <img src="hello1.png" alt="Background"/></div>
	</form>
	</div>
</body>
</html>