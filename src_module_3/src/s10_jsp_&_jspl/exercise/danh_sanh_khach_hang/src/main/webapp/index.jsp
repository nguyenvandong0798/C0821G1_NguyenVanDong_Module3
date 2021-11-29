<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2> Danh sách khách hàng</h2>
  <table>
    <tr>
      <th>Tên</th>
      <th>Ngày Sinh</th>
      <th>Địa Chỉ</th>
      <th>Ảnh</th>
    </tr>
    <c:forEach var = "clientojb" items="${clientlistsevlet}">
      <tr>
        <td><c:out  value="${clientojb.name}"/> </td>
        <td><c:out  value="${clientojb.date_of_birth}"/> </td>
        <td><c:out  value="${clientojb.address}"/> </td>
        <td><img width="30px" height="30px" src="<c:out value="${clientojb.image}"/>"></td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
