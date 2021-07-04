<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background-image: url("onlineshp.jpg");
  background-repeat:no-repeat;
  background-size:100%;
  padding: 0;
  margin: 0;
  

}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

 
li a {
  display: block;
  color: white;
  text-align: center;
  padding: 22px 19px;
  text-decoration: none;
  font-size:18px; 
}

li a:hover {
  background-color: #111;
}
ul li
{
height:63px;
}

</style>
</head>
<body>
<ul>
<li><a href="Addnewproduct.jsp" >ADD NEW PRODUCT</a></li>
<li><a href="viewproducts.jsp" >VIEW PRODUCTS</a></li>
<li><a href="searchproduct.jsp" >SEARCH PRODUCT</a></li>
<li><a href="receivedmsg.jsp" >RECEIVED MESSAGE</a></li>
<li><a href="signup.jsp" >LOG OUT</a></li>
</ul>
<br><br>
<center><h1>Welcome Admin!</h1></center>
</body>
</html>