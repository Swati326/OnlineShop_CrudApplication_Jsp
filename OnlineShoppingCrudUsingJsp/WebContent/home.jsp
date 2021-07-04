<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.* " %>
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
<%@include file="welcome.jsp" %>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
	if(conn!=null)
	{
		
	PreparedStatement stmt=conn.prepareStatement("select *from admin");
	ResultSet rs=stmt.executeQuery();
	%>
	<table>
	<tr><th>Product Name</th><th>Product Price</th><th>Add to cart</th><tr>
	<% 
	while(rs.next())
	{
		int id=rs.getInt(1);
		String name=rs.getString("name");
		int price=rs.getInt("price");
		 
		%>
		<tr>
		<center><td><%=name%></td></center>
		<center><td><%=price%></td></center>
		<center><td><a href="mycart.jsp?id=<%=id%>&name=<%=name%>&price=<%=price%>">Add to cart</a></center></td></center>
		
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