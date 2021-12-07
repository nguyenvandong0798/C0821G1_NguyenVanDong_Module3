<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>List Customer</h2>
<table border = "1px" class="f3">
    <tr>
        <td>Mã khách hàng</td>
        <td>Mã loại khách</td>
        <td>Họ tên</td>
        <td>Ngày sinh</td>
        <td>Giới tính</td>
        <td>CMND</td>
        <td>Số điện thoại</td>
        <td>Email</td>
        <td>Địa chỉ</td>
    </tr>
    <c:forEach var="customers" items="${customers}">
        <tr>

            <td><c:out value="${customers.maKhachHang}"/></td>
            <td><c:out value="${customers.maLoaiKhach}"/></td>
            <td><c:out value="${customers.hoTen}"/></td>
            <td><c:out value="${customers.ngaySinh}"/></td>
            <td><c:out value="${customers.gioiTinh}"/></td>
            <td><c:out value="${customers.soCmnd}"/></td>
            <td><c:out value="${customers.soDienThoai}"/></td>
            <td><c:out value="${customers.email}"/></td>
            <td><c:out value="${customers.diaChi}"/></td>
            <td><a href="/customers?action=edit&id=${customers.maKhachHang}"
                   onclick="return confirm('Do you want to edit ${customers.hoTen} ?')">edit</a></td>
            <td><a href="/customers?action=delete&id=${customers.maKhachHang}"
                   onclick="return confirm('Do you want to delete ${customers.hoTen} ?')">Delete</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
