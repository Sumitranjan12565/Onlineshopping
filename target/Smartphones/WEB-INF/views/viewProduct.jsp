<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Product</title>
</head>
<body>
<style>
h1
{
margin-top:55px;
}
</style>
	<div class="container">
		<table  class="table">
     
           
			<tr>
				<h1 align="center">Product Details</h1>
			
           	</tr>
			<tr>
			  
						    <img class="img-fluid" height="300px" width="180px" 
						    src="<c:url value="/resources/images/${product.images}.jpg"/>"/>
						    
				</th>
					<td></td>
	</tr>

		
			<tr>
			
				<th>>ProductID</th>
				<td>${product.productId}</td>
			
		</tr>
				<th>Product Name</th>
				<td>${product.productName}</td>
			<tr>
		
				<th>Product Price</th>
				<td>${product.price}</td>
			</tr>
			<tr>
		
				<th>Product description</th>
				<td>${product.description}</td>
			
			</tr>
			
	
				
					<th>quantity</th>
					<td><input type="text" name="quantity"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="AddToCart"
						class="btn btn-info" /></td>
						<td><a href="viewProduct" class="btb btn-info">Continue</a></td>

				</tr>


		</table>
	
</div>

<%@include file="Footer.jsp"%>
</body>
</html>