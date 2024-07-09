<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/07/2024
  Time: 3:55 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="resources/css/mainMenu.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">
        <!-- <img src="path/to/your/logo.png" alt="Logo" style="width: 40px;"> -->
        Online Store
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="bi bi-list"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <form class="form-inline my-2 my-lg-0 ml-auto">
            <button class="btn katalog-btn mr-2" type="button"><i class="bi bi-grid"></i> Katalog</button>
            <input class="form-control mr-sm-2 search-input" type="search" placeholder="Mahsulotlar va turkumlar izlash" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="bi bi-search"></i></button>
        </form>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link login-link" href="loginSignUp"><i class="bi bi-person"></i></a>
            </li>
            <li class="nav-item">
                <a class="nav-link cart-link" href="#"><i class="bi bi-bag"></i> Savat</a>
            </li>
        </ul>
    </div>
</nav>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
