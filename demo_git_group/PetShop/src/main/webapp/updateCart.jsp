<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/02/2023
  Time: 04:03 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Update Cart</legend>
        <table border="1">
            <tr>
                <td>ID :</td>
                <td><input readonly  name="id" value="${requestScope['carts'].id}"></td>
            </tr>
            <tr>
                <td>CustomerId :</td>
                <td><input type="text" name="customerId" value="${requestScope['carts'].customerId}"></td>
            </tr>
            <tr>
                <td>CartId :</td>
                <td><input type="text" name="cartId" value="${requestScope['carts'].cartId}"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Update Cart"></td>
                <td><a href="/CartServlet">Back Cart List</a> </td>

            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
