<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- New line below to use the JSP Standard Tag Library -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- New line below to use the JSP Standard Tag Library : Form -->
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <!-- gestion ds erreurs -->
    <%@ page isErrorPage="true" %> 
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Home</title>
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>
			<h1>Home Page</h1>
			<p><a href="/products/new">New Product</a></p>
			<p><a href="/categories/new">New Category</a></p>
			<hr>
			<table>
				<thead>
					<tr>
						<th>Products</th>
						<th>Categories</th>
					</tr>
				</thead>
				<tbody>
					   <tr>
						   <td>
							   <ul>
								   <c:forEach var="product" items="${products}">
									   <li><a href="products/<c:out value="${product.id}"/>"><c:out value="${product.name}"/></a></li>
								   </c:forEach>
							   </ul>
						   </td>
						   <td>
							   <ul>
								   <c:forEach var="category" items="${categories}">
									   <li><a href="categories/<c:out value="${category.id}"/>"><c:out value="${category.name}"/></a></li>
								   </c:forEach>
							   </ul>
						   </td>
					   </tr>
				</tbody>
			</table>
           

            <!-- link Js -->
            <script type="text/javascript" src="/js/main.js"></script>
            <!-- For any Bootstrap that uses jquery -->
            <script src="/webjars/jquery/jquery.min.js"></script>
            <!--For any Bootstrap that uses JS -->
            <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        </body>

        </html>