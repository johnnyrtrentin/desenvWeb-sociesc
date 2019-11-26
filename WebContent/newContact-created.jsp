<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Novo Contato</title>
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}"/>
	
	<strong>Contato Cadastrado</strong> 
	<strong>Nome:</strong> ${contato.nome} ${contato.sobrenome}<br>
	<strong>Telefone:</strong> ${contato.telefone}<br>
	<strong>Email:</strong> ${contato.email}<br>

	<a href="${serverURL}/login.jsp">Voltar para a página de LOGIN</a><br>
	<a href="${serverURL}/index.jsp">Voltar para o menu</a>
	
</body>
</html>