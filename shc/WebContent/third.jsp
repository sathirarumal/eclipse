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
<div class="21">
<form name="21" action="result.jsp" method="post">
<table align="center">
<tr><p align="center"style="color:red;">Please select another symptom you have ?</p></tr>
<%
Connection con = DBConnection.createConnection();
String dis = request.getParameter("2Sym");
String dis2 = request.getParameter("s2");
try
{
String query = "select * from disease where (ms='"+dis2+"' and ps='"+dis+"')";
PreparedStatement ps = con.prepareStatement(query);
ResultSet rs = ps.executeQuery(query);
%>
<input type="hidden" name="a1" value="dis2">
<input type="hidden" name="a2" value="dis">
<td>
<input list="3Symptoms" name="a3">
<datalist id="3Symptoms">
<%
while(rs.next()){
%>
	<option value="<%=rs.getString(4)%>">
	<%out.print(rs.getString(4));%>
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