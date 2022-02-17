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
<title>New Ninja</title>
</head>
<body>
	<h1 style="text-align: center">Create a New Ninja here</h1>
	<div class="container">
		<form:form action="/ninjas/create" method="post" modelAttribute="ninja" style="width: 50%" class="container">
			<div class="form-group">
				<p>
					<form:label path="firstName">First Name</form:label>
					<br /><form:errors path="firstName" class="text-danger"/>
					<form:input path="firstName" class="form-control"/>
				</p>
					<form:label path="lastName">Last Name</form:label>
					<br /><form:errors path="lastName" class="text-danger"/>
					<form:input path="lastName" class="form-control"/>
				<p>	
					<form:label path="age">Age</form:label>
					<br /><form:errors path="age" class="text-danger"/>
					<form:input path="age" class="form-control"/>
				</p>	
				<p>
					<form:label path="dojo">Dojo</form:label><br />
				    <form:select path="dojo"> 
				        <c:forEach var="dojo" items="${allDojos}">
				            <!--- Each option VALUE is the id of the person --->
				            <form:option value="${dojo.id}" path="dojo_id">
				            <!--- This is what shows to the user as the option --->
				                <c:out value="${dojo.name}"/>
				            </form:option>
				        </c:forEach>
				    </form:select>
				</p>	
				<hr />
				
				<input type="submit" value="Submit" class="btn btn-info"/>
				<a href="/dojos" class="btn btn-warning">Home</a>
			</div>
		</form:form>
	</div>
</body>
</html>