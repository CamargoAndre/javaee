<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans" %>
<%@ page import="java.util.ArrayList" %>
<%
	@SuppressWarnings("unchecked") 
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Agenda de contatos</title>
		<link rel="icon" href="imagens/favicon.png">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<h1>Agenda de Contatos</h1>
		<a href="novo.html" class="Botao1">Novo contato</a>
		<a href="report" class="Botao2">Relatório</a>
		<table id="tabela">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Fone</th>
					<th>Email</th>
					<th>Opções</th>
				</tr>
			</thead>
			<tbody>
				<% for (JavaBeans c : lista) { %>
				<tr>
					<td><%= c.getIdcon() %></td>
					<td><%= c.getNome() %></td>
					<td><%= c.getFone() %></td>
					<td><%= c.getEmail() %></td>
					<td>
						<a href="select?idcon=<%= c.getIdcon() %>" class="Botao1">Editar</a>
						<a href="javascript:confirmar(<%= c.getIdcon() %>)" class="Botao2">Excluir</a>
					
					</td>
				</tr>
				<% } %>
			</tbody>
		</table>
		<script src="scripts/confirmador.js"></script>
	</body>
</html>