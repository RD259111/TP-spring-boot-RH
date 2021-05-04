<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css"
	rel="stylesheet">
<script defer="defer" src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script defer="defer" src="webjars/popper.js/1.16.0/umd/popper.min.js"></script>
<script defer="defer" src="webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container" style="margin-top: 20px">
		<div class="row">
			<div class="jumbotron text-center" style="margin-bottom: 0">
					<h1>Système d'information de gestion des ressources humaines</h1>
				</div>
			<div class="col-md-12">
			<nav class="navbar navbar-expand-md bg-dark navbar-dark">

					<!-- Brand -->
					<a class="navbar-brand" href="#">AFPA</a>
					<!-- Links -->
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="#">Accueil</a></li>
						<!-- Dropdown -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbardrop1"
							data-toggle="dropdown"> Employé </a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="add">Ajouter</a> <a
									class="dropdown-item" href="list">Consulter</a>
							</div></li>
					</ul>
				</nav>
			</div>
			
		</div>
		<div class="jumbotron text-center"
					style="margin-bottom: 0; margin-top: 300px">
					<p>Copyright 2021</p>
				</div>
	</div>

</body>
</html>