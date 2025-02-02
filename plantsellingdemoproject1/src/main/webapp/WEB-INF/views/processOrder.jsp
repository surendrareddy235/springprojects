<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirm Order</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/processOrder.css">
</head>
<body>
    <div class="order-confirmation-container">
        <h1>Order Confirmation</h1>

        <div class="plant-details">
            <%
                String plantName = request.getParameter("plantName");
                String plantImage = request.getParameter("plantImage");
                String plantCount = request.getParameter("plantCount");
                String username = request.getParameter("username");
                String usernumber = request.getParameter("usernumber");
                String useremail = request.getParameter("useremail");
                String useraddress = request.getParameter("useraddress");
            %>
            <h2>Plant: <%= plantName %> (Quantity: <%= plantCount %>)</h2>
            <img src="${pageContext.request.contextPath}/images/<%= plantImage %>" alt="<%= plantName %>" class="plant-image">
        </div>

        <div class="user-details">
            <h3>Customer Details</h3>
            <p><strong>Name:</strong> <%= username %></p>
            <p><strong>Phone Number:</strong> <%= usernumber %></p>
            <p><strong>Email:</strong> <%= useremail %></p>
            <p><strong>Address:</strong> <%= useraddress %></p>
        </div>

           <form action="finalizeOrder" method="post">
            <input type="hidden" name="plantName" value="<%= plantName %>">
            <input type="hidden" name="plantImage" value="<%= plantImage %>">
            <input type="hidden" name="plantCount" value="<%= plantCount %>">
            <input type="hidden" name="username" value="<%= username %>">
            <input type="hidden" name="usernumber" value="<%= usernumber %>">
            <input type="hidden" name="useremail" value="<%= useremail %>">
            <input type="hidden" name="useraddress" value="<%= useraddress %>">
            <button type="submit">Confirm Order</button>
        </form>
    </div>
</body>
</html>
