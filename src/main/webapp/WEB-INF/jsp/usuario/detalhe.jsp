<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aplicativo de Locação de embarcacão</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading"></div>
				<h2>Cadastramento de Usuários</h2>
			</div>
		</div>
	</div>

	<div class="panel-body">
		<div class="btn-goup">

			<form action="/">
				<button type="submit" class="btn btn-link">Home</button>
			</form>
		</div>
	</div>

	<form action="/usuario/incluir" method="post">

		<div class="form-group">
			<label>Informe o nome desejado:</label> <input type="text" name="nome"
				class="form-control">
		</div>

		<div class="form-group">
			<label>Informe o e-mail desejado:</label> <input type="email" name="email"
				class="form-control">
		</div>

		<div class="form-group">
			<label>Informe uma senha:</label> <input type="password" name="senha"
				class="form-control">
		</div>

		<div class="form-group">
			<label>Informe um git:</label> <input type="text" name="git"
				class="form-control">
		</div>

		<button type="submit" class="btn btn-danger">Cadastrar</button>
	</form>
<br>
	<c:if test="${not empty lista}">
		<h4>Listagem de Usuários:</h4>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>nome</th>
					<th>e-mail</th>
					<th>senha</th>
					<th>git</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${lista}">
					<tr>					
						<td>${u.nome}</td>
						<td>${u.email}</td>
						<td>${u.senha}</td>						
						<td>${u.git}</td>
						<td><a href="/usuario/${u.id}/excluir">excluir</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</c:if>

	<c:if test="${empty lista}">
		<h4>Nenhuma usuário cadastrado!!!</h4>
	</c:if>

</body>
</html>