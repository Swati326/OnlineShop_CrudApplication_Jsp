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
<%@include file="welcome.jsp" %>
<% 

try{
	String username1=(String)session.getAttribute("username");
	String username=request.getParameter("username1");
	String email=request.getParameter("email");
	String contact=request.getParameter("contact");
	String password=request.getParameter("password");
	String answer=request.getParameter("answer");
	int id=Integer.parseInt(request.getParameter("id"));
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
	if(conn!=null)
	{
		stmt=conn.prepareStatement("update onlineshop set username=?,email=?,contact=?,password=?,answer=? where id=?");
		stmt.setString(1,username1);
		stmt.setString(2,email);
		stmt.setString(3,contact);
		stmt.setString(4,password);
		stmt.setString(5,answer);
		stmt.setInt(6,id);
		int value=stmt.executeUpdate();
		if(value>0)
		{
			out.println("<h1>updated..</h1>");
		
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
</body>
</html>