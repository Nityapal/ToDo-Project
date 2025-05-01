<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tudu: All Notes</title>
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
		<h1 class="text-uppercase">All Notes</h1>
		
		<div class="row">
		
		<div class="col-12">
			
			<%
		
			Session s= FactoryProvider.getFactory().openSession();
			Query q= s.createQuery("from Note");
			List<Note> ls= q.list();
			for(Note note:ls){
				
				%>
				
				<div class="card mt-3" style="background-color: #a8b197;">
				  <img class="card-img-top m-2" style="max-width: 80px;" src="img/diary.png" alt="Card image cap">
				  <div class="card-body px-5">
				    <h5 class="card-title"> <%= note.getTitle() %> </h5>
				    <p class="card-text"> <%= note.getContent() %> </p>
				    <div class="container text-center">
				    	<a href="#"  class="btn" style="background-color: #a67c52; color: white">Delete</a>
				    	<a href="#" class="btn" style="background-color: #a67c52; color: white">Update</a>
				    </div>
				  </div>
				</div>

				<%
			}
			
			s.close();
			
			%>
			
		</div>
		
		</div>
		
	</div>

</body>
</html>