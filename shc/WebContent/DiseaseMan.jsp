<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
 <%@page import= "connection.DBConnection"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post" name="form" action="delete">
<table border="1">
<tr><th>Disease</th><th>Main Symptom</th><th>Primary Symptoms</th><th>Secondary Symptoms</th></tr>
<%

Connection con = DBConnection.createConnection();

try
{
String query = "select * from disease"; //Insert user details into the table 'USERS'
PreparedStatement ps = con.prepareStatement(query);
ResultSet rs = ps.executeQuery(query);
%>
<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<input type="hidden" name="dd" value="<%=rs.getString(1)%>">
<td><input type="submit" name="delete" value="Delete" style="background-color:blue;font-weight:bold;color:white;" onclick="<%=rs.getString(1)%>;" ></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>