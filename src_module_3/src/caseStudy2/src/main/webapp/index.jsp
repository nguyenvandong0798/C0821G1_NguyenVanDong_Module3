<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/12/2021
  Time: 2:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="icon" href="https://image.flaticon.com/icons/png/512/458/458625.png" type="image/i-icon"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <style>
      .menu-top{
        height: 150px;
      }
      .row {
        height: 500px;
      }
      .col-3 {
        background: darkslategray;
      }
      .footer {
        background: lightblue;
        height: 100px;
        width: 100%;
        text-align: center;
        font-family: "Bauhaus 93";
        font-size: 30px;
      }
    </style>
  </head>
  <body>  <div class="menu-top">

    <div>
      <img style="width: 200px;height: 100% ;padding: 15px 10px 10px 10px ;margin-left:50px "
               src="https://www.hoteljob.vn/uploads/images/18-08-08-16/Resort-la-gi-01.jpeg">
      <a style="margin-left: 1000px ; font-size: 20px;font-family: VnArabia"> Nguyễn Văn Đông</a>

    </div>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Furama</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Employee</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="/web">
              Home
            </a>
            <a class="nav-link dropdown-toggle" href="/customer">
              Customer
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Service</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled">Contact</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>

  </nav> <div class="row">
    <div class="col-3">
    <%--
    --%>
    </div>
    <div class="row">
    </div>
  </div>
    <div class="footer" >footer
    </div>
  </div>
  </body>
</html>
