<%@page import="model.Contato"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Listar Contatos</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
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

	<div class="containerLista">
		<h1>Contatos</h1>

		<div class="tableLista">
			<table>
				<c:if test="${not empty contatos}">
					<tr>
						<td class="tabletitulo"><strong>NOME</strong></td>
						<td class="tabletitulo"><strong>E-MAIL</strong></td>
						<td class="tabletitulo"><strong>SENHA</strong></td>
						<td class="tabletitulo"><strong>TELEFONE</strong></td>
						<td class="tabletitulo"><strong>EXCLUIR</strong></td>
						<td class="tabletitulo"><strong>ALTERAR</strong></td>
					</tr>
					
					<c:forEach items="${contatos}" var="contato">
						<tr>
							<td>${contato.nome} ${contato.sobrenome}</td>
							<td>${contato.email}</td>
							<td>${contato.senha}</td>
							<td>${contato.telefone}</td>
							<td><a
								href="${serverURL}/menu/excluir-contato?id=${contato.id}"> <img class="imgtable"
									src="../resources/images/remove.png">
							</a></td>
							<td><a href="busca-contato?id=${contato.id}"> <img class="imgtable"
									src="../resources/images/edit.png"></a></td>
						</tr>
					</c:forEach>
				</c:if>

				<c:if test="${empty contatos}">

					<h2 class="ListaH2">
						A lista está vazia <br>Não existem contatos cadastrados
					</h2>
					<div class="ListaImagemVazia">
						<img src="../resources/images/empty3.png">
					</div>
				</c:if>

			</table>
			<button class="ListaBotaoEnviar">
				<a href="${serverURL}/index.jsp">Voltar</a>
			</button>
		</div>
	</div>
</body>
</html>