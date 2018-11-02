<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="connection.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="update" action="pupdate" onsubmit="" method="post">
		<table border="1">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Date of Birth</th>
				<th>Gender</th>
				<th>Telephone Number</th>
				<th>Email</th>
				<th>User Name</th>
				<th>Password</th>
				
			</tr>
			<%
			HttpSession ses=request.getSession();
			String un=(String)ses.getAttribute("uname");
				try {
					Connection con = DBConnection.createConnection();
					String query = "select * from plogin where username='" + un + "'";
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(query);
					while (rs.next()) {
			%>
			<tr>
				<td><input type="text" name="fname"
					value="<%=rs.getString(1)%>"></td>
				<td><input type="text" name="lname"
					value="<%=rs.getString(2)%>"></td>
				<td><input type="text" name="birth"
					value="<%=rs.getString(3)%>"></td>
				<td><input type="text" name="gender"
					value="<%=rs.getString(4)%>"></td>
				<td><input type="text" name="telno" value="<%=rs.getInt(5)%>"></td>
				<td><input type="text" name="email"
					value="<%=rs.getString(6)%>"></td>
				<td><input type="text" name="username"
					value="<%=rs.getString(7)%>"></td>
				<td><input type="text" name="password"
					value="<%=rs.getString(8)%>"></td>


				<td><input type="hidden" name="uid"
					value="<%=rs.getString(1)%>"></td>
			</tr>
			<tr>
				<td><input type="submit" name="Submit" value="Update"
					style="background-color: #49743D; font-weight: bold; color: #ffffff;"></td>
			</tr>
			<%
}
}
catch(Exception e){}
%>
		</table>



	</form>


</body>
</html>