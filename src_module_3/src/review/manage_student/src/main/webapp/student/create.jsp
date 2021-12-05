<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="students">List All student</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New student</h2>
            </caption>
            <tr>
                <th>Student id:</th>
                <td>
                    <input type="text" name="id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Student Name:</th>
                <td>
                    <input type="text" name="name"  size="45"/>
                </td>
            </tr>
            <tr>
                <th>Student Gender:</th>
                <td>
                    <input type="text" name="gender"  size="45"/>
                </td>
            </tr>
            <tr>
                <th>Student Score:</th>
                <td>
                    <input type="text" name="score"  size="15"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
