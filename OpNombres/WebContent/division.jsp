<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<title>Division Opération</title>
</head>
<body>
<h1>Division</h1>
<div>
	<form action="OperationServlet">
		Premier nombre : <input name="input1" type="text"><br/><br/>
		Deuxieme nombre : <input name="input2" type="text"><br/><br/>
		<input name="operateur" type="hidden" value="/"><br/>
		<input class="btn btn-default" type="submit" value="Calculer">
		<button type="button" class="btn btn-default"><a href="index.jsp">Retour au menu</a></button>
	</form>
	<%
	if(request.getAttribute("resultat")!=null){
		String res = request.getAttribute("resultat").toString();
		if(res!=null){
			out.print("<p> Votre résultat : "+res+"</p>");
		}
	}
	%>
	</div>
</body>
</html>