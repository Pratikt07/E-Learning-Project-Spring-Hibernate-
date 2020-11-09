<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Successfull</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

	<div class="container"  style="height: 100vh">
	<div class="row justify-content-center align-items-center" style="height: 100vh">
	<div class="alert alert-success" role="alert">
	  <h4 class="alert-heading">Success </h4>
	  <p><%=request.getAttribute("msg")%> !!</p>
	  <hr>
	  <p class="mb-0"><a btn btn-dark href="index.jsp" >Home</a></p>
	</div>
	</div>
	</div>
    <%-- <table align="center" >
        <tr>
            <td> <%=request.getAttribute("msg")%></td>
        </tr>
        <tr>
            <td> <a href="index.jsp" >Home</a> </td>
        </tr>
    </table> --%>
</body>
</html>
</body>
</html>