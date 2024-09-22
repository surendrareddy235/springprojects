<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>railway ticket booking</h1>
<form:form action="BookingDetails" modelAttribute="reservation">
firstname:<form:input path="firstname"/><br><br>
lastname:<form:input path="lastname"/><br><br>
Gender:Male<form:radiobutton path="gender" value="Male"/>
Gender:Female<form:radiobutton path="gender" value="Female"/><br><br>
<input type="submit">
</form:form>
</body>
</html>