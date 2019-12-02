<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}" />
	
	<header class="top-header clearfix">
		<div class="maxwidth">
			<nav class="top-nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="newContact.html">Cadastrar</a></li>
					<li><a href="menu/lista-contatos.jsp">Listar</a></li>
					<li><a href="${serverURL}/logout">Sair</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<div class="menu">
		<h1>Bem vindo a página inicial</h1>
		<h4>Lorem ipsum primis praesent amet hendrerit gravida pretium,
			sed id ornare facilisis interdum iaculis, lacus lectus curabitur urna
			velit suspendisse. vestibulum tempor netus litora lorem nullam etiam
			auctor, id nam luctus praesent congue nisl, congue donec dui
			curabitur nullam libero. per dictumst nam massa dictum ut donec
			vitae, cubilia tincidunt felis molestie fames ipsum convallis, donec
			nec dolor fusce convallis netus. dolor donec scelerisque dapibus est
			quis morbi, dictum iaculis nulla at porta bibendum odio, leo id
			himenaeos fringilla est.</h4>

		<div class="grid-container">
			<div class="IndexCol1">
				<a href="${serverURL}/newContact.html"> <img
					src="resources/images/new.png"><br>
				</a>Criar Novo Contato <br>
			</div>
			<div class="IndexCol2">
				<a href="${serverURL}/menu/lista-contatos"><img
					src="resources/images/list.png"></a><br>
				<br>Lista de Contatos <br>
			</div>
			<div class="IndexCol3">
				<a href="${serverURL}/logout"><img
					src="resources/images/logout.png"></a><br>Sair <br>
			</div>
		</div>
	</div>
</body>
</html>