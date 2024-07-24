<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book management system</title>
<meta name="viewport" content="width=device-width,initial-scace=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
	<%@page import="java.util.List,com.book.dao.BookDao,com.book.entity.Book" %>
	<%
	List<Book> bookList=BookDao.listBooks();
	%>
	<div class="container mt-3">
		<table class="table table-bordered table-hover">
			<thead class="table-success">
				<tr>
					<th>Book Id</th>
					<th>Book Name</th>
					<th>Book Price</th>
				</tr>
			</thead>
			<tbody>
				<%
				for(Book b:bookList)
					out.println("<tr><td>"+b.getBookId()+"</td><td>"+b.getBookName()+"</td><td>"+b.getBookPrice()+"</td>");
				%>
			</tbody>
		</table>
		<ul class="nav">
		<li class="nav-item">
			<a class="nav-link" href="addBook.jsp">Add New Book</a>
		</li>
	</ul>
	</div>
</body>
</html>