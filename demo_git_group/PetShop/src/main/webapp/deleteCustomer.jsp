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
    <legend>Delete Customer</legend>
    <table border="1">
      <tr>
        <td>ID :</td>
        <td><input readonly  name="id" value="${requestScope['customers'].id}"></td>
      </tr>
      <tr>
        <td>Email :</td>
        <td><input readonly name="email" value="${requestScope['customers'].email}"></td>
      </tr>
      <tr>
        <td>PassWord :</td>
        <td><input readonly name="password" value="${requestScope['customers'].password}"></td>
      </tr>
      <tr>
        <td>FullName :</td>
        <td><input readonly name="fullname" value="${requestScope['customers'].fullName}"></td>
      </tr>
      <tr>
        <td>PhoneNumber :</td>
        <td><input readonly name="phonenumber" value="${requestScope['customers'].phoneNumber}"></td>
      </tr>
      <tr>
        <td>Address :</td>
        <td><input readonly name="address" value="${requestScope['customers'].address}"></td>
      </tr>
      <tr>
        <td><input type="submit" value="Delete Customer"></td>
      </tr>
      <tr><a href="CustomerServlet">Back to Customer list</a></tr>
    </table>
  </fieldset>
</form>
</body>
</html>
