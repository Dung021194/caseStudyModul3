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
        <legend>Update Customer</legend>
        <table border="1">
            <tr>
                <td>ID :</td>
                <td><input readonly  name="id" value="${requestScope['customers'].id}"></td>
            </tr>
            <tr>
                <td>Email :</td>
                <td><input type="text" name="email" value="${requestScope['customers'].email}"></td>
            </tr>
            <tr>
                <td>PassWord :</td>
                <td><input type="text" name="password" value="${requestScope['customers'].password}"></td>
            </tr>
            <tr>
                <td>FullName :</td>
                <td><input type="text" name="fullname"value="${requestScope['customers'].fullName}"></td>
            </tr>
            <tr>
                <td>PhoneNumber :</td>
                <td><input type="text" name="phonenumber" value="${requestScope['customers'].phoneNumber}"></td>
            </tr>
            <tr>
                <td>Address :</td>
                <td><input type="text" name="address" value="${requestScope['customers'].address}"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Update Customer"></td>
                <td><a href="/CustomerServlet">Back Customer List</a> </td>

            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
