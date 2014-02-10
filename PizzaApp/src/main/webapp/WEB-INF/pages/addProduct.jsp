<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<title>Add Product form | Pizza App</title>
<link href="<c:url value="/resources/css/admin.css" />" rel="stylesheet">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div id="content">
			<div id="box">
				<div id="list">
					<br /> <br />
					<center>
						<h3>Add Product form !!!</h3>
					</center>
					<br />
					<center>
						<b>Note:</b> Add a new product using the form below, or <a href="addPrice.html">Add
							some prices</a> to existing products.
					</center>
					<br /> <br />
					<form:form method="post" modelAttribute="product"
						action="saveProduct.html">

						<table>
				
							<tr>
								<td>Product Code:</td>
								<td><form:input path="productCode" /></td>
							</tr>
							<tr>
								<td>Product Name:</td>
								<td><form:input path="productName" /></td>
							</tr>
							<tr>
								<td>Product Description:</td>
								<td><form:textarea path="productDescription" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" value="Add Product"></td>
							</tr>
						</table>
					</form:form>
				</div>
			</div>
		</div>
		<div id="footer"></div>
	</div>
</body>
</html>
