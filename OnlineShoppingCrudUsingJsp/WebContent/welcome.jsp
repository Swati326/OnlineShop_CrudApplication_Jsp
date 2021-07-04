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
<li><a href="home.jsp" >HOME</a></li>
<li><a href="mycart1.jsp" >MY CART</a></li>
<li><a href="changedetails.jsp" >CHANGE DETAILS</a></li>
<li><a href="messageus.jsp" >MESSAGE US</a></li>
<li><a href="about.jsp" >ABOUT</a></li>
<li><a href="signup.jsp" >LOG OUT</a></li>
</ul>
<br><br>
<center><h1>Welcome To Swati's Shop</h1></center>
</body>
</html>