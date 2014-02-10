<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<title>Product loader form | Pizza App </title>
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
						<h3>Product loader form to enter price !!!</h3>
					</center>
					<br />
					<center>
						<b>Note:</b> Add price to a product, by select a product code from
						the drop down. <br /> If product is not there in drop down, <a
							href="addProduct.html">Add a new product</a> first.
					</center>
					<br /> <br />
					<form:form method="post" modelAttribute="price" action="savePrice.html">

						<table>
							<tr>
								<td>Product code:</td>
								<td><form:select path="productCode">
										<form:option value="1">-- select --</form:option>
										<form:options items="${codeList}"/>
									</form:select></td>
							</tr>
							<tr>
								<td>Price:</td>
								<td><form:input path="price" />
								</td>
							</tr>
							<tr>
								<td>Store Name:</td>
								<td><form:input path="storeName" />
								</td>
							</tr>
							<tr>
								<td>Notes:</td>
								<td><form:textarea path="notes" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" value="Add Entry">
								</td>
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
