<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>form ajout employ�</h2>
	<form:form action="save" modelAttribute="employe">
	
		<form:label path="name">Nom</form:label>
		<form:input path="name" /><br>
		
		<form:label path="lastName">Pr�nom</form:label>
		<form:input path="lastName" /><br>
		
		<form:label path="adress">Adresse</form:label>
		<form:input path="adress" /><br>
		
		<form:label path="average">Salaire</form:label>
		<form:input path="average" /><br>
		
		<form:label path="telNumber">Num�ro t�l�phone</form:label>
		<form:input path="telNumber" /><br>
		
		<input type="submit" value="Valider" />
	</form:form>
</body>
</html>