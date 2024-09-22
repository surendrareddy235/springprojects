<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>add your details for ticket</h1>
<form:form action="BookingDetails" modelAttribute="reservation">
firstname:<form:input path="firstname"/><br>
lastname:<form:input path="lastname"/><br>
gender:Male<form:radiobutton path="gender" value="Male"/>
gender:Female<form:radiobutton path="gender" value="Female"/><br>
meals:
breakfast:<form:checkbox path="food" value="breakfast"/>
lunch:<form:checkbox path="food" value="lunch"/>
dinner:<form:checkbox path="food" value="dinner"/><br>
<input type="submit"/>
</form:form>
</body>
</html>