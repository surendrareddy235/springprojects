<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/checkout.css">
</head>
<body>
    <div class="checkout-container">
        <h1>Checkout Page</h1>

        <div class="plant-details">
            <%
                String plantName = request.getParameter("plantName");
                String plantImage = request.getParameter("plantImage");
            %>
            <h2>Plant: <%= plantName %></h2>
            <img src="${pageContext.request.contextPath}/images/<%= plantImage %>" alt="<%= plantName %>" class="plant-image">
        </div>

        <form action="processOrder" method="post">
            <div class="user-details">
                <label for="username">Name:</label>
                <input type="text" id="username" name="username" required>

                <label for="usernumber">Phone Number:</label>
                <input type="text" id="usernumber" name="usernumber" required>

                <label for="useremail">Email:</label>
                <input type="email" id="useremail" name="useremail" required>

                <label for="useraddress">Address:</label>
                <textarea id="useraddress" name="useraddress" rows="4" required></textarea>
            </div>

            <div class="plant-count">
                <label for="plantCount">Quantity:</label>
                <input type="number" id="plantCount" name="plantCount" value="1" min="1" required>
            </div>

            <!-- Hidden fields for plant name and image -->
            <input type="hidden" name="plantName" value="<%= plantName %>">
            <input type="hidden" name="plantImage" value="<%= plantImage %>">

            <div class="payment-details">
                <h3>Payment Information</h3>
                <p>Send payment to PhonePe: <strong>9492886188</strong></p>
            </div>

            <button type="submit">Confirm Purchase</button>
        </form>
    </div>
</body>
</html>
