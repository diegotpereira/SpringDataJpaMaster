<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar</title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</head>
<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h3 class="text-center">Cadastrar Clientes</h3>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Adicionar Cliente</div>
				</div>
				<div class="panel-body">
					<form:form action="salvarCliente" cssClass="form-horizontal"
						method="post" modelAttribute="cliente">
						<form:hidden path="id" />

						<div class="form-group">
							<label for="nome" class="col-md-3 control-label">Nome</label>
							<div class="col-md-9">
								<form:input path="nome" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="sobrenome" class="col-md-3 control-label">SobreNome</label>
							<div class="col-md-9">
								<form:input path="sobrenome" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">E-mail</label>
							<div class="col-md-9">
								<form:input path="email" cssClass="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-offset-3 col-md-9">
								<form:button cssClass="btn btn-primary">Salvar</form:button>
							</div>
						</div>

					</form:form>
				</div>
			</div>

		</div>
	</div>

</body>
</html>