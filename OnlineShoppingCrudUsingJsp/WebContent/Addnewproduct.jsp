<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<style>

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="admin.jsp" %>
</head>
<center>
<body>
<form name="frm" action="" method="POST">
<input type="text" name="productname" value="" Placeholder="Enter product Name" Style="width:300px; height:40px;" />
<br><br>
<input type="text" name="price" value="" Placeholder="Enter product price" Style="width:300px; height:40px;" />
<br><br>
<input type="submit" name="s" value="Add New Product"  Style="width:300px; height:40px;" />
<br><br>
</center>
</form>
<%
String btn=request.getParameter("s");
if(btn!=null)
{
	String productname=request.getParameter("productname");
	int price=Integer.parseInt(request.getParameter("price"));
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
		if(conn!=null)
		{
		PreparedStatement stmt=conn.prepareStatement("insert into admin values('0',?,?)");
		stmt.setString(1,productname);
		stmt.setInt(2,price);
		int value=stmt.executeUpdate();
		if(value>0)
		{
		out.println("Product Add Successfully.....");
		}
		else
		{
		out.println("Product Not Add Successfully.....");
		}
		}
		else
		{
			out.println("Database is not connected.....");
		}
	}
	
	catch(Exception ex)
	{
		out.println("error is: "+ex );
	}
}
%>
</body>
</html>