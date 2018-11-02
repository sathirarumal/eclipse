<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
 <%@page import= "connection.DBConnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="1">
<jsp:include page="Disease Prediction.jsp"/>
</div>

<div class="2">
<form name="2" action="result.jsp" method="post">
<table align="center">
<tr><p align="center"style="color:red;">Please select another symptom you have ?</p></tr>
<%
Connection con = DBConnection.createConnection();
String dis = request.getParameter("Sym");
try
{
String query = "select * from disease where ms='"+dis+"'"; //Insert user details into the table 'USERS'
PreparedStatement ps = con.prepareStatement(query);
ResultSet rs = ps.executeQuery(query);
%>
<input type="hidden" name="s2" value="dis">
<td>
<input list="2Symptoms" name="2Sym">
<datalist id="2Symptoms">
<%
while(rs.next()){
%>
	<option value="<%=rs.getString(3)%>">
<%
}
%>
	</option>
	</datalist>
</td>

<td><input type="Submit" value="submit"></td>
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