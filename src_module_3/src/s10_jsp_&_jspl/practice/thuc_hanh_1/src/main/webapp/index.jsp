<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/11/2021
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="converter.jsp" method="post">
    <label>Rate: </label><br>
    <input type="text" name="rate" placeholder="RATE" value="22000"><br>
    <label>USD: </label><BR>
    <input type="text" name="usd" placeholder="USD" value="0"><br>
    <input type="submit" id="submit" value="convert" >
  </form>
  </body>
</html>
