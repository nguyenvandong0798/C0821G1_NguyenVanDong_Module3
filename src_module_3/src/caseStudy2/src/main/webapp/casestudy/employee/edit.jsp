<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Management Application</title>
</head>
<body>
<center>
    <h1>Employee Management</h1>
    <h2>
        <a href="employee">List All Employee</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Employee
                </h2>
            </caption>
            <c:if test="${employee != null}">
                <input type="hidden" value="<c:out value='${employee.id}' />"/>
            </c:if>
            <tr>
                <th>Tên nhân viên :</th>
                <td>
                    <input type="text" name="name"
                           value="<c:out value='${employee.name}'/> " />
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="dateofbirth" size="45"
                           value="<c:out value='${employee.dateOfBirth}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>số CMND:</th>
                <td>
                    <input type="text" name="codeemployee" size="45"
                           value="<c:out value='${employee.codeEmployee}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Lương:</th>
                <td>
                    <input type="text" name="salary" size="45"
                           value="<c:out value='${employee.salary}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="numberphone" size="45"
                           value="<c:out value='${employee.numberPhone}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" size="45"
                           value="<c:out value='${employee.email}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="address" size="15"
                           value="<c:out value='${employee.address}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Mã vị trí:</th>
                <td>
                    <input type="text" name="codepoint" size="15"
                           value="<c:out value='${employee.codePoint}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Mã trình độ:</th>
                <td>
                    <input type="text" name="codeskill" size="15"
                           value="<c:out value='${employee.codeSkill}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Mã bộ phận:</th>
                <td>
                    <input type="text" name="codedepartment" size="15"
                           value="<c:out value='${employee.codeDepartment}' />"
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