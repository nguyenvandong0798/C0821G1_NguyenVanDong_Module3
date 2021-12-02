
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<h1> Delete Product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend> Product information</legend>
        <table>
            <tr>
                <td> Name:</td>
                <td>${product.getName()}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${product.getPrice()}</td>
            </tr>
            <tr>
                <td>Description:</td>
                <td>${product.getDescription()}</td>
            </tr>
            <tr>
                <td>Nation:</td>
                <td>${product.getNation()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete Product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
