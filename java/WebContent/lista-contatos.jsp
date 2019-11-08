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
	<c:if test="${not empty contatos}" var = "tetse"> </c:if>
	<c:forEach items="${contatos}" var="contato">
		<li>${contato.nome} (${contato.email})
		<a href="/desenvolvweb/excluir-contato?id=${contato.id}"> Excluir</a> 
		<a href="busca-contato?id=${contato.id}"> Alterar</a>
		</li>
	</c:forEach>
	
</ul>
</body>
</html>