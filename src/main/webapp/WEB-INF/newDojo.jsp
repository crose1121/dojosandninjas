<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">
<title>New Dojo</title>
</head>
<body>
	<h1 style="text-align: center">Create a New Dojo here</h1>
	<div class="container">
		<form:form action="/dojos/create" method="post" modelAttribute="dojo" style="width: 50%" class="container">
			<div class="form-group">
				<p>
					<form:label path="name">Name</form:label>
					<br /><form:errors path="name" class="text-danger"/>
					<form:input path="name" class="form-control"/>
					<input type="submit" value="submit" class="btn btn-info"/>
				</p>
				<hr />
				<a href="/dojos" class="btn btn-warning">Home</a>
			</div>
		</form:form>
	</div>
</body>
</html>