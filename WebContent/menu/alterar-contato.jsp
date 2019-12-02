<%@page import="model.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Alterar Contato</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
	<script type="text/javascript" src="../resources/js/validate-form.js"></script>
</head>
<body>
	<c:set var="serverURL" value="${pageContext.request.contextPath}"></c:set>
	
	<header class="top-header clearfix">
		<div class="maxwidth">
			<nav class="top-nav">
				<ul>
					<li><a href="../index.jsp">Home</a></li>
					<li><a href="../newContact.html">Cadastrar</a></li>
					<li><a href="lista-contatos.jsp">Listar</a></li>
					<li><a href="${serverURL}/logout">Sair</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<div class="contact-form">
		<h2 class="AlteraH2">Altere o cadastro</h2>
		<h5>
			Lorem ipsum primis praesent amet hendrerit gravida pretium, <br>
			sed id ornare facilisis interdum iaculis, lacus lectus suspendisse.
		</h5>

		<form action="/desenvolvweb/menu/alterar-contato" method="POST"
			onsubmit="return sendForm()">
			<input type="hidden" name="id" value="${contato.id}">
			<div class="form-group">
				<label class="loginCabecalho" for="email">Nome</label><br> <input
					type="text" name="nome" value="${contato.nome}"
					class="form-control" />
			</div>

			<div class="form-group">
				<label class="loginCabecalho" for="email">Sobrenome</label><br>
				<input type="text" name="sobrenome" value="${contato.sobrenome}"
					class="form-control" />
			</div>

			<div class="form-group">
				<label class="loginCabecalho" for="email">Telefone</label><br>
				<input type="text" name="telefone" value="${contato.telefone}"
					class="form-control" />
			</div>

			<div class="form-group">
				<label class="loginCabecalho" for="email">E-mail</label><br> <input
					type="text" name="email" value="${contato.email}"
					class="form-control" />
			</div>

			<div class="form-group">
				<label class="loginCabecalho" for="email">Senha</label><br> <input
					type="password" name="senha" value="${contato.senha}"
					class="form-control" />
			</div>

			<div class="form-group">
				<br>
				<button class="CadastroBotaoEnviar" type="submit" value="Alterar">
					Alterar</button>
			</div>
		</form>
	</div>
</body>
</html>
