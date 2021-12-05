<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>student Management Application</title>
</head>
<body>
<center>
    <h1>student Management</h1>
    <h2>
        <a href="students?action=students">List All student</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Student
                </h2>
            </caption>
            <c:if test="${student != null}">
                <input type="hidden" value="<c:out value='${student.id}' />"/>
            </c:if>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${student.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Student gender:</th>
                <td><select type="text" name="gender">
                    <option>nam</option>
                    <option>nu</option>
                </select>
            </tr>
            <tr>
                <th>Score:</th>
                <td>
                    <input type="text" name="score" size="15"
                           value="<c:out value='${student.score}' />"
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