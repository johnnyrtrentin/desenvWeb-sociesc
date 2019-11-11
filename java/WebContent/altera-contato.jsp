<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera Contato</title>
</head>
<body>
	<form action="/desenvolvweb/alterar-contato" method="POST">
				
		<input type="hidden"  name="id" value="${contato.id}">
		Nome: <br><input type="text" name="nome" value="${contato.nome}"><br>
		Sobrenome: <br><input type="text" name="sobrenome" value="${contato.sobrenome}"><br>
		Telefone: <br><input type="text" name="telefone" placeholder="(XX) XXXXX-XXXX" value="${contato.telefone}"><br>
		Email: <br><input type="text" name="email" value="${contato.email}"><br>
		Senha: <br><input type="password" name="senha" value="${contato.senha}">
		
		
		<input type="submit" value="Alterar"> 
	</form>
</body>
</html>