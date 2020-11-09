<%@page import="com.cdac.dto.Admin"%>
<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv = "refresh" content = "8; url = index.jsp" />
<title>Logged Out</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
</head>
<body>
<%
	String msg = (String) request.getAttribute("msg");
%>
<div class="container"  style="height: 100vh">
	
	<div class="row justify-content-center align-items-center" style="height: 100vh">
	<div class="col-6 d-flex align-items-center  rounded-sm">
					<img class="img-fluid" alt="temp" src="Source/sorry.jpg" style="width:60vw ">
	</div>
	<div class="col-6">
		<spr:form  commandName="admin" method="GET">
			<div class="alert alert-danger" role="alert">
			  <h4 class="alert-heading">Oooopss.......... </h4>
			  <p><%=msg %> !!</p>
	  
			</div>
		</spr:form>
	</div>
	
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>