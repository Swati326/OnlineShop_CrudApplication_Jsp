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
<center>
<body>
<%@include file="admin.jsp" %>
<form name="frm" action="" method="POST">
<input type="text" name="name" value="" Placeholder="Enter name" Style="width:300px; height:40px;" />
<br><br>
<input type="submit" name="s" value="search here" Style="width:300px; height:40px;" />
<br><br>
</form>
</body>
</center>
</html>
<%
String btn=request.getParameter("s");
if(btn!=null)
{
	String name=request.getParameter("name");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
		if(conn!=null)
		{
		PreparedStatement stmt=conn.prepareStatement("select *from admin where name=?");
		stmt.setString(1,name);
		ResultSet rs=stmt.executeQuery();	
		if(rs.next())
		{
			
			int id=rs.getInt(1);
			%>
			<table>
			<th>Product Name</th><th>Price</th><th>Delete</th><th>Update</th>
			<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getInt(3)%></td>
			<center><td><a href="updateproduct.jsp?id=<%=id%>&name=<%=rs.getString(2)%>&price=<%=rs.getInt(3)%>">Update</a></td></center>
			<center><td><a href="delete.jsp?id=<%=id%>">Delete</a></td></center>
			</tr>
			

		<%
		}
		else
		{
		%>
		<h1><center>Record Not Found!</center></h1>
		<%
	
	}
		}
	}
	catch(Exception ex)
	{
		
		out.println("error is: "+ex );
	}

}
%>
</table>
</body>
</html>