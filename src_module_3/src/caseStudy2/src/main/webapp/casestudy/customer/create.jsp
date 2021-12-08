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
        <a href="customer">List All Customer</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New student</h2>
            </caption>
            <tr>
                <th>Mã khách hàng:</th>
                <td>
                    <input type="text" name="makh" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Mã loại khách hàng:</th>
                <td>
                    <input type="text" name="maloaikh"  size="45"/>
                </td>
            </tr>
            <tr>
                <th>Họ tên:</th>
                <td>
                    <input type="text" name="hoten"  size="45"/>
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="ngaysinh"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Giới tính:</th>
                <td>
                    <input type="number" name="giotinh"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>CMND:</th>
                <td>
                    <input type="text" name="cmnd"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>số điện thoại:</th>
                <td>
                    <input type="text" name="sdt"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>email:</th>
                <td>
                    <input type="text" name="email"  size="15"/>
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="diachi"  size="15"/>
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
