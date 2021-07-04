<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="frm" action="" method="POST">
<input type="text" name="username" value="" Placeholder="Enter name" Style="width:300px; height:40px;" />
<br><br>
<input type="password" name="password" value="" Placeholder="Enter new password" Style="width:300px; height:40px;" />
<br><br>
<input type="submit" name="s" value="Change Password"  Style="width:300px; height:40px;" />
</form>
<br><br>
<%
String btn=request.getParameter("s");
if(btn!=null)
{
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
		if(conn!=null)
		{
		PreparedStatement stmt=conn.prepareStatement("update onlineshop set password=? where username=?");
		stmt.setString(1,password);
		stmt.setString(2,username);
		int val=stmt.executeUpdate();
		if(val>0)
		{
		response.sendRedirect("signup.jsp");
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
</body>
</html>








