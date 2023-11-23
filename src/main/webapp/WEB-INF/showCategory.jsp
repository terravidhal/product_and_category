<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!-- New line below to use the JSP Standard Tag Library -->
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!-- New line below to use the JSP Standard Tag Library : Form -->
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<!-- gestion ds erreurs -->
			<%@ page isErrorPage="true" %>
				<!DOCTYPE html>
				<html>

				<head>
					<meta charset="UTF-8">
					<title>View Category</title>
					<!-- for Bootstrap CSS -->
					<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
					<!-- YOUR own local CSS -->
					<link rel="stylesheet" href="/css/style.css" />
				</head>

				<body>
					<h1>${category.name}</h1>
					<p><a href="/">Home</a></p>
					<hr>

					<h3>Products:</h3>
					<ul>
						<c:forEach var="product" items="${assignedProducts}">
							<li>
								<c:out value="${product.name}"></c:out>
							</li>
						</c:forEach>
					</ul>
					<hr>
					<form action="/categories/${id}" method="post">
						<h4>Add Product:</h4>
						<select name="productId" id="productId" class="input">
							<c:forEach var="product" items="${unassignedProducts}">
								<option value="${product.id}">${product.name}</option>
							</c:forEach>
						</select>
						<input class="input" class="button" type="submit" value="Add" />
					</form>

					<!-- link Js -->
					<script type="text/javascript" src="/js/main.js"></script>
					<!-- For any Bootstrap that uses jquery -->
					<script src="/webjars/jquery/jquery.min.js"></script>
					<!--For any Bootstrap that uses JS -->
					<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
				</body>

				</html>