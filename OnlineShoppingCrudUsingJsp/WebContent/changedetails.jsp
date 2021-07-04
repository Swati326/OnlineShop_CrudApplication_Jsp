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
<body>
<%@ include file="welcome.jsp" %>
<%
String username=(String)session.getAttribute("username");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
	if(conn!=null)
	{
		PreparedStatement stmt=conn.prepareStatement("select *from onlineshop where username=?");
		stmt.setString(1,username);
		ResultSet rs=stmt.executeQuery();
		%>
		<table>
		<tr><th>Name</th><th>Email ID</th><th>Contact No</th><th>Password</th><th>Answer of Security Question</th><th>Change Details</th></tr>
		<%
		while(rs.next())
		{
			int id=rs.getInt(1);
			
		String username1=rs.getString("username");
			String email=rs.getString("email");
			String contact=rs.getString("contact");
			String password=rs.getString("password");
			String answer=rs.getString("answer");
			
			 
			%>
			<tr>
			
			<center><td><%=rs.getString(2)%></td></center>
			<center><td><%=rs.getString(3)%></td></center>
			<center><td><%=rs.getString(4)%></td></center>
			<center><td><%=rs.getString(5)%></td></center>
			<center><td><%=rs.getString(6)%></td></center>
			<td><a href="changedetails1.jsp?&username1=<%=username1%>&email=<%=email%>&contact=<%=contact%>&password=<%=password%>&answer=<%=answer%>&id=<%=id%>">Change Details</a></td>	
			</tr>
			<% 
		}
	}
	else
	{
		out.println("some prolem");
	
	}	
}
catch(Exception ex)
{
	out.println("exception is:"+ex);
}
%>
</table>
</body>
</html>