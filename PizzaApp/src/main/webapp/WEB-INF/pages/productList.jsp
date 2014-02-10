<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<title>Products list | Pizza App</title>
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
						<h3>Product List !!!</h3>
					</center>
					<br />
					<center>
						<b>Note:</b> Select a product from the list to get price and other
						details.<br /> or <a href="addProduct.html">Add a new product</a>.
					</center>
					<br /> <br />
					<table cellspacing="0">
						<tr>

							<th>Product Code</th>
							<th>Product Name</th>
							<th>Product Description</th>
							<th>Details</th>

						</tr>
						<c:forEach var="productList" items="${productList}">
							<tr>

								<td>${productList.productCode}</td>
								<td>${productList.productName}</td>
								<td>${productList.productDescription}</td>
								<td><a href="${'getProduct.html?code='}${productList.productCode}">Get Details</a></td>

							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<div id="footer"></div>
	</div>
</body>
</html>
