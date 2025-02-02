<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Cart.css">
</head>
<body>
    <h1>Your Shopping Cart</h1>
    <div class="cart-items">
        <c:forEach var="item" items="${sessionScope.cart}">
            <c:set var="productName" value="${fn:split(item, '(')[0]}" />
            <c:set var="imageName" value="${fn:split(item, '(')[1]}" />
            <c:set var="imageName" value="${fn:split(imageName, ')')[0]}" />
            <div class="cart-item">
                <img src="<c:url value='/images/${imageName}' />" alt="${productName}">
                <div>
                    <p><strong>${productName}</strong></p>
                    <a href="checkout?plantName=${productName}&plantImage=${imageName}">BUY</a>
                    <a href="delete?productName=${productName}">DELETE</a>
                </div>
            </div>
        </c:forEach>
    </div>
    <a href="plants">Continue Shopping</a>
</body>
</html>
