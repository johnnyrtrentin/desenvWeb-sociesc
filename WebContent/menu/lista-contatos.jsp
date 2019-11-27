<%@page import="model.Contato"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Contatos</title>
	<meta name="viewport" content="width=device-width, initial-scale=1"> <!-- verificar se funciona -->
    <link rel="stylesheet" type="text/css" href="../main.css">
</head>
<body>
   <header class="top-header clearfix">
        <div class="maxwidth">
            <nav class="top-nav">
                <ul>
                    <li> <a href="novo-contato.html">Cadastre-se</a></li>
                    <li> <a href="novo-contato-sucesso.jsp">Novo Contato - Sucesso</a></li>
                    <li> <a href="lista-contatos.jsp">Lista Contatos</a></li>
                    <li> <a href="alterar-contato.jsp">Altera Contato</a></li>
                </ul>
            </nav>
        </div>
    </header>
<div class="containerLista"> 
	<h1>Contatos </h1>
	
	<c:set var="serverURL" value="${pageContext.request.contextPath}"></c:set>
	

	

	
		<div class="tableLista">
			<table>
				<tr>
					<td class="tabletitulo"><strong>NOME</strong></td>
					<td class="tabletitulo"><strong>E-MAIL</strong></td>
					<td class="tabletitulo"><strong>SENHA</strong></td>
					<td class="tabletitulo"><strong>TELEFONE</strong></td>
					<td class="tabletitulo"><strong>EXCLUIR</strong></td>
					<td class="tabletitulo"><strong>ALTERAR</strong></td>
				</tr>
		<c:if test="${not empty contatos}"> 
			<c:forEach items="${contatos}" var="contato">
			<tr>
							<td>${contato.nome} ${contato.sobrenome}</td>
							<td>${contato.email}</td>
							<td>${contato.senha}</td>
							<td>${contato.telefone}</td>
							<td><a href="${serverURL}/menu/excluir-contato?id=${contato.id}"> <img src="../img.png">
								</a></td>
							<td><a href="busca-contato?id=${contato.id}"> <img src="../edit.png"></a></td>
						</tr>
			</c:forEach>
		</c:if>

		<c:if test="${empty contatos}"> 
			<h2 style="color: red;">Nenhum contato cadastrado</h2>
		</c:if>
		</table>
		<a href="${serverURL}/index.jsp">Voltar</a>
		</div>		
		</div>	
</body>
</html>