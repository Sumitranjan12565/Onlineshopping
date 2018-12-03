<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif; background-color: white
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: lightblue;
  color: black;
}

.topnav a.active {
  background-color:dodgerblue;
  color: white;
}
.topnav-right {
  float: right;
        .carousel-inner img {
      width: 100%;
      height: 100%;
  }

</style>
<body>
<div class="topnav">
  <a class="active" href="#">Smart Phones</a>
  
  <li><a href="<c:url value="/about"/>">about us</a></li>
  <li><a href="<c:url value="/contact us"/>">contact us us</a></li>
  <li><a href="<c:url value="/allProducts"/>">all Products</a></li>
 <li><a href="<c:url value="/Sumit"/>">Sumit Ranjan</a></li>


  <div class="topnav-right">
  <a href="<c:url value="/loginid"/>"><span class="glyphicon glyphicon-log-in">Login</a>
   <a href="<c:url value="/signup"/>"><span class="glyphicon glyphicon-log-in">sign up</a>
     
  </div>
</div>
</body>
</html>