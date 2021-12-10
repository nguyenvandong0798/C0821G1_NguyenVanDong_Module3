<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>List Employee</h2>

<form action="/employee?action=search" method="post" >
    <input type="text" name="searchname">
    <input type="text" name="searchid">
    <button type="submit">search</button>
</form>

<form action="/employee?action=sort" method="post" >
    <input type="hidden" name="sort">
    <button type="submit">sort</button>
</form>

<a href="/employee?action=create"><button>Create Employee</button></a>

<table border = "1px" class="f3">
    <tr>
        <td>Mã nhân viên</td>
        <td>Họ tên</td>
        <td>Ngày sinh</td>
        <td>CMND</td>
        <td>Lương</td>
        <td>số điện thoại</td>
        <td>Email</td>
        <td>Địa chỉ</td>
        <td>Mã vị trí</td>
        <td>Mã trình độ</td>
        <td>Mã bộ phận</td>
    </tr>
    <c:forEach var="employees" items="${employees}">
        <tr>

            <td><c:out value="${employees.id}"/></td>
            <td><c:out value="${employees.name}"/></td>
            <td><c:out value="${employees.dateOfBirth}"/></td>
            <td><c:out value="${employees.codeEmployee}"/></td>
            <td><c:out value="${employees.salary}"/></td>
            <td><c:out value="${employees.numberPhone}"/></td>
            <td><c:out value="${employees.email}"/></td>
            <td><c:out value="${employees.address}"/></td>
            <td><c:out value="${employees.codePoint}"/></td>
            <td><c:out value="${employees.codeSkill}"/></td>
            <td><c:out value="${employees.codeDepartment}"/></td>
            <td><a href="/employee?action=edit&id=${employees.id}"
                   onclick="return confirm('Do you want to edit ${employees.name} ?')">edit</a></td>
            <td><a href="/employee?action=delete&id=${employees.id}"
                   onclick="return confirm('Do you want to delete ${employees.name} ?')">Delete</a></td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
