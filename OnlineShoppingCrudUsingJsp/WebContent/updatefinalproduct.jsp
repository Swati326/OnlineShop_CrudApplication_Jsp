<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%!
    Connection conn;
    PreparedStatement stmt;
    ResultSet rs;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try{
	int id=Integer.parseInt(request.getParameter("id"));
	String name=request.getParameter("name");
	int price=Integer.parseInt(request.getParameter("price"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
	if(conn!=null)
	{
		stmt=conn.prepareStatement("update admin set name=?,price=? where id=?");
		stmt.setString(1,name);
		stmt.setInt(2,price);
		stmt.setInt(3,id);
		int value=stmt.executeUpdate();
		if(value>0)
		{
			out.println("<h1>updated..</h1>");
			response.sendRedirect("viewproducts.jsp");
		}
		else{
			out.println("<h1>Some problem is there </h1>");
		}
	}
	else{
		out.println("database not connected");
	}
}
catch(Exception ex)
{
	out.println("Error is:"+ex);
}
%>
</body>
</html>