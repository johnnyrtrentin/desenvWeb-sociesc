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
	
	<c:set var="newContact" value="${pageContext.request.contextPath}"/>
	<c:set var="listContact" value="${pageContext.request.contextPath}"/>
	<c:set var="editContact" value="${pageContext.request.contextPath}"/>
	<c:set var="logout" value="${pageContext.request.contextPath}"/>
	
	<a href="${newContact}/novo-contato.html">Novo Contato</a><br>
<!-- <a href="${editContact}/menu/edit-contact.jsp">Alterar Contato</a><br> -->
	<a href="${listContact}/lista-contatos">Listar Contato</a><br>
	<a href="${logout}/logout">Logout</a>
</body>
</html>