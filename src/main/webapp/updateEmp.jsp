<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<div class="container">
	<h2 class="text-center">Modification des employ�s</h2>
	
	<form:form action="update" modelAttribute="employe">
		<form:hidden path="idEmployee" />
		<br>

	<div class="row form-group ml-4">
		<form:label class="col-sm-3" path="name">Nom</form:label>
		<form:input class="form-control col-sm-9" path="name" />
		</div>
		<br>

	<div class="row form-group ml-4">
		<form:label class="col-sm-3" path="lastName">Pr�nom</form:label>
		<form:input class="form-control col-sm-9" path="lastName" />
		</div>
		<br>

	<div class="row form-group ml-4">
		<form:label class="col-sm-3" path="adress">Adresse</form:label>
		<form:input class="form-control col-sm-9" path="adress" />
		</div>
		<br>

	<div class="row form-group ml-4">
		<form:label class="col-sm-3" path="average">Salaire</form:label>
		<form:input class="form-control col-sm-9" path="average" />
		</div>
		<br>

	<div class="row form-group ml-4">
		<form:label class="col-sm-3" path="telNumber">Num�ro t�l�phone</form:label>
		<form:input class="form-control col-sm-9" path="telNumber" />
		</div>
		<br>

		<input class="btn btn-primary" type="submit" value="Valider" />
		</div>
	</form:form>
</body>
</html>

