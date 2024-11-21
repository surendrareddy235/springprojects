<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/logindemo.css" />
</head>
<body>
   <div class="mainsentence">
   <c:if test="${not empty errorMessage}">
    <div style="color: red;">${errorMessage}</div>
   </c:if>
   
        You can login into Green Valley here...
   </div>
   <div class="innerbox-css">
       <div class="logindata-css">
        <form action="${pageContext.request.contextPath}/plantsdemo/login" method="post">
           <div>
                username<br>
                <input type="text" name="username" class="username-css"><br>
               Email-ID<br>
               <input type="text" name="emailid" class="emailid-css"><br>
               Password<br>
               <input type="password" name="password" class="password-css"><br><br>
               <input type="submit" value="Login" class="loginbox-css">
               </div>
           </form>
       </div>
       <div class="forgotpassword-css">
           <a href="forgotpasswordservlet">Forgot Password?</a>
       </div>
   </div>
</body>
</html>
