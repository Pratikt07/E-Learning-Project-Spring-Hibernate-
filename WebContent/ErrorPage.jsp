<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>

<head>
	<title>Bootstrap error page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css2?family=Cardo&family=Lemonada:wght@300&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<style type="text/css">
		body {
			margin: 0;
			padding: 0;
			background-color: ;
			font-family: 'Cardo', serif;

		}
	
	.container {
  position: relative;
}

/* Bottom right text */
.text-block {
  position: absolute;
  bottom: 20px;
  right: 20px;
  background-color: white
  color: white;
  padding-left: 20px;
  padding-right: 20px;
}
		.row {
			margin: 0;
		}

		a {
			background-color: #182C61;
			border: 0px;
			text-decoration: none;
			padding: 10px;
			color: #fff;
			font-family: 'Lemonada', cursive;

		}

		a:hover {
			text-decoration: none;
			color: #fff;
			background-color: #0c2461;
		}

		h1 {
			font-size: 180px;
		}

		h4 {
			padding-bottom: 20px;
			font-family: 'Lemonada', cursive;

		}

		p {
			font-family: 'Lemonada', cursive;
			text-align: center;

		}
	</style>
</head>

<body>
	
	  <%
		User u =(User) session.getAttribute("user_s");
	String str ="";
	if(u!=null){
		str = "show_user_courses.htm";
	}else{
		str="index.htm";
	}
	%>    
	<div class="container">
  <img src="Source/error.jpg" alt="Error" style="width:100%;">
  <div class="text-block row justify-content-center mb-4">
    <a class="btn btn-primary" href= <%=str %>   >Back To Home</a>
  </div>
</div>
	
</body>

</html>