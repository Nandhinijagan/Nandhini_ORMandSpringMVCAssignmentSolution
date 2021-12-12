<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>CUSTOMER RELATIONSHIP MANAGEMENT</title>
</head>
<body>
	<div class="container" style="margin-top: 20px">
		<h3
			style="height: 60px; border-style: groove; color: white; background-color: #6c3082; padding-top: 10px; padding-left: 250px;">CUSTOMER
			RELATIONSHIP MANAGEMENT</h3>

		<!-- Add a button -->
		<a href="/WebCustomerTracker/customer/showFormForAdd"
			class="btn btn-primary btn-sm mb-3"
			style="margin-top: 20px; background-color: #8601af"; color:white;>
			Add Customer </a>

		<table
			class="table table-bordered table-striped table-light table-hover"
			style="border: 1px solid">
			<thead style="background-color: #880085; color: white;">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${customer}" var="tempCustomer">
					<tr>
						<td><c:out value="${tempCustomer.firstName}" /></td>
						<td><c:out value="${tempCustomer.lastName}" /></td>
						<td><c:out value="${tempCustomer.email}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/WebCustomerTracker/customer/showFormForUpdate?customerId=${tempCustomer.id}"
							class="btn btn-info btn-sm" style="background-color: #8601af">
								Update </a> <!-- Add "delete" button/link --> <a
							href="/WebCustomerTracker/customer/delete?customerId=${tempCustomer.id}"
							class="btn btn-info btn-sm btn-info"
							style="background-color: #8601af"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>