<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="com.cdac.dto.Courses"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Courses</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
	
	<%@ include file="header.jsp" %>
<div class="container  " style="height: 100% ">
	<% User user = (User) session.getAttribute("user_s");
	if(user==null){
		request.setAttribute("msg","You Have Logged Out, Please Log In Again" );
		response.sendRedirect("sessionInvalidate.jsp");
	}
		//System.out.print(user);
	%>
	<h4 class=" mt-2"> <%= user.getUserName() %> : </h4>
	
		<div class="row">
		<div class="col-6 d-flex align-items-center  rounded-sm">
					<img class="img-fluid" alt="temp" src="Source/3.jpg" style="width:60vw ">
		</div>
		<div class="col-6 d-flex align-items-center  rounded-sm">
					<img class="img-fluid" alt="temp" src="4.jpg" style="width:60vw ">
		</div>
	</div>
	
	<div class="row shadow bg-info mt-2 mb-2 justify-content-center align-items-center"><h2 >My Courses</h2></div>
		<% 
		Set<Courses> li = user.getCourses();
		Iterator<Courses> it = li.iterator(); 
		while(it.hasNext()){
			Courses c = it.next();
		%>
		
		<!-- <div class="jumbotron jumbotron-fluid">
		  <div class="container">
		    <h1 class="display-4">Fluid jumbotron</h1>
		    <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
		  </div>
		</div> -->
		
		
		<div class="row shadow jumbotron  jumbotron-fluid mb-2 justify-content-center  align-items-center bg-info p-2" >
			<div class="col-3   d-flex justify-content-center align-items-center ">
				<span class ="display-4 shadow p-3  mr-5"style="border-radius:20%; font-size: 4vh;font-weight: bold;">
				<%= c.getCourseName().toUpperCase() %>
				</span>
			</div>
			<div class="lead col-6 mb-2">
				<div class="row mb-2"> 
					<div class="col">
						<span style="font-weight: bold">Instructor</span> : <%= c.getCourseInstructor().toUpperCase()%>
					</div>
				</div>
				<div class="row mb-2 justify-content-start"> 
				<div class="col"><span style="font-weight: bold">Language :</span> <%=c.getCourseLanguage() %></div>
				<div class="col"></div>
				
								
				</div>
				<div class="row justify-content-between ">
					<div class="col "><span style="font-weight: bold">Date :</span><%=c.getCourseUpdatedate() %></div>
					<div class="col"><span style="font-weight: bold">Duration :</span> <%= c.getCouseHour()%> hr</div>
				</div>
				<div class="row mt-4 ">
					
				
					<div class="col">
					<button class="btn btn-outline-danger "> <a href="pre_go_to_course.htm?cid=<%=c.getCourseId() %>" style="color: white;text-decoration: none">Go To Course</a></button>
					</div>
					
				</div>
			</div>
		</div>
		<% } %>	
		
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>