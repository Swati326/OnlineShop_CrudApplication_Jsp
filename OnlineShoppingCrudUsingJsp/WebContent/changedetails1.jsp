<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="welcome.jsp" %>
<%	
String username1=(String)session.getAttribute("username");
String username=request.getParameter("username1");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String password=request.getParameter("password");
String answer=request.getParameter("answer");
int id=Integer.parseInt(request.getParameter("id"));
%>
<center>
<br>
<br>
<br>
<div>
<form name="frm" action="changedetails2.jsp" method="POST">
<input type="hidden" name="id" value="<%=id%>" Placeholder="Enter your id"  style="width:300px; height:30px;"/>
<br><br>
<input type="text" name="username" value="<%=username1%>" Placeholder="Enter your name"  style="width:300px; height:30px;"/>
<br><br>
<input type="text" name="email" value="<%=email%>" Placeholder="Enter your email "  style="width:300px; height:30px;"/>
<br><br>
<input type="text" name="contact" value="<%=contact%>" Placeholder="Enter your contact" class="abc1" style="width:300px; height:30px;"/>
<br><br>
<input type="text" name="password" value="<%=password%>" Placeholder="Enter your password" class="abc1" style="width:300px; height:30px;"/>
<br><br>
<input type="text" name="answer" value="<%=answer%>" Placeholder="Enter your answer" class="abc1" style="width:300px; height:30px;"/>
<br><br>
<input type="submit" name="s" value="save details"  style="width:300px; height:30px;"/>
<br><br>
</form>
</div>
</center>
</body>
</html>

