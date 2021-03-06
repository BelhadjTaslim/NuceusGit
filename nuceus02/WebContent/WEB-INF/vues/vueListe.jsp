<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	MetierVarietes metier = new MetierVarietes() ;
%>
<html lang="fr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="style/bootstrap-3.3.2-dist/css/bootstrap.css" rel="stylesheet" >
<title>Nuceus 0.2</title>
</head>
<body>
<!-- 		<navbar class="navbar navbar-header navbar-fixed-top navbar-inverse"> -->
<!-- 		<div class="navbar-brand">Liste des variétés de Noix</div> -->
<!-- 		<ul class="nav navbar-nav"> -->
<!--     	<li class="active"> <a href="?action=renseignerAjout">Ajouter</a> </li> -->
<!-- 		</navbar> -->
<!-- 		<h1 class="text-center">Liste des variétés de Noix</h1> -->
		<div class="navbar navbar-inverse">
  		<div class="navbar-header">
    	<a class="navbar-brand">Liste des variétés de Noix</a>
  		</div>
  		<ul class="nav navbar-nav">
    	<li class="active"><a href="?action=renseignerAjout">Ajouter</a></li>
    	</ul>
    	</div>
		<hr/>
		<div class="container" style="margin-top : 50px">
		<div class="row">
		<div class="col-lg-12">
		<%
			List<Variete> varietes = (List<Variete>)request.getAttribute("varietes");
		%>
		<div class="col-lg-2"></div>
		<table class="col-lg-8" border="1" style="border-collapse:collapse">
			<thead>
					<tr>
						<th class="col-md-6 text-center bg-primary">Libellé</th>
						<th class="col-md-4 text-center bg-primary">AOC</th>
						<th class="col-md-2 text-center bg-primary">Supprimer</th>
					</tr>
			</thead>
			
		
			<tbody>
					<%
						for(Variete variete : varietes){
					%>
					<tr>
						<td><%= variete.getLibelle() %></td>
						<% String aoc ;
							if(variete.isAoc()==true){
								aoc = "Oui" ;
							}
							else{
								aoc="Non" ;
							}
							
						%>
						<td><%= aoc %></td>
						<td><button class="btn btn-danger" style="width:100%">Supprimer</button></td>
					</tr>
					<%
						}
					%>
			</tbody>
		</table>
		<div class="col-lg-2"></div>
		</div>
		</div>
		</div>
		
</body>
</html>