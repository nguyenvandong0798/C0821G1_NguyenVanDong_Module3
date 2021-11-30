<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/11/2021
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>new create product</h2>
<form method="post">
    <table>
        <tr>
            <td>Id:</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td> Name</td>
            <td><input type="text" name="namee"></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td>  <input type="text" name="price"></td>
        </tr>
        <tr>
            <td> Description:</td>
            <td><input type="text" name="ds"></td>
        </tr>
        <tr>
            <td>Nation:</td>
            <td><input type="text" name="nation"></td>
        </tr>
        <tr>
            <td></td>
            <td><button type="submit">submit</button></td>
        </tr>
    </table>
</form>
</body>
</html>
