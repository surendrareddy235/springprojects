<!DOCTYPE html>
<html lang = "en">
 <head>
   <meta charset = "UTF-8">
     <title>home servlet</title>
      <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;700&display=swap">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plantsdemo.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
 </head>
<body>

<div class = "container">
  <form action = "searchservlet" method = "get">
    <input type ="text" placeholder = "search.." class = "search">
    <input type = "submit" value = "enter" class= "button">
  </form>
  
   <form action="${pageContext.request.contextPath}/plantsdemo/login">
     <button type = "submit"  class= "login-css">login</button>
  </form>
  <form action="${pageContext.request.contextPath}/plantsdemo/signup">
  <button type = "submit" class= "signup-css">signup</button>
  </form>
</div>

  <div class = "logo-container">
     <img alt="greenvally" src="${pageContext.request.contextPath}/images/green-vally.png" class ="logo-img">
         <a href = servlet class = "logoname">genius-greens</a>
         <a href = "profileservlet" class="logo-profile"><i class="fa-solid fa-user"></i></a>
         <a href = "cartservlet" class= "cart-css"><i class="fa-solid fa-cart-shopping"></i></a>
  </div>
 
 
<div class = "plant-container">
   <a href="${pageContext.request.contextPath}/plantsdemo/plants">Plants</a>
   <a href ="${pageContext.request.contextPath}/plantsdemo/pots" class = "pot">pots</a>
   <a href ="${pageContext.request.contextPath}/plantsdemo/offers" class="offer">offers</a>
   <a href ="${pageContext.request.contextPath}/plantsdemo/customersupport" class = "customersupport">customersupport</a>
   <a href ="${pageContext.request.contextPath}/plantsdemo/plantconsultent" class = "consultent">plantconsultent</a>
</div>
<hr>
   <div class = "picture">
       <img alt = "slider1.jpg" src ="${pageContext.request.contextPath}/images/slider1.jpg" >
       <div class = "picture-text">
       the big billion plant<br>sale are running....
       </div>
 </div>
 <div class= "sentence">
     <h3>Plants make for the best house companions, suitable for all your moods and every aesthetic.green-vally brings you the widest variety of plants to choose from so you can buy plants online from the comfort of your home!</h3>
 </div>
</body>
</html>