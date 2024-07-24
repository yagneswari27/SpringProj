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
	<div class="container mt-3">
		<h2>Add Book Details</h2>
		<form action="/SaveBook.jsp">
			<div class="mb-3 mt-3">
				<label for="bookId">Book Id:</label><br>
				<input type="text" class="form-control" id="bookId" placeholder="Enter Book Id" name="bookId">
			</div>
			<div class="mb-3 mt-3">
				<label for="bookName">Book Name:</label><br>
				<input type="text" class="form-control" id="bookName" placeholder="Enter Book Name" name="bookName">
			</div>
			<div class="mb-3 mt-3">
				<label for="bookPrice">Book Price:</label><br>
				<input type="text" class="form-control" id="bookPrice" placeholder="Enter Book Price" name="bookPrice">
			</div>
			<button type="submit" class="btn btn-primary">Save Book</button>
		</form>
	</div>
</body>
</html>