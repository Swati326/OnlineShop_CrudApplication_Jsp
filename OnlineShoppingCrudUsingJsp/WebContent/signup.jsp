<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url("onlineshp.jpg");
  background-repeat:no-repeat;
  background-size:100%;
  padding: 0;
  margin: 0;
 

}
h2{
color:white;
}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
<br>
<br>
<body>
<br>
<br>
<form name="frm" action="signup.jsp" method="POST">
<input type="text" name="username" value="" Placeholder="Enter name" Style="width:300px; height:40px;" />
<br><br>
<input type="password" name="password" value="" Placeholder="Enter password" Style="width:300px; height:40px;" />
<br><br>
<input type="submit" name="Login" value="Login" Style="width:300px; height:40px;" />
<br><br>
<h2><a href="forget.jsp">Forgot password?</a></h2>
</form>
</body>
</center>
</html>
<% 
String btn=request.getParameter("Login");
if(btn!=null)
{
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
		if(conn!=null)
		{
		PreparedStatement stmt=conn.prepareStatement("select *from onlineshop where username=? and password=?");
		stmt.setString(1,username);
		stmt.setString(2,password);
		ResultSet rs=stmt.executeQuery();
		if(rs.next())
		{
		session.setAttribute("username",username);
		out.println(username);
		response.sendRedirect("welcome.jsp");
		}
		else
		{
		out.println("Wrong Username or password");
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
<%

String btn1=request.getParameter("Login");
if(btn!=null)
{
String username=request.getParameter("username");
String password=request.getParameter("password");

if(username.equals("admin") && password.equals("admin"))
{
	response.sendRedirect("admin.jsp");
}
else
{
	out.println("");
}
}
%>









