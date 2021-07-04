<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="welcome.jsp" %>
<% 
	String name=request.getParameter("name");
	out.println(name);
	int price=Integer.parseInt(request.getParameter("price"));
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
		if(conn!=null)
		{
		PreparedStatement stmt=conn.prepareStatement("insert into mycart values('0',?,?)");
		stmt.setString(1,name);
		stmt.setInt(2,price);
		int value=stmt.executeUpdate();
		if(value>0)
		{
		//response.sendRedirect("home.jsp");
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

%>

</body>
</html>