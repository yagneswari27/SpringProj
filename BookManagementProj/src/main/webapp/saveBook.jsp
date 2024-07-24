
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Management System</title>
<meta name="viewport" content="width=device-width,initial-scace=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<%@page import="com.book.dao.BookDao"%>
	<jsp:useBean id="book" class="com.book.entity.Book" scope="session"/>
	<jsp:setProperty property="*" name="book"/>
	<div class="container mt-3">
	<%
	BookDao.saveBook(book);
	out.println("<p class=\"h4 text-success\">Book Added Successfully</p>");
	%>
	<ul class="nav">
		<li class="nav-item">
			<a class="nav-link" href="addBook.jsp">Add New Book</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="DisplayBooks.jsp">Display Books</a>
		</li>
	</ul>
	</div>
</body>
</html>