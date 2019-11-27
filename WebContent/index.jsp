<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Página Principal</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="main.css">
    <link href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alatsi&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oxygen&display=swap" rel="stylesheet">
</head>
<body>
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

	<div class="menu"> 
	<h1>Bem vindo a página inicial</h1>
	<h4>Para iniciar, escolha uma das opções abaixo:</h4>
	
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>
	
    <span class="botaoIndex"> <a href="${serverURL}/newContact.html"> <img src="new.png"> Novo Contato</a></span>
<!-- 	<a href="${serverURL}/menu/edit-contact.jsp">Alterar Contato</a><br> -->
	<span class="botaoIndex"><a href="${serverURL}/menu/lista-contatos"><img src="list.png">Listar Contato</a></span>
	<span class="botaoIndex"><a href="${serverURL}/logout"><img src="logout.png">Logout</a></span>
</div>
</body>
</html>