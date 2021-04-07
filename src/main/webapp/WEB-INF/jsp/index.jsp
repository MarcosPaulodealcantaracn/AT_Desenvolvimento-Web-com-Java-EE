<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
					<h2>${user.nome}</h2>
					<h3>${user.email}</h3>
				</div>
				<div class="panel-body">
					<h5>
						<a href="${user.git}">GIT</a>
					</h5>
				</div>
			</div>

			<div class="btn-goup">
				<form action="/">
					<button type="submit" class="btn btn-link">
						<h5>Novo Login</h5>
					</button>
				</form>
			</div>

			<div class="panel-body">
				<div class="btn-group">
					<form action="/solicitante" method="get">
						<button type="submit" class="btn btn-primary">Novo Solicitante</button>
					</form>
				</div>
			</div>
			<div class="panel-body">
				<div class="btn-group">
					<form action="/locacao" method="get">
						<button type="submit" class="btn btn-primary">Nova Locação</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>