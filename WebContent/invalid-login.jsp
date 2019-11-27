<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="main.css">
	<title>Login Inválido</title>
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>
	<div class="invalidLogin">
	    <img src="https://cdn1.iconfinder.com/data/icons/jetflat-multimedia-vol-4/90/0042_099_lock_access_denied_blocked-512.png" alt="Acesso negado"/>

	<h1>Acesso não autorizado!  </h1>
	<h4>Para ter acesso, realize o login. </h4>
	
	<a class="btnInvalidLogin" href="${serverURL}/login.jsp">Ir para página de login</a>
	</div>
</body>
</html>