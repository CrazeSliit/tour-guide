<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Guide Details</title>
    <link rel="stylesheet" type="text/css" href="css/display.css">
</head>
<body>
  <h2>Guide Details Table</h2>
  <table>
      <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>License Number</th>
          <th>Gender</th>
          <th>Availability</th>
          <th>Message</th>
       </tr>
         <c:forEach var="guide" items="${allGuides}">
       <tr>
           <td>${guide.id}</td>   
           <td>${guide.name}</td> 
           <td>${guide.email}</td> 
           <td>${guide.phone}</td> 
           <td>${guide.license_number}</td> 
           <td>${guide.gender}</td> 
           <td>${guide.availability}</td> 
           <td>${guide.message}</td> 
           <td></td> 
           
           <td>
              <a href="Update.jsp?id=${guide.id}&name=${guide.name}&email=${guide.email}&phone=${guide.phone}&license_number=${guide.license_number}&gender=${guide.gender}&availability=${guide.availability}&message=${guide.message}">
                  <button>Update</button>
              </a>
              
              <form action="DeleteServlet" method="post">
              	<input type="hidden" name="id" value="${guide.id}">
                 <button>Delete</button>
              </form>
           </td>   
                
       </tr>
       </c:forEach>
  
</table>
</body>
</html>