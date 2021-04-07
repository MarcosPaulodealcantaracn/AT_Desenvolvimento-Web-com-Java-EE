<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aplicativo de Loca��o de embarcac�o</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Cadastramento de loca��es:</h2>
				</div>

				<div class="panel-body">
					<div class="btn-group">
						<form action="/home">
							<button type="submit" class="btn btn-primary">Home</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<form action="/locacao/incluir" method="post">

			<div class="form-group">
				<label>Informe o solicitante:</label> <select class="form-control"
					name="solicitante.id">
					<c:forEach var="s" items="${solicitantes}">
						<option value="${s.id}">${s.nome}</option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<label>Informe a embarca��o desejada:</label> <input type="text"
					name="embarcacao" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Informe a observa��o desejada:</label> <input type="text"
					name="observacao" class="form-control">
			</div>
			
			<div class="form-group">
				<label>Informe a quantidade de dias:</label> <input type="number"
					name="dia" class="form-control">
			</div>
			
	
			<button type="submit" class="btn btn-default">Cadastrar</button>
		</form>
		<br>
		<c:if test="${not empty lista}">
			<p>Listagem de loca��es:</p>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Solicitante</th>
						<th>Embarcacao</th>
						<th>observacao</th>
						<th>dia</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="l" items="${lista}">
						<tr>
							<td>${l.solicitante.nome}</td>
							<td>${l.embarcacao}</td>
							<td>${l.observacao}</td>
							<td>${l.dia}</td>
							<td><a href="/locacao/${l.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>

		</c:if>

		<c:if test="${empty lista}">
			<p>Nenhuma locac�o cadastrada!</p>
		</c:if>
	</div>
</body>
</html>