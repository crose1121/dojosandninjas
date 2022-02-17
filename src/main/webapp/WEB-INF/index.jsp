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
<meta charset="UTF-8">
<title>Dojos and Ninjas</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">

</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
        <h1 style="text-align: center">Welcome to the Dojo(s)!</h1>
		<table class="table table-dark container" style="width: 30%">
			<thead>
				<tr>
					<th>Name</th>
					<th>Number of Ninjas</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dojo" items="${allDojos}">
					<tr>
						<td ><a href="/dojos/${dojo.id}">${dojo.name}</a></td>
						<td>${dojo.ninjas.size()}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p style="text-align: center">
		<a href="/dojos/new">New Dojo</a> ||
        <a href="/ninjas/new">New Ninja</a>
        </p>
    
    </div> <!-- End of Container -->
</body>
</html>