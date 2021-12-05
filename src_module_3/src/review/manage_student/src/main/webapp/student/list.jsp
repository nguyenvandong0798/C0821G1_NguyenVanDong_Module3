<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2021
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Student</title>
    <style>
        .f1{
            width: 5%;
            float: left;
        }
        .f2{
            width: 15%;
            float: left;
        }
        .f3{
            clear: both;
        }
    </style>
</head>
<body>
<div >
<h2>List Student</h2>


<form action="/students?action=search" method="post" >
    <input type="text" name="search">
    <button type="submit">search</button>
</form>

<form class="f1" action="/students?action=sort" method="post" >
    <input type="hidden" name="sort">
    <button type="submit" >sort</button>
</form>

<a class="f2" href="/students?action=create"><button>Create Student</button></a>

<c:out value="${string}"></c:out>
<table border = "1px" class="f3">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Gender</td>
        <td>score</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td><c:out value="${student.id}"/></td>
            <td><c:out value="${student.name}"/></td>
            <td><c:out value="${student.gender}"/></td>
            <td><c:out value="${student.score}"/></td>
            <td><a href="/students?action=edit&id=${student.id}"
                   onclick="return confirm('Do you want to edit ${student.name} ?')">edit</a></td>
            <td><a href="/students?action=delete&id=${student.id}"
                   onclick="return confirm('Do you want to delete ${student.name} ?')">Delete</a></td>

        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
