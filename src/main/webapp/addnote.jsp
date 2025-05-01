<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
<%@include file="all_js_css.jsp" %>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pixelify+Sans:wght@400..700&display=swap" rel="stylesheet">
<style>
  body {
    font-family: 'Pixelify Sans', sans-serif;
  }

  .card, .card-title, .card-text, .btn {
    font-family: 'Pixelify Sans', sans-serif;
  }
</style>
</head>
<body>

	<div class="container">
    	<%@include file="navbar.jsp" %>
    	
    	<br>
    	<h1>fill yourr details--></h1>
    	
    	<!-- add form -->
    	<form action="SaveNotesServlet" method="post">
		  <div class="form-group">
		    <label for="title">Note title</label>
		    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here">
		    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
		  </div>
		  <div class="form-group">
		    <label for="content">Note content</label>
		    <textarea name="content" required id="content" placeholder="Enter yourr note here" class="form-control" style="height:300px"></textarea>
		  </div>
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-primary">Add</button>
		  </div>
		</form>    	
    	
    </div>


</body>
</html>