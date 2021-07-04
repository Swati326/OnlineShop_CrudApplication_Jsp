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
<%
int id=Integer.parseInt(request.getParameter("id"));
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","swati");
	if(conn!=null)
	{
		PreparedStatement stmt=conn.prepareStatement("delete from admin where id=?");
		stmt.setInt(1,id);
		int val=stmt.executeUpdate();
		if(val>0)
		{
			response.sendRedirect("viewproducts.jsp");
		}
	}
}
catch(Exception ex)
{
	out.println("erro is"+ex);	
}
%>
</body>
</html>