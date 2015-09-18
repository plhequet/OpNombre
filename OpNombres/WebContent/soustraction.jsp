<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<style>marge{margin-top:10px;margin-bottom:10px;}</style>
<title>Soustraction Opération</title>
</head>
<body>
<h1>Soustraction</h1>
<div>
	<form class="form-horizontal" action="OperationServlet">
	<div class="form-group">
		<div class="col-lg-6"> Premier nombre : <input class="form-control" name="input1" type="text"></div>
		<div class="col-lg-6">Deuxieme nombre : <input class="col-lg-6 form-control" name="input2" type="text"></div>
		<input name="operateur" type="hidden" value="-"><p></p>
		</div><div class="form-group">
		<div class='col-lg-6'><input class="btn btn-default" type="submit" value="Calculer">
		<a href="index.jsp"><button type="button" class="btn btn-default">Retour au menu</button></a></div>

	</form>
	<%
	if(request.getAttribute("resultat")!=null){
		String res = request.getAttribute("resultat").toString();
		if(res!=null){
			out.print("<div class='col-lg-6'> Votre résultat : "+res+"</div>");
		}
	}
	%></div></div>
</body>
</html>