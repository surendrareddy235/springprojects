<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${not empty error}">
    <p style="color:red;">${error}</p>
</c:if>
<h1>you can login here</h1>
<form action="login" method="post">
username:<input type="text" name="username"><br>
password:<input type="text" name="password"><br>
<input type="submit" name="login">
</form>
<a href="signup">click here if you are not signup</a>
</body>
</html>