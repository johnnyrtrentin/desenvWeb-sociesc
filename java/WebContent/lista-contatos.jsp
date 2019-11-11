<%@page import="model.Contato"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Contatos</title>
</head>
<body>
<h1> Lista contatos </h1>
<ul>
	<c:if test="${not empty contatos}"> 
	<c:forEach items="${contatos}" var="contato">
		<li> <strong>Nome:</strong> ${contato.nome} ${contato.sobrenome} 
			 <strong>Email:</strong>  ${contato.email}
			 <strong>Senha:</strong> ${contato.senha}
			 <strong>Telefone:</strong>  ${contato.telefone}
		<a href="/desenvolvweb/excluir-contato?id=${contato.id}"> Excluir</a> 
		<a href="busca-contato?id=${contato.id}"> Alterar</a>
		</li>
	</c:forEach>
	</c:if>
	<c:if test="${empty contatos}"> 
	<h2 style="color: red;">Nenhum contato cadastrado</h2>
	</c:if>
</ul>
</body>
</html>