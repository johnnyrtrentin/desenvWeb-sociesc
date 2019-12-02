<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../resources/css/main.css">
	<title>Login Inválido</title>
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>
	<div class="invalidLogin">
	    <img src="../resources/images/denied.png" alt="Acesso negado"/>

	<h1>Acesso não autorizado!  </h1>
	<h4>Para ter acesso, realize o login. </h4>
	
	<a class="btnInvalidLogin" href="${serverURL}/login.jsp">Ir para página de login</a>
	</div>
</body>
</html>