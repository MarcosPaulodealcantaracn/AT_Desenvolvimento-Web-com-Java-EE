<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aplicativo de Locação de embarcacão</title>
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">  
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Cadastramento de Solicitantes</h2>
				</div>

				<div class="panel-body">
					<div class="btn-group">
						<form action="/home">
							<button type="submit" class="btn btn-link">Home</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-warning">
				<strong>Atenção tente novamente...</strong>
				${mensagem}
			</div>
		</c:if>

		<form action="/solicitante/incluir" method="post">

			<div class="form-group">
				<label>Informe o nome desejado:</label> <input type="text" name="nome"
					class="form-control">
			</div>
			
			<div class="form-group">
				<label>Informe o e-mail desejado:</label> <input type="email"
					name="email" class="form-control">
			</div>

			<div class="form-group">
				<label>Informe o endereço desejado:</label> <input type="text"
					name="endereco" class="form-control">
			</div>

			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
		<br>
		<c:if test="${not empty lista}">
			<h4>Listagem de solicitantes:</h4>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Usuário:</th>
						<th>Nome:</th>
						<th>E-mail:</th>
						<th>Endereço:</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="s" items="${lista}">
						<tr>
							<td>${s.usuario.id}</td>
							<td>${s.nome}</td>
							<td>${s.email}</td>
							<td>${s.endereco}</td>
							<td><a href="/solicitante/${s.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

		</c:if>

		<c:if test="${empty lista}">
			<h4>Nenhum solicitante cadastrado!</h4>
		</c:if>
	</div>
</body>
</html>