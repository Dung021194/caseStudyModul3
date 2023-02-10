<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/02/2023
  Time: 05:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<p><a href="/CartServlet?action=create">Create Cart</a></p>
<fieldset>
    <legend>List Cart</legend>
    <table border="1">
        <tr>
            <td>ID</td>

            <td>CustomerId</td>

            <td>CartId</td>
        </tr>

        <c:forEach items='${requestScope["carts"]}' var="cart">
            <tr>
                <td>${cart.id}</td>
                <td>${cart.customerId}</td>
                <td>${cart.cartId}</td>
                <td><a href="/CartServlet?action=update&id=${cart.id}">EDIT</a></td>
                <td><a href="/CartServlet?action=delete&id=${cart.id}">DELETE</a></td>
            </tr>
        </c:forEach>
    </table>
</fieldset>
</body>
</html>
