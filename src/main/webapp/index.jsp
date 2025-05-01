<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    	
    <title>Tudu : Home page</title>
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
    
    <div class="container-fluid">
    	<%@include file="navbar.jsp" %>
    	<br>
    	
		<div class="card p-5" style="background-color: #a8b197;">
			<img alt="" class="img-fluid mx-auto mt-4" style="width:400px" src="img/diary.png">
			<h1 class="text-center mt-3"><b>Welcome to Tudu</b></h1>
			<h2 class="text-center m-5 ">Here u can list all ur to-do's and add secret notes or hell lots of stuff</h2>
			<div class="container text-center">
				<a href="addnote.jsp" class="btn p-3" style="background-color: #c36e68; color: white;">lesgooo</a>
			</div>
		</div>
    	
    </div>

  </body>
</html>