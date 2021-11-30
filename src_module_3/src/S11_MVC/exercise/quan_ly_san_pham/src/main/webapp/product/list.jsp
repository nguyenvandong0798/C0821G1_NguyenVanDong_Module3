<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/11/2021
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>List Products</h2>
<c:out value="${masege}"></c:out>
<table>
    <tr>
        <th> Id</th>
        <th> Name</th>
        <th> Price</th>
        <th> Description</th>
        <th> Nation</th>
    </tr>
        <c:forEach var="product" items="${products}"></c:forEach>
    <tr>
        <td><c:out value="${product.id}"></c:out></td>
        <td><c:out value="${product.name}"></c:out></td>
        <td><c:out value="${product.price}"></c:out></td>
        <td><c:out value="${product.description}"></c:out></td>
        <td><c:out value="${product.nation}"></c:out></td>
    </tr>
</table>
</body>
</html>
