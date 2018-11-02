<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Disease Prediction</title>
</head>
<body style="background-colour:powderblue;">
<p style="colour:red"><center>Place Enter A Symptom(any one symptom.leave no blank spaces before and after it):-</center></p>
<center>
<form method="post" action="maindiv.jsp">
	<input list="Symptoms" name="Sym">
	<datalist id="Symptoms">
		<option value="headache">
		<option value="stomach Pain">
		<option value="bladder Pain">
		<option value="fever">
	</option>
	</datalist>
	<input type="Submit" value="submit">
</form>
</center>
</body>
</html>