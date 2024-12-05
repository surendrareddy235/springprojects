
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/signupdemo.css" />
</head>
<body>
<div class="signup-main">
     welcome to the signup page green-vally is the best place to change your home green....!
   </div>
     <div class="signup-box">
       <form action="${pageContext.request.contextPath}/plantsdemo/signup" method="post" class="signup-data">
       <div>
          name:<br>
          <input type = "text" name="username" class="namebox-css"><br>
          email:<br>
          <input type="text" name = "email" class="emailbox-css"><br>
          password:<br>
          <input type="text" name="password" class="passwordbox-css"><br><br>
          <input type="submit" value="signup" class="signupbutton-css">
       </div>
    </form>
</div>
</body>
</html>