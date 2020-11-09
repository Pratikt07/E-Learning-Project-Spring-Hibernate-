<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="ErrorPage.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Details</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<%@ include file="header.jsp" %>
<%
	User u = (User) request.getAttribute("user");
String msg  = (String) request.getAttribute("userPresent"); 
request.setAttribute("user", u);
%>
	<div class="container-fluid  " style="height: 100vh;margin-top:7vh;margin-bottom: 7vh">
		<div class="row justify-content-center align-items-center" style="height: 100vh">
			<div class="col-12  d-flex  justify-content-center "  >
				<div class="row justify-content-center  " style="height:90%">
				
				<div class="col-12 border  bg-light shadow rounded-sm " style="height: 90%;width: 50vw ">
					<div class="heading	">
						<h4 class="mt-3" style="text-align: center;" >Update Details</h4>
					</div>
					<div class="alert alert-danger" role="alert"
						<%
							if(msg==null){
						%>
								hidden>
						<%
							}else{
							%>
							
							<%= msg %>
							
							<%
						}
						String str = u.getUserName();
						%>	
						
					</div>
					<spr:form class ="form was-validated "  action="update_profile.htm"  method="post" commandName="user" >
					 	<div class="">
					    <label style="font-size:3.5vh " for="exampleInputText1">User Name</label>
					    <input required="required"  maxlength="10" type="text" class="form-control is-valid" id="exampleInputText1" style="height: 7vh" name="userUserName" value=<%=u.getUserUserName() %>>
					  </div>
					  <div class="">
					    <label style="font-size:3.5vh " for="exampleInputText1">Full Name</label>
					    <input required="required" pattern="^[a-zA-Z ]*$" type="text" class="form-control is-valid" id="exampleInputText1" style="height: 7vh" name="userName" value="<%=str %>">
					  </div>
					  <div class="">
					    <label style="font-size:3.5vh " for="exampleInputText1">Mobile No</label>
					    <input required="required" maxlength="10" minlength="10" type="text" class="form-control is-valid" id="exampleInputText1" name="userMobileNo" value=<%=u.getUserMobileNo() %>>
					  </div>
					  <div class="">
					    <label style="font-size:3.5vh " for="exampleInputEmail1">Email address</label>
					    <input type="email" required="required"  pattern="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$"  class="form-control is-valid" id="exampleInputEmail1" aria-describedby="emailHelp" value=<%=u.getUserMail() %> name="userMail">
					    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					  <div class="">
					    <label style="font-size:3.5vh " for="exampleInputPassword1">Password</label>
					    <input required="required"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}" type="password" class="form-control is-valid" id="exampleInputPassword1" name="userPass" value=<%=u.getUserPass() %>>
					  </div>
					  <div class=" form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1">
					    <label class="form-check-label is-valid" for="exampleCheck1">Check me out</label>
					  </div>
					  <button type="submit" class="btn btn-primary mt-2">Update</button>
					   
					</spr:form>
				</div>
				</div>
			</div>
		</div>
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>