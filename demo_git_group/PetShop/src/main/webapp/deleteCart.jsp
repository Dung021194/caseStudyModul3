<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/02/2023
  Time: 04:32 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Are YOU SURE ?</p>
<form method="post">
    <fieldset>
        <legend>Delete Cart</legend>
        <table border="1">
            <tr>
                <td>ID :</td>
                <td><input readonly name="id" value="${requestScope['carts'].id}"></td>
            </tr>
            <tr>
                <td>CustomerId :</td>
                <td><input readonly name="customerId" value="${requestScope['carts'].customerId}"></td>
            </tr>
            <tr>
                <td>CartId :</td>
                <td><input readonly name="cartId" value="${requestScope['carts'].cartId}"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete Cart"></td>
            </tr>
            <tr><a href="CartServlet">Back to Customer list</a></tr>
        </table>
    </fieldset>
</form>
</body>
</html>
