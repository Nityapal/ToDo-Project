<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tudu: Update your notes</title>
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
		<h1>Oh no did u forget smthng to add or was it a spelling mistake?</h1>
		
		<%
			int noteId= Integer.parseInt(request.getParameter("noteid").trim());
			Session s= FactoryProvider.getFactory().openSession();
			
			Note note= (Note)s.get(Note.class, noteId);
			s.close();
		
		%>
		<!-- add form -->
    	<form action="UpdateServlet" method="post">
    	
    	<input value= "<%= note.getId() %>" name= "noteid" type="hidden" />
    	
		  <div class="form-group">
		    <label for="title">Note title</label>
		    <input name="title" required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here" value="<%= note.getTitle() %>">
		    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
		  </div>
		  <div class="form-group">
		    <label for="content">Note content</label>
		    <textarea name="content" required id="content" placeholder="Enter yourr note here" class="form-control" style="height:300px"><%= note.getContent() %></textarea>
		  </div>
		  <div class="container text-center">
		  	<button type="submit" class="btn purple" style="color: white">Save note</button>
		  </div>
		</form>    
		
	</div>

</body>
</html>