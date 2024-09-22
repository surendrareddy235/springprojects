<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation Details</title>
</head>
<body>
<h1>Check Your Details</h1>
firstname: ${reservation.firstname}<br>
lastname: ${reservation.lastname}<br>
gender: ${reservation.gender}<br>
meals:
<ul>  
<c:forEach var="meal" items="${reservation.food}">  
<li>${meal}</li>  
</c:forEach>  
</ul>  
</body>
</html>
