<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plants.css">
    <meta charset="UTF-8">
    <title>Plants for Sale</title>
</head>
<body>
    <h1>These are the plants</h1>
    <div class="plants-gallery">

        <!-- Trident Maple Bonsai Tree -->
        <div class="plant-item">
          <img src="${pageContext.request.contextPath}/images/cat1.jpg" alt="Trident Maple Bonsai Tree">
          <p>Trident Maple Bonsai Tree</p>
          <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Trident Maple Bonsai Tree">
          <input type="hidden" name="plantImage" value="cat1.jpg">
          <button type="submit">Buy</button>
          </form>
          <button>Add to Cart</button>
        </div>
        

        <!-- Monstera Deliciosa -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/cat2.jpg" alt="Monstera Deliciosa">
            <p>Monstera Deliciosa</p>
             <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Monstera Deliciosa">
          <input type="hidden" name="plantImage" value="cat2.jpg">
          <button type="submit">Buy</button>
          </form>
            <button>Add to Cart</button>
        </div>

        <!-- Lucky Bamboo -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/cat3.jpg" alt="Lucky Bamboo">
            <p>Lucky Bamboo</p>
            <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Lucky Bamboo">
          <input type="hidden" name="plantImage" value="cat3.jpg">
          <button type="submit">Buy</button>
          </form>
            <button>Add to Cart</button>
        </div>

        <!-- Echeveria -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/cat4.jpg" alt="Echeveria">
            <p>Echeveria</p>
            <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Echeveria">
          <input type="hidden" name="plantImage" value="cat4.jpg">
          <button type="submit">Buy</button>
          </form>
            <button>Add to Cart</button>
        </div>

        <!-- Aloe Vera -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/product1.jpg" alt="Aloe Vera">
            <p>Aloe Vera</p>
            <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Aloe Vera">
          <input type="hidden" name="plantImage" value="product1.jpg">
          <button type="submit">Buy</button>
          </form>
            <button>Add to Cart</button>
        </div>

        <!-- Baby Jade Plant -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/product2.jpg" alt="Baby Jade Plant">
            <p>Baby Jade Plant</p>
            <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Baby Jade Plant">
          <input type="hidden" name="plantImage" value="product2.jpg">
          <button type="submit">Buy</button>
          </form>
            <button>Add to Cart</button>
        </div>

        <!-- Peace Lily -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/product3.jpg" alt="Peace Lily">
            <p>Peace Lily</p>
            <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Peace Lily">
          <input type="hidden" name="plantImage" value="product3.jpg">
          <button type="submit">Buy</button>
          </form>
            <button>Add to Cart</button>
        </div>

        <!-- Lavender -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/product4.jpg" alt="Lavender">
            <p>Lavender</p>
          <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="avender">
          <input type="hidden" name="plantImage" value="product4.jpg">
          <button type="submit">Buy</button>
          </form> 
          <button>Add to Cart</button>
        </div>

        <!-- Dieffenbachia -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/product5.jpg" alt="Dieffenbachia">
            <p>Dieffenbachia</p>
            <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Dieffenbachia">
          <input type="hidden" name="plantImage" value="product5.jpg">
          <button type="submit">Buy</button>
          </form> 
            <button>Add to Cart</button>
        </div>

        <!-- Parlour Palm -->
        <div class="plant-item">
            <img src="${pageContext.request.contextPath}/images/product6.jpg" alt="Parlour Palm">
            <p>Parlour Palm</p>
            <form action="checkout" method="get">
          <input type="hidden" name="plantName" value="Parlour Palm">
          <input type="hidden" name="plantImage" value="product6.jpg">
          <button type="submit">Buy</button>
          </form> 
            <button>Add to Cart</button>
        </div>

    </div>
</body>
</html>
