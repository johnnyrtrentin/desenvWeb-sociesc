<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Inválido</title>
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>
	
	<h1 style="color: red; text-align: center; font-weight: 400">
		Acesso não autorizado, Por favor realize o login!
	</h1>
	
	<a href="${serverURL}/login.jsp">Ir para página de login</a>

</body>
</html>