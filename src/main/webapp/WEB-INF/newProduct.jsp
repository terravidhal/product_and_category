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
            <title>New Product</title>
            <!-- for Bootstrap CSS -->
            <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
            <!-- YOUR own local CSS -->
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>
			<h1>New Product</h1>
			<p><a href="/">Home</a></p>
			<hr>
			
			<form:form action="/products/new" method="post" modelAttribute="product">
			
				<table>
					<thead>
						<tr>
							<td class="float-left">Name:</td>
							<td class="float-left">
								<form:errors path="name" class="text-danger"/>
								<form:input class="input" path="name"/>
							</td>
						</tr>
						<tr>
							<td class="float-left">Description:</td>
							<td class="float-left">
								<form:errors path="description" class="text-danger"/>
								<form:input class="input" path="description"/>
							</td>
						</tr>        
						<tr>
							<td class="float-left">Price:</td>
							<td class="float-left">
								<form:errors path="price" class="text-danger"/>
								<form:input type="number" class="input" path="price"/>
							</td>
						</tr>
						<tr>
							<td colspan=2><input class="input" class="button" type="submit" value="Submit"/></td>
						</tr>
					</thead>
				</table>
			</form:form>
           

            <!-- link Js -->
            <script type="text/javascript" src="/js/main.js"></script>
            <!-- For any Bootstrap that uses jquery -->
            <script src="/webjars/jquery/jquery.min.js"></script>
            <!--For any Bootstrap that uses JS -->
            <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        </body>

        </html>