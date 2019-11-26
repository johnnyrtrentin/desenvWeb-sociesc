<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Novo Contato</title>
</head>
<body>
	<strong>Contato Cadastrado</strong> <p> 
	<strong>Nome:</strong> ${contato.nome} ${contato.sobrenome}<br>
	<strong>Telefone:</strong> ${contato.telefone}<br>
	<strong>Email:</strong> ${contato.email}<br>
<!--<strong>Senha:</strong> ${contato.senha} <br>-->

<a href="http://localhost:8080/desenvolvweb/login.jsp">Voltar para a página de LOGIN</a><br>
<a href="http://localhost:8080/desenvolvweb/index.jsp">Voltar para o menu</a>

</body>
</html>