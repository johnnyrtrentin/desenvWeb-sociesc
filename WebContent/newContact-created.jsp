<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cadastrar Contato</title>
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
	<meta charset="UTF-8">
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>

<header class="top-header clearfix">
    <div class="maxwidth">
    <nav class="top-nav">
                <ul>
                    <li> <a href="newContact.html">Cadastro</a></li>
                    <li> <a href="newContact-created.jsp">Novo Contato - Sucesso</a></li>
                    <li> <a href="menu/lista-contatos.jsp">Lista Contatos</a></li>
                    <li> <a href="menu/alterar-contato.jsp">Altera Contato</a></li>
                </ul>
     </nav>
     </div>

</header>
 
 <div class="contatoSucesso">
	<div class="resultadoCadastro"> 
	<br>
	    <img src="resources/images/Right.gif" alt="Sucesso no cadastro"/>
		<h3 class="h3cadastro">Seu cadastro foi realizado<br> com sucesso! </h3> </div>
			   	
		<span class="titulo">Nome: </span> <span class="conteudo"> ${contato.nome} ${contato.sobrenome}</span><br>
		<span class="titulo">Telefone: </span> <span class="conteudo"> ${contato.telefone}</span><br>
		<span class="titulo">Email: </span> <span class="conteudo"> ${contato.email}</span><br>
	<div class="csBotao">
	<a class="btnContact" href="${serverURL}/login.jsp">Retornar a página de login</a><br><br>
	<a class="btnContact" href="${serverURL}/index.jsp">Retornar a página principal</a>
		</div>
</div>
</body>
</html>