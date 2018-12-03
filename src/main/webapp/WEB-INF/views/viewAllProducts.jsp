<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@include file="header.jsp"%>
<html>
<head>
<title> All Products</title>
</head>

<body>


	<hr>
	<hr>
	<div class="container">
	<h2 align="center">Displaying All Products</h2>
	</div>
	

		<div class="container-fluid">
			<div style="overflow-x: auto;">
			  <table class="table table-hover">
					<thead>
						<tr>
							<th>productid</th>

							<th>productName</th>
							<th>price</th>
							<th>description</th>
							<th>images</th>
							<th>quantity</th>
							<th>view more </th>
							</th>
						</tr>

					</thead>
					 <tbody>
  

					<c:forEach items="${allProducts}" var="product">
						<tr>
						   
							<td>${product.productId}</td>
							<td>${product.productName}</td>
							<td>${product.price}</td>
							 <td>${product.description} </td>

						    <td>
						    
						    <img class="img-fluid" height="40px" width="40px" 
						    src="<c:url value="/resources/images/${product.images}.jpg"/>"/>
						    
						    </td>
						    <td>${product.quantity}
							
                             						 
						   <td>
			<td><a href="<c:url value='viewProduct/${product.productId }'/>">view more<span class="glyphicon glyphicon-info-sign"></span></a></td>
			               </td>
			                 
			               <td>
			               <a href="<c:url value='/admin/updateProduct/${product.productId}' />"><span  class="glyphicon glyphicon-pencil"></span></a>
			               </td>
			                <td>
			               <a href="<c:url value='/admin/deleteProduct/${product.productId}' />"><span  class="glyphicon glyphicon-remove"></span></a>
			               </td>
	
	</tr>
	
					</c:forEach>
                      </td>

				</table>

			</div>
		</div>
	</div>

<%@include file="Footer.jsp"%>
</body>

</html>