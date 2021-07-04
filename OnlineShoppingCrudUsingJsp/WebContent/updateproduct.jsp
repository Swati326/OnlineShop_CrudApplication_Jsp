<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<%!
String name,email,contact;
int id;
int price;
Connection conn;
PreparedStatement stmt;
ResultSet rs;
%>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div {
  background-color:black;
  width: 350px;
  border: 15px solid  #999999;
  padding: 50px;
  margin: 20px;
   border-radius: 25px;
   text-align: center;
}
.button{
 background-color:  #999999;
  border-radius: 25px;
    border: none;
 }
 .abc1{
 border-radius: 25px;
  text-align: center;
  }
 </style>
</head>
<body>
<%@ include file="admin.jsp" %>
<%	
name=request.getParameter("name");
price=Integer.parseInt(request.getParameter("price"));
id=Integer.parseInt(request.getParameter("id"));
%>
<center>
<br>
<br>
<br>
<div>
<form name="frm" action="updatefinalproduct.jsp" method="POST">
<input type="hidden" name="id" value="<%=id%>" Placeholder="Enter your id" class="abc1" style="width:300px; height:30px;"/>
<br><br>
<input type="text" name="name" value="<%=name%>" Placeholder="Enter product name" class="abc1" style="width:300px; height:30px;"/>
<br><br>
<input type="text" name="price" value="<%=price%>" Placeholder="Enter price " class="abc1" style="width:300px; height:30px;"/>
<br><br>
<input type="submit" name="s" value="Update product" class="button" style="width:300px; height:30px;"/>
</form>
</div>
</center>
</body>
</html>
