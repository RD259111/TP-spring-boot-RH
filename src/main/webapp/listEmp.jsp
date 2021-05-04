<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script defer="defer" src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer" src="../webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer" src="../webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container-fluid">
		<table class="table table-bordered">
			<thead>
				<tr class="bg-primary">
					<th>Code</th>
					<th>Nom</th>
					<th>Prenom</th>
					<th>Adresse</th>
					<th>Tel</th>
					<th>Salaire</th>
					<th>Supprimer</th>
					<th>Modifier</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${employe}" var="e">
					<tr>
						<td>${e.idEmployee }</td>
						<td>${e.name }</td>
						<td>${e.lastName }</td>
						<td>${e.adress }</td>
						<td>${e.average }</td>
						<td>${e.telNumber }</td>
						<td><a class="btn btn-primary" href="delete?id=${e.idEmployee}">Supprimer</a></td>
						<td><a class="btn btn-primary" href="edit?id=${e.idEmployee}">Modifier</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>