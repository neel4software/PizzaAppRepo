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
						<h3>Product Details !!!</h3>
					</center>
					<br />
					<center>
						<b>Note:</b> Select a product from the list to get price and other
						details.<br /> or <a href="addProduct.html">Add a new product</a>.
					</center>
					<br /> <br />
					<table cellspacing="0">
						<tr>
							<th>Bar Code</th>
							<th>Product Name</th>
							<th>Product Description</th>
							<th>Lowest Price</th>
							<th>Average Price</th>
							<th>Highest Price</th>
							<th>Ideal Price</th>
							<th>Number of Prices collected</th>
						</tr>

						<tr>
							<td>${map.product.productCode}</td>
							<td>${map.product.productName}</td>
							<td>${map.product.productDescription}</td>
							<td>${map.lowestPrice}</td>
							<td>${map.averagePrice}</td>
							<td>${map.highestPrice}</td>
							<td>${map.idealPrice}</td>
							<td>${map.priceCount}</td>
						</tr>

					</table>
					<br /> <br />
					<table cellspacing="0">
						<tr>
							<th>Store Name</th>
							<th>Price</th>
							<th>Notes</th>
						</tr>
						<c:forEach var="prices" items="${map.priceList}">
							<tr>
								<td>${prices.productCode}</td>
								<td>${prices.price}</td>
								<td>${prices.notes}</td>
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
