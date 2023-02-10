<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/02/2023
  Time: 02:51 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<p><a href="/CustomerServlet">Back to Customer List</a></p>
<form method="post">
    <fieldset>
        <legend>Create Customer</legend>
        <table >
            <tr>
                <td>ID :</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>Email :</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>PassWord :</td>
                <td><input type="text" name="password"></td>
            </tr>
            <tr>
                <td>FullName :</td>
                <td><input type="text" name="fullname"></td>
            </tr>
            <tr>
                <td>PhoneNumber :</td>
                <td><input type="text" name="phonenumber"></td>
            </tr>
            <tr>
                <td>Address :</td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Create new Customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
