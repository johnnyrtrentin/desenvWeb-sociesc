<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Menu da aplicação</title>
</head>
<body>
	<h1 style="color: blue;">Menu da aplicação</h1>
	
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>
	
	<a href="${serverURL}/newContact.html">Novo Contato</a><br>
	<a href="${serverURL}/menu/edit-contact.jsp">Alterar Contato</a><br>
	<a href="${serverURL}/menu/lista-contatos">Listar Contato</a><br>
	<a href="${serverURL}/logout">Logout</a>
</body>
</html>