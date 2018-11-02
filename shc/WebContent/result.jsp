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
<div class="1">
<jsp:include page="third.jsp"/>
</div>

<div class="2">
<form name="2" action="" method="post">
<table align="center">
<tr><p align="center"style="color:red;">This is the desease you have....</p></tr>
<%
Connection con = DBConnection.createConnection();
String ms = request.getParameter("a1");
String ps = request.getParameter("a2");
String ss = request.getParameter("a3");
try
{
String query = "select * from disease where (ms='"+ms+"' and ps='"+ps+"' and ss='"+ss+"') "; //Insert user details into the table 'USERS'
PreparedStatement pst = con.prepareStatement(query);
ResultSet rs = pst.executeQuery(query);
%>
<%
while(rs.next()){
%>
	<td><%=rs.getString(1)%></td>
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
</div>

</body>
</html>