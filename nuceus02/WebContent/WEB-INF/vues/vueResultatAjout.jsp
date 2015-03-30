<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset = "utf8">
</head>
<%
	Variete variete = (Variete)request.getAttribute("variete");
	String libelle = (String)request.getAttribute("libelle") ;
	String aoc = (String)request.getAttribute("aoc") ;
%>
<body>
	Libellé : <%= libelle %><br/>
	AOC : <%= aoc %><br/>
	<a href="?action=visualiser"></a>
	
</body>
</html>