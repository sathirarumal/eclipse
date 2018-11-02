<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="reg" action="pregistration" onsubmit="" method="post">
		<table width="274" border="0" align="right" cellpadding="2"
cellspacing="0">

			<tr>
				<td>
					<div align="right">First Name:</div>
				</td>
				<td><input type="text" name="fn" /></td>
			</tr>

			<tr>
				<td>
					<div align="right">Last name:</div>
				</td>
				<td><input type="text" name="ln" /></td>
			</tr>

			<tr>
				<td>
					<div align="right">Date of Birth:</div>
				</td>
				<td><input type="text" name="bd" /></td>
			</tr>

			<tr>
				<td>
					<div align="right">Gender:</div>
				</td>
				<td><input type="radio" name="ge" /> Male
				<input type="radio" name="ge" /> Female
				<input type="radio" name="ge" /> Other
				</td>
			</tr>

			<tr>
				<td>
					<div align="right">Telephone Number:</div>
				</td>
				<td><input type="text" name="tn" /></td>
			</tr>

			<tr>
				<td>
					<div align="right">E-mail:</div>
				</td>
				<td><input type="text" name="em" /></td>
			</tr>

			<tr>
				<td width="95"><div align="right">User Name:</div></td>
				<td width="171"><input type="text" name="un" /></td>
			</tr>

			<tr>
				<td>
					<div align="right">Password:</div>
				</td>
				<td><input type="password" name="pw" /></td>
			</tr>

			<tr>
				<td>
					<div align="right"></div>
				</td>
				<td><input name="submit" type="submit" value="submit" /></td>
			</tr>

		</table>
	</form>
</body>
</html>