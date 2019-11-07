<%@page import="model.Contato"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Contatos</title>
</head>
<body>
<h1> Lista contatos </h1>

<% List<Contato> lista = (List<Contato>) request.getAttribute("contatos"); %>
<ul>
	<%for (Contato contato : lista){ %>
		<li> <%= contato.getNome() %> (<%= contato.getEmail() %>) 
		<a href="/desenvolvweb/excluir-contato?id=<%= contato.getId()%>"> Excluir</a> 
		<a href="busca-contato?id=<%= contato.getId()%>"> Alterar</a></li>
	<% } %>
	
	
</ul>
</body>
</html>