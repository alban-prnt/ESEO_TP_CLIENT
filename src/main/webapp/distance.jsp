<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Distance entre villes</title>
		
		<link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
	    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
	    <!-- Font special for pages-->
	    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	    <!-- Vendor CSS-->
	    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
	    
		<link rel="stylesheet" type="text/css" href="css/pageDistance.css">
		
	</head>
	<body>

        	<div class="wrapper wrapper--w790">
				<div class="card card-5">
					<div class="card-heading">
						<h2 class="title">Calculateur de distance</h2>
					</div>
					<div class="card-body">
						<form method="post">
							<div class="form-row">
								<div class="name">Ville 1</div>
								<div class="value">
									<div class="input-group">
										<div class="rs-select2 js-select-simple select--no-search">
											<select name="villeDepart">
												<c:forEach items="${listCities}" var="city">
													<option value="<c:out value='${city.nom_commune};${city.longitude};${city.latitude}'/>"> <c:out value="${city.nom_commune}"/> </option>
												</c:forEach>
											</select>
											<div class="select-dropdown"></div>
										</div>
									</div>
								</div>
							</div>
							<br/>
							<div class="form-row">
								<div class="name">Ville 2</div>
								<div class="value">
									<div class="input-group">
										<div class="rs-select2 js-select-simple select--no-search">
											<select name="villeArrivee">
												<c:forEach items="${listCities}" var="city">
													<option value="<c:out value='${city.nom_commune};${city.longitude};${city.latitude}'/>"> <c:out value="${city.nom_commune}"/> </option>
												</c:forEach>
											</select>
											<div class="select-dropdown"></div>
										</div>
									</div>
								</div>
							</div>
							<input class="btn btn--radius-2 btn--red" type="submit"/>
						</form>
						<c:if test="${not empty distance}"><p> <c:out value="La distance entre ${nomDepart} et ${nomArrivee} est ${distance} km"/> </p></c:if>
					</div>
					
					<a href="http://localhost:8080/ESEO_TP_CLIENT_I3/VillesServlet"> Voir les villes </a>
				</div>
			</div>

		    <!-- Jquery JS-->
			<script src="vendor/jquery/jquery.min.js"></script>
			<!-- Vendor JS-->
			<script src="vendor/select2/select2.min.js"></script>
		    <!-- Main JS-->
		    <script src="js/global.js"></script>
	</body>
</html>
