<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/11/2021
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/discount" method="post">
    <table>
      <tr>
        <td>Product Description</td>
        <td><input type="text" name="PD"></td>
      </tr>
      <tr>
        <td>List Price</td>
        <td><input type="text" name="LP"></td>
      </tr>
      <tr>
        <td>Discount Percent</td>
        <td><input type="text" name="DP"></td>
      </tr>
      <tr>
        <td></td>
        <td><button type="submit">Calculate Discount</button></td>
      </tr>
    </table>
  </form>
  </body>
</html>
