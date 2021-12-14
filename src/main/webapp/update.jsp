<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	
		<!-- Icons font CSS-->
	    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
	    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
	    <!-- Font special for pages-->
	    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	
	    <!-- Vendor CSS-->
	    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
	    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
	
	    <!-- Main CSS-->
	    <link href="css/pageDistance.css" rel="stylesheet" media="all">
	    
	</head>
	
	<body>
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
                    <h2 class="title">Mettre à jour une ville</h2>
                </div>
				<div class="card-body">
					<form method="post">
						<input type="hidden" name="code_commune_INSEE" value='<c:out value="${city.code_commune_INSEE}"></c:out>' required/>
						<div class="form-row">
							<div class="name">Nom commune</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="nom_commune" value='<c:out value="${city.nom_commune}"></c:out>' required/>
								</div>
							</div>
						</div>
						<br/>
						<div class="form-row">
							<div class="name">Code Postal</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="code_postal" value='<c:out value="${city.code_postal}"></c:out>' required/>
								</div>
							</div>
						</div>
						<br/>
						<div class="form-row">
							<div class="name">Ligne</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="ligne" value='<c:out value="${city.ligne}"></c:out>'/>
								</div>
							</div>
						</div>
						<br/>
						<div class="form-row">
							<div class="name">Libellé</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="libelle_acheminement" value='<c:out value="${city.libelle_acheminement}"></c:out>' required/>
								</div>
							</div>
						</div>
						<br/>
						<div class="form-row">
							<div class="name">Latitude</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="latitude" value='<c:out value="${city.latitude}"></c:out>' required/>
								</div>
							</div>
						</div>
						<br/>
						<div class="form-row">
							<div class="name">Longitude</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="longitude" value='<c:out value="${city.longitude}"></c:out>' required/>
								</div>
							</div>
						</div>
						<br/>
						<input class="btn btn--radius-2 btn--red" type="submit"/>
					</form>
				</div>
			</div>
		</div>
		
		<!-- Jquery JS-->
	    <script src="vendor/jquery/jquery.min.js"></script>
	    <!-- Vendor JS-->
	    <script src="vendor/select2/select2.min.js"></script>
	    <script src="vendor/datepicker/moment.min.js"></script>
	    <script src="vendor/datepicker/daterangepicker.js"></script>
	
	    <!-- Main JS-->
	    <script src="js/global.js"></script>
	    
	</body>
</html>