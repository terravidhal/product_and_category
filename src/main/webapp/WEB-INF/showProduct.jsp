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
					<title>View Product</title>
					<!-- for Bootstrap CSS -->
					<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
					<!-- YOUR own local CSS -->
					<link rel="stylesheet" href="/css/style.css" />
				</head>

				<body>
					<h1>${product.name}</h1>
					<p><a href="/">Home</a></p>
					<hr>

					<h3>Categories:</h3>
					<ul>
						<c:forEach var="category" items="${assignedCategories}">
							<li>
								<c:out value="${category.name}"></c:out>
							</li>
						</c:forEach>
					</ul>
					<hr>
					<form action="/products/${id}" method="post">
						<h4>Add Category:</h4>
						<select name="categoryId" id="categoryId" class="input">
							<c:forEach var="category" items="${unassignedCategories}">
								<option value="${category.id}">${category.name}</option>
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