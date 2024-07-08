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
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://example.com/online-store-background.jpg') no-repeat center center fixed; /* Change URL to your preferred image */
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
            overflow: hidden;
            animation: gradientBG 15s ease infinite;
        }
        .signup-container {
            background-color: rgba(52, 58, 64, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            animation: fadeIn 1s ease-in-out;
            position: relative;
            z-index: 1;
        }
        .signup-container h2 {
            margin-bottom: 30px;
            font-weight: bold;
        }
        .form-group input, .form-group select {
            background-color: #495057;
            border: none;
            color: #fff;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .form-group input:focus, .form-group select:focus {
            background-color: #6c757d;
            box-shadow: none;
            transform: scale(1.05);
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        .form-group .form-text {
            color: #adb5bd;
        }
        .navbar {
            background-color: #343a40;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        .navbar-brand {
            color: #fff;
            font-weight: bold;
            display: flex;
            align-items: center;
        }
        .navbar-brand img {
            margin-right: 10px;
        }
        .navbar-toggler {
            border: none;
        }
        .navbar-toggler-icon {
            color: #fff;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes gradientBG {
            0% {background: linear-gradient(45deg, #007bff, #6c757d);}
            50% {background: linear-gradient(45deg, #6c757d, #007bff);}
            100% {background: linear-gradient(45deg, #007bff, #6c757d);}
        }
        .floating-objects {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            overflow: hidden;
            z-index: 0;
        }
        .floating-objects span {
            position: absolute;
            display: block;
            width: 20px;
            height: 20px;
            background: rgba(255, 255, 255, 0.2);
            animation: float 6s ease-in-out infinite;
        }
        .floating-objects span:nth-child(1) {
            left: 10%;
            animation-delay: 0s;
        }
        .floating-objects span:nth-child(2) {
            left: 30%;
            animation-delay: 2s;
        }
        .floating-objects span:nth-child(3) {
            left: 50%;
            animation-delay: 4s;
        }
        .floating-objects span:nth-child(4) {
            left: 70%;
            animation-delay: 6s;
        }
        .floating-objects span:nth-child(5) {
            left: 90%;
            animation-delay: 8s;
        }
        @keyframes float {
            0% {transform: translateY(0);}
            50% {transform: translateY(-20px);}
            100% {transform: translateY(0);}
        }
    </style>
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
