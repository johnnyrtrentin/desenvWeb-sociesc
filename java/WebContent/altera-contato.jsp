<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Contato contato = (Contato)request.getAttribute("contato"); %>
<% System.out.println(contato); %>
<% int IdContato = contato.getId(); 

%>
	<form action="/desenvolvweb/alterar-contato" method="POST">
				
		<input type="hidden"  name="id" value=<%=contato.getId()%>>
		Nome: <br><input type="text" name="nome" value="<%=contato.getNome()%>"><br>
		Sobrenome: <br><input type="text" name="sobrenome" value="<%=contato.getSobrenome()%>"><br>
		Telefone: <br><input type="text" name="telefone" placeholder="(XX) XXXXX-XXXX" value="<%=contato.getTelefone()%>"><br>
		Email: <br><input type="text" name="email" value="<%=contato.getEmail()%>"><br>
		Senha: <br><input type="password" name="password" value="<%=contato.getSenha()%>">
		
		
		<input type="submit" value="Alterar"> 
	</form>
</body>
</html>