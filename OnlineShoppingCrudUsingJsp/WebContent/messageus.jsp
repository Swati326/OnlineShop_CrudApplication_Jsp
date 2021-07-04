<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<body>
<%@include file="welcome.jsp" %>
<form name="frm" action="" method="POST">
<br><br>
<input type="text" name="message" value="" Placeholder="Write message" style="width:200px; height:200px;"/>
<br><br>
<input type="submit" name="sa" value="Send" style="width:50px; height:20px;"/>
<br><br>
</form>
</body>
</center>
</html>
<% 
String btn=request.getParameter("sa");
if(btn!=null)
{
	
	String username=(String)session.getAttribute("username");
	String message=request.getParameter("message");

	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
		if(conn!=null)
		{
		PreparedStatement stmt=conn.prepareStatement("insert into message values('0',?,?)");
		stmt.setString(1,username);
		stmt.setString(2,message);
		int value=stmt.executeUpdate();
		if(value>0)
		{
		out.println("Message Send Successfully.....");
		}
		else
		{
		out.println("Message Not Send Successfully.....");
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

