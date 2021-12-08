<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
</head>
<body>
<center>
    <h1>Customer Management</h1>
    <h2>
        <a href="customer">List All Customer</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Customer
                </h2>
            </caption>
            <c:if test="${customer != null}">
                <input type="hidden" value="<c:out value='${customer.maKhachHang}' />"/>
            </c:if>
            <tr>
                <th>Mã loại khách hàng :</th>
                <td>
                    <input type="text" name="maLoaiKhach"
                           value="<c:out value='${customer.maLoaiKhach}'/> " />
                </td>
            </tr>
            <tr>
                <th>Họ tên:</th>
                <td>
                    <input type="text" name="hoten" size="45"
                           value="<c:out value='${customer.hoTen}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="ngaysinh" size="45"
                           value="<c:out value='${customer.ngaySinh}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Giới tính:</th>
                <td><select type="text" name="gioitinh">
                    <option>1</option>
                    <option>0</option>
                </select>
            </tr>
            <tr>
                <th>Số CMND:</th>
                <td>
                    <input type="text" name="cmnd" size="45"
                           value="<c:out value='${customer.soCmnd}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="sdt" size="45"
                           value="<c:out value='${customer.soDienThoai}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" size="45"
                           value="<c:out value='${customer.email}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="diachi" size="15"
                           value="<c:out value='${customer.diaChi}' />"
                    />
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