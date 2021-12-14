<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Liste villes</title>
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

					<table>
						<thead>
							<tr class="table100-head">
								<th> Code Commune </th>
								<th> Nom Commune </th>
								<th> Code Postal </th>
								<th> Libelle Acheminement </th>
								<th> Ligne </th>
								<th> Latitude </th>
								<th> Longitude </th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listCities}" var="city">
								<tr>
									<td> <a href="<c:out value='/ESEO_TP_CLIENT_I3/UpdateServlet?codeCommune=${city.code_commune_INSEE}'/>"><c:out value="${city.code_commune_INSEE}"/></a> </td>
									<td> <c:out value="${city.nom_commune}"/> </td>
									<td> <c:out value="${city.code_postal}"/> </td>
									<td> <c:out value="${city.libelle_acheminement}"/> </td>
									<td> <c:out value="${city.ligne}"/> </td>
									<td> <c:out value="${city.latitude}"/> </td>
									<td> <c:out value="${city.longitude}"/> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

	<div>
	<p> 
		<c:if test="${page!=1}"> <a href="<c:out value='/ESEO_TP_CLIENT_I3/VillesServlet?page=${page-1}'/>"> Page précedente </a> </c:if> 
		Page <c:out value="${page}"/> 
		<c:if test="${not lastPage}"> <a href="<c:out value='/ESEO_TP_CLIENT_I3/VillesServlet?page=${page+1}'/>"> Page suivante </a> </c:if>
	</p>
	</div>
	<a href="http://localhost:8080/ESEO_TP_CLIENT_I3/DistanceServlet"> Calcul distance </a>
</body>
</html>