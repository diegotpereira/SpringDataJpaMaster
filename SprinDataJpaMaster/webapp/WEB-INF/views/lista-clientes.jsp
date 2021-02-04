<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1">
<title>Lista</title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<%@ page isELIgnored="false"%>
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
<script src="<c:url  value="/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>

	<div class="container">
		<div class="col-md-offset-1 col-md-1-">
			<h3 class="text-center">Lista de Clientes</h3>
			<hr />
			<input type="button" value="Adicionar"
				onclick="window.location.href='mostrarForm'; return false;"
				class="btn btn-primary" /> <br />

			<div class="panel-info">
				<div class="panel-heading">
					<div class="panel-title"></div>
				</div>

				<div class="panel-body">

					<table class="table table-striped table-bordered">
						<tr>
							<th>Id</th>
							<th>Nome</th>
							<th>SobreNome</th>
							<th>E-mail</th>
							<th>Ação</th>
						</tr>
						<c:forEach var="tempCliente" items="${clientes}">

							<c:url var="updateLink" value="/cliente/updateForm">
								<c:param name="clienteId" value="${tempCliente.id}" />
							</c:url>

							<c:url var="deleteLink" value="/cliente/delete">
								<c:param name="clienteId" value="${tempCliente.id}" />
							</c:url>

							<tr>
								<td>${tempCliente.id}</td>
								<td>${tempCliente.nome}</td>
								<td>${tempCliente.sobrenome}</td>
								<td>${tempCliente.email}</td>

								<td><a href="${updateLink}">Alterar</a> 
								<a href="${deleteLink}" onclick="if (!(confirm('Tem certeza de que deseja excluir este cliente?'))) return false">Excluir</a>
								</td>


							</tr>


						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>