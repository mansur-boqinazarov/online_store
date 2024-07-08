<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 8/07/2024
  Time: 4:15 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.5.0/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../../resources/css/signup.css">
 </head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">
        Online Store
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="bi bi-list"></i></span>
    </button>
</nav>

<div class="signup-container">
    <h2>Sign Up</h2>
    <form>
        <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" name="fullName" class="form-control" id="fullName" placeholder="Enter full name" required>
        </div>
        <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Enter password" required>
        </div>
        <div class="form-group">
            <label for="phoneNumber">Phone Number</label>
            <input type="text" name="number" class="form-control" id="phoneNumber" placeholder="Enter phone number" required>
        </div>
        <button type="submit" class="btn btn-primary">Sign Up</button>
        <a href="" class="home">Back To Home</a>
    </form>
</div>

<div class="floating-objects">
    <span></span>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
