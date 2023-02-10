<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/02/2023
  Time: 02:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<p><a href="/CustomerServlet?action=create">Create Customer</a></p>
<fieldset>
    <legend>List Customer</legend>
    <table border="1">
        <tr>
            <td>ID </td>

            <td>Email </td>

            <td>PassWord </td>

            <td>FullName </td>

            <td>PhoneNumber </td>

            <td>Address </td>
        </tr>

        <c:forEach items='${requestScope["customers"]}' var="customer">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.email}</td>
                <td>${customer.password}</td>
                <td>${customer.fullName}</td>
                <td>${customer.phoneNumber}</td>
                <td>${customer.address}</td>
                <td><a href="/CustomerServlet?action=update&id=${customer.id}">EDIT</a></td>
                <td><a href="/CustomerServlet?action=delete&id=${customer.id}">DELETE</a></td>
            </tr>
        </c:forEach>
    </table>
</fieldset>
</body>
</html>
