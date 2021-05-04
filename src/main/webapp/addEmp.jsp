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
	<h2 class="text-center">Formulaire d'ajout employé</h2>
	<form:form action="save" modelAttribute="employe">
	
	  <div class="row form-group ml-4">
		<form:label  class="col-sm-3" path="name">Nom</form:label>
		<form:input class="form-control col-sm-9" path="name" /><br>
    	</div>
		
	   <div class="row form-group ml-4">
		<form:label  class="col-sm-3" path="lastName">Prénom</form:label>
		<form:input class="form-control col-sm-9" path="lastName" /><br>
		</div>
		
	   <div class="row form-group ml-4">
		<form:label class="col-sm-3" path="adress">Adresse</form:label>
		<form:input class="form-control col-sm-9" path="adress" /><br>
		</div>
		
       <div class="row form-group ml-4">
		<form:label class="col-sm-3" path="average">Salaire</form:label>
		<form:input class="form-control col-sm-9" path="average" /><br>
		</div>
		
     <div class="row form-group ml-4">
		<form:label class="col-sm-3" path="telNumber">Numéro téléphone</form:label>
		<form:input class="form-control col-sm-9" path="telNumber" /><br>
		</div>
		<br>
		<br>	
		
		<input  class="btn btn-primary" type="submit" value="Valider" />
		</div>
	</form:form>
</body>
</html>