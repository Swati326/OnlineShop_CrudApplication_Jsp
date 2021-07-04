<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
  border: 1px solid black;
   padding-bottom:20px;
}
tr{
 background-color:white;
  padding-bottom:20px;
}
table {
  border-collapse: collapse;
  width: 100%;
  background-color:red;
  padding-bottom:20px;
}

th {
  height: 30px;
  color:white;
   background-color:black;
    padding-bottom:20px;
}
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="admin.jsp" %>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
	if(conn!=null)
	{
		
	PreparedStatement stmt=conn.prepareStatement("select *from message");
	ResultSet rs=stmt.executeQuery();
	%>
	<table>
	<tr><th>Customer Name</th><th>Customer Message</th></tr>
	<% 
	while(rs.next())
	{
		int id=rs.getInt(1);
		String username=rs.getString("username");
		String message=rs.getString("message");
		 
		%>
		<tr>
		<center><td><%=username%></td></center>
		<center><td><%=message%></td></center>
		
		<% 
	}
	}
	else
	{
		out.println("Database Not Connected");
	}
}
catch(Exception ex)
{
	out.println("error is:"+ex);
}


%>
</table>
</body>
</html>
</body>
</html>