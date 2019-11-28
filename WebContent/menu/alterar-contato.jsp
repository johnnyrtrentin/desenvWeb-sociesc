<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alterar o Contato</title>
    <link rel="stylesheet" type="text/css" href="../main.css">	
	<script type="text/javascript" src="resources/js/validate-form.js"></script>
    <link href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alatsi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oxygen&display=swap" rel="stylesheet">
</head>
<body>
   <header class="top-header clearfix">
        <div class="maxwidth">
            <nav class="top-nav">
                <ul>
                    <li> <a href="../newContact.html">Cadastre-se</a></li>
                    <li> <a href="../newContact-created.jsp">Novo Contato - Sucesso</a></li>
                    <li> <a href="menu/lista-contatos.jsp">Lista Contatos</a></li>
                    <li> <a href="menu/alterar-contato.jsp">Altera Contato</a></li>
                </ul>
            </nav>
        </div>
    </header>
        <h2 class="AlteraH2">Altere o cadastro</h2>
 <div class="contact-form">


	
<form action="/desenvolvweb/menu/alterar-contato" method="POST">
			<input type="hidden"  name="id" value="${contato.id}">
	<div class="form-group"> 		
		<label class="loginCabecalho" for="email">Nome</label><br>
	<input type="text" name="nome" value="${contato.nome}" class="form-control"  /></div>
	   

	<div class="form-group"> 
	<label class="loginCabecalho" for="email">Sobrenome</label><br>
	<input type="text" name="sobrenome" value="${contato.sobrenome}" class="form-control"  /></div>				


    <div class="form-group"> 
	<label class="loginCabecalho" for="email">Telefone</label><br>    
    <input type="text" name="telefone" value="${contato.telefone}" class="form-control" /></div>
    
    <div class="form-group"> 
	<label class="loginCabecalho" for="email">E-mail</label><br>     
	<input type="text" name="email" value="${contato.email}" class="form-control"  /></div>

        <div class="form-group"> 
	<label class="loginCabecalho" for="email">Senha</label><br>  
	<input type="password" name="password" value="${contato.senha}"class="form-control"  /></div>
	
		

	<div class="form-group"> <button class="CadastroBotaoEnviar" type="submit" value="Alterar"> Alterar</button></div>

</form>
		</div>
</body> 
</html>