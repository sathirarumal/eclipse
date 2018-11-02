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
<form name="sec" action="two">
<table>
<tr><th>Disease</th></tr>
<%
Connection con = DBConnection.createConnection();
String dis = request.getParameter("Sym");
try
{
String query = "select ps from disease where ms='"+dis+"'"; //Insert user details into the table 'USERS'
PreparedStatement ps = con.prepareStatement(query);
ResultSet rs = ps.executeQuery(query);
%>
<%
while(rs.next()){
%>
<td><input type="text" name="2ndsym" value="<%=rs.getString(1)%>"></td>
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