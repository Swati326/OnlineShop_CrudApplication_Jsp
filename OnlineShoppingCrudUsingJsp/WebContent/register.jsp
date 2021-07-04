<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<style>
body
{
background-image:url("onlineshp.jpg");
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
<%!String username,email,contact,password,answer; 
Connection conn;
PreparedStatement stmt;
ResultSet rs;
%>
</head>
<center>
<body>
<h2>Register Here</h2>
<br>
<form name="frm" action=" " method="POST">
<input type="text" name="username" value="" Placeholder="Enter name" Style="width:300px; height:40px;" />
<br><br>
<input type="text" name="email" value="" Placeholder="Enter email" Style="width:300px; height:40px;" />
<br><br>
<input type="text" name="contact" value="" Placeholder="Enter contact" Style="width:300px; height:40px;" />
<br><br>
<input type="password" name="password" value="" Placeholder="Enter password" Style="width:300px; height:40px;" />
<br><br>
<select Style="width:300px; height:40px;" >
<option>what is your favorite color?</option>
<option>what is your born place ?</option>
<option>what is your mother name?</option>
</select>
<br><br>
<input type="text" name="answer" value="" Placeholder="Enter answer" Style="width:300px; height:40px;" />
<br><br>
<input type="submit" name="s" value="Register Here" Style="width:300px; height:40px;" />
<br><br>
<h2><a href="signup.jsp">Already user? Sign Up</a></h2>
</form>
</center>
<%
String btn=request.getParameter("s");
if(btn!=null)
{
	String username=request.getParameter("username");
	String email=request.getParameter("email");
	String contact=request.getParameter("contact");
	String password=request.getParameter("password");
	String answer=request.getParameter("answer");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
		if(conn!=null)
		{
		stmt=conn.prepareStatement("insert into onlineshop values('0',?,?,?,?,?)");
		stmt.setString(1,username);
		stmt.setString(2,email);
		stmt.setString(3,contact);
		stmt.setString(4,password);
		stmt.setString(5,answer);
		int value=stmt.executeUpdate();
		if(value>0)
		{
		out.println("Registerd Successfully.....");
		
		}
		else
		{
		out.println("Record Not Save Successfully.....");
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








