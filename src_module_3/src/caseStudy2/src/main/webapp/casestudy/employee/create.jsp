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
        <a href="employee">List All Employee</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Employee</h2>
            </caption>
            <tr>
                <th>Mã nhân viên:</th>
                <td>
                    <input type="text" name="id" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Họ tên:</th>
                <td>
                    <input type="text" name="name"  size="45"/>
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="dayofbirth"  size="45"/>
                </td>
            </tr>
            <tr>
                <th>Số CMND:</th>
                <td>
                    <input type="text" name="codeemployee"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Lương:</th>
                <td>
                    <input type="number" name="salary"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="numberphone"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="address"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Mã vị trí:</th>
                <td>
                    <input type="text" name="codepoint"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Mã Trình độ:</th>
                <td>
                    <input type="text" name="codeskill"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Mã bộ phận:</th>
                <td>
                    <input type="text" name="codedepartment"  size="15"/>
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
